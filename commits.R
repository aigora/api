source('API.R')

##################################################################
## COMMITS
##################################################################

teamsByRepo <- fread("csv/teamsByRepo.csv")

repoNames <- teamsByRepo$repo_name

twRepos <- repoNames[grepl("tw", repoNames)]

commits <- lapply(twRepos, function(x)
{
    vals <- ghGET(paste0("/repos/aigora/",
                         x,
                         "/commits"))
    parsed <- content(vals, "parsed")
    author <- lapply(parsed, function(x)
        x$commit$author[c("name", "date")])
    res <- do.call(rbind, author)
    write.csv(res,
               file = paste0("csv/commits_", x, ".csv"),
               row.names = FALSE)
    res
})

names(commits) <- twRepos

resumen <-  lapply(seq_along(commits), function(i)
{
    data.frame(repo = twRepos[i],
               N = nrow(commits[[i]]),
               last = as.Date(commits[[i]][1, 2][[1]]))
})
resumen <- do.call(rbind, resumen)
rownames(resumen) <- NULL

write.csv(resumen,
          file = 'csv/resumen_commits.csv',
          row.names = FALSE)

lapply(commits, function(x)     write.csv(res,
               file = paste0("csv/commits_", x, ".csv"),
               row.names = FALSE)
)
