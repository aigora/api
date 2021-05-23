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
twCommits <- lapply(twRepos, function(repo)
{
    cat(repo, "\n")
    parsed <- getPages(paste0("/repos/aigora/",
                         repo,
                         "/commits"))
    
    author <- lapply(parsed, function(x)
        x$commit$author[c("name", "date")])
    
    author <- rbindlist(author)

    sha <- lapply(parsed, function(x) x$sha)

    sha <- do.call(c, sha)

    commits <-  lapply(sha, function(sha)
        getPages(paste0("/repos/aigora/",
                         repo,
                        "/commits/",
                        sha)))
    stats <- lapply(commits, function(x)
        x$stats)
    stats <- rbindlist(stats)

    res <- cbind(author, stats, sha)
    
    write.csv(res,
               file = paste0("csv/commits_", repo, ".csv"),
               row.names = FALSE)

})
names(twCommits) <- twRepos


## exCommits <- lapply(exRepos, function(x)
## {
##     cat(x, "\n")
##     parsed <- getPages(paste0("/repos/aigora/",
##                          x,
##                          "/commits"))
    
##     author <- lapply(parsed, function(x)
##         x$commit$author[c("name", "date")])
##     res <- do.call(rbind, author)
##     write.csv(res,
##                file = paste0("csv/commits_", x, ".csv"),
##                row.names = FALSE)
##     res
## })
## names(exCommits) <- exRepos

##------------------------------------------------------


resumen <-  lapply(seq_along(twCommits), function(i)
{
    repo <- twRepos[i]
    info <- twCommits[[i]]
    N <- nrow(info)
    xxx <- data.frame(repo = repo,
               grupo = substr(repo, 3, 6),
               N = N - 1, ## El primer commit es el bot de GH Classroom
               total = sum(info$total[-N]), ## No tengo en cuenta el primer commit para las estadísticas
               add = sum(info$add[-N]),
               del = sum(info$del[-N]),
               last = as.Date(info$date[1])## Commit más reciente
               )
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

