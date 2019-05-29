source('API.R')

##################################################################
## COMMITS
##################################################################

teamsByRepo <- fread("csv/teamsByRepo.csv")

repoNames <- teamsByRepo$repo_name

twRepos <- repoNames[grepl("tw", repoNames)]

## Recupera datos de ficheros locales
commits <- lapply(twRepos, function(x)
{
    fread(paste0("csv/commits_", x, ".csv"))
})
names(commits) <- twRepos


## -------------------------------------------------
## Ejecutar únicamente para solicitar datos a GitHub
commits <- lapply(twRepos, function(x)
{
    cat(x, "\n")
    parsed <- getPages(paste0("/repos/aigora/",
                         x,
                         "/commits"))
    
    author <- lapply(parsed, function(x)
        x$commit$author[c("name", "date")])
    res <- do.call(rbind, author)
    write.csv(res,
               file = paste0("csv/commits_", x, ".csv"),
               row.names = FALSE)
    res
})
names(commits) <- twRepos
##------------------------------------------------------


resumen <-  lapply(seq_along(commits), function(i)
{
    data.frame(repo = twRepos[i],
               grupo = substr(twRepos[i], 3, 6),
               N = nrow(commits[[i]]),
               last = as.Date(commits[[i]][1, 2][[1]]))
})
resumen <- do.call(rbind, resumen)
rownames(resumen) <- NULL

write.csv(resumen,
          file = 'csv/resumen_commits.csv',
          row.names = FALSE)

lapply(seq_along(commits), function(i)
    write.csv(commits[[i]],
              file = paste0("csv/commits_", twRepos[i], ".csv"),
              row.names = FALSE)
)

