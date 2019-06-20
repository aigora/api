source('API.R')

##################################################################
## COMMITS
##################################################################

teamsByRepo <- fread("csv/teamsByRepo.csv")

repoNames <- teamsByRepo$repo_name

exRepos <- c("fundamentos_c",
             "sentencias_control",
             "tipos_avanzados_datos",
             "punteros",
             "funciones",
             "ficheros")

twRepos <- repoNames[grepl("tw", repoNames)]

## Recupera datos de ficheros locales
twCommits <- lapply(twRepos, function(x)
{
    fread(paste0("csv/commits_", x, ".csv"))
})
names(twCommits) <- twRepos


## -------------------------------------------------
## Ejecutar únicamente para solicitar datos a GitHub
twCommits <- lapply(twRepos, function(x)
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
names(twCommits) <- twRepos


exCommits <- lapply(exRepos, function(x)
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
names(exCommits) <- exRepos

##------------------------------------------------------


resumen <-  lapply(seq_along(twCommits), function(i)
{
    data.frame(repo = twRepos[i],
               grupo = substr(twRepos[i], 3, 6),
               N = nrow(twCommits[[i]]),
               last = as.Date(twCommits[[i]][1, 2][[1]]))
})
resumen <- do.call(rbind, resumen)
rownames(resumen) <- NULL

write.csv(resumen,
          file = 'csv/resumen_commits.csv',
          row.names = FALSE)

lapply(seq_along(twCommits), function(i)
    write.csv(twCommits[[i]],
              file = paste0("csv/commits_", twRepos[i], ".csv"),
              row.names = FALSE)
)

