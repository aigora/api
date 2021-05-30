source('API.R')

##################################################################
## COMMITS
##################################################################

reposByTeams <- fread("csv/reposByTeams.csv")

repoNames <- reposByTeams$repo_name

twRepos <- repoNames[grepl("tw", repoNames)]

twIE <- twRepos[grepl("twIE", twRepos)]
twIQ <- twRepos[grepl("twIQ", twRepos)]
twIA <- twRepos[grepl("twIA", twRepos)]

## Recupera datos de ficheros locales
commitsIE <- lapply(twIE, function(x)
{
    fread(paste0("csv/commits_", x, ".csv"))
})
names(commitsIE) <- twIE

commitsIQ <- lapply(twIQ, function(x)
{
    fread(paste0("csv/commits_", x, ".csv"))
})
names(commitsIQ) <- twIQ

commitsIA <- lapply(twIA, function(x)
{
    fread(paste0("csv/commits_", x, ".csv"))
})
names(commitsIA) <- twIA



##################################################################
## 
## Ejecutar únicamente para solicitar datos a GitHub
##
##################################################################
commits <- function(repo)
{
    cat(repo, "\n")
    ## Información básica de cada uno de los commits del repositorio
    parsed <- getPages(paste0("/repos/aigora/",
                              repo,
                              "/commits"))
    ## Me quedo únicamente con la fecha y el nombre del autor.
    author <- lapply(parsed, function(x)
        x$commit$author[c("name", "date")])
    
    author <- rbindlist(author)

    ## Con el SHA accederé a información detallada del commit
    sha <- lapply(parsed, function(x) x$sha)
    sha <- do.call(c, sha)
    ## Recorro cada uno de los commits identificados por el SHA para
    ## obtener estadísticas
    commits <-  lapply(sha, function(sha)
        getPages(paste0("/repos/aigora/",
                        repo,
                        "/commits/",
                        sha)))
    stats <- lapply(commits, function(x)
        x$stats)
    stats <- rbindlist(stats)

    ## Junto todo...
    res <- cbind(author, stats, sha)
    ## Y escribo fichero
    write.csv(res,
              file = paste0("csv/commits_", repo, ".csv"),
              row.names = FALSE)
    res
}


commitsIE <- lapply(twIE, commits)
names(commitsIE) <- twIE

commitsIQ <- lapply(twIQ, commits)
names(commitsIQ) <- twIQ

commitsIA <- lapply(twIA, commits)
names(commitsIA) <- twIA


##------------------------------------------------------
## Resúmenes

resumenIE <-  lapply(seq_along(commitsIE), function(i)
{
    repo <- twIE[i]
    datos <- commitsIE[[i]]
    resumen <- datos[name != "github-classroom[bot]",
                     .(
                         date = max(date),
                         add = sum(additions),
                         del = sum(deletions),
                         tot = sum(total)),
                     by = name]
    write.csv(resumen,
              file = paste0('csv/resumen_',
                            repo,
                            '.csv'),
              row.names = FALSE)
    resumen
})
names(resumenIE) <- names(commitsIE)

resumenIA <-  lapply(seq_along(commitsIA), function(i)
{
    repo <- twIA[i]
    datos <- commitsIA[[i]]
    resumen <- datos[name != "github-classroom[bot]",
                     .(
                         date = max(date),
                         add = sum(additions),
                         del = sum(deletions),
                         tot = sum(total)),
                     by = name]
    write.csv(resumen,
              file = paste0('csv/resumen_',
                            repo,
                            '.csv'),
              row.names = FALSE)
    resumen
})
names(resumenIA) <- names(commitsIA)

resumenIQ <-  lapply(seq_along(commitsIQ), function(i)
{
    repo <- twIQ[i]
    datos <- commitsIQ[[i]]
    resumen <- datos[name != "github-classroom[bot]",
                     .(
                         date = max(date),
                         add = sum(additions),
                         del = sum(deletions),
                         tot = sum(total)),
                     by = name]
    write.csv(resumen,
              file = paste0('csv/resumen_',
                            repo,
                            '.csv'),
              row.names = FALSE)
    resumen
})
names(resumenIQ) <- names(commitsIQ)
