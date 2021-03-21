source('API.R')

##################################################################
## REPOSITORIOS
##################################################################

## Recupera consulta previa
teams <- fread('csv/teams.csv')
nTeams <- nrow(teams)

reposByTeams <- fread("csv/reposByTeams.csv")

## Recupera datos de un grupo de matriculación. P.ej IE
twIE <- fread("csv/twIE.csv")

#######################################################################
## A partir de aquí, ejecutar para realizar una nueva consulta a GitHub
##################################################################

## Obtenemos información de *todos* los repositorios
repos <- getPages("/orgs/aigora/repos")
nmsRep <- sapply(repos, function(x) x$name)
saveRDS(repos, file = "csv/repos.Rds")


## Ahora recorremos los equipos del curso actual y descargamos información de ese repositorio
reposByTeams <- lapply(seq_len(nTeams),
                       function(i)
                       {
                           team <- teams[i,]
                           cat(teams[i,]$name, "\n")

                           repo <- ghGET(paste0("/orgs/aigora/teams/",
                                                team$slug, "/repos"))
                           repo <- content(repo, "parsed")
                           if (length(repo) > 0)
                           {
                               repo <- repo[[1]]
                               data.frame(
                                   name = team$name,
                                   slug = team$slug,
                                   id = team$id,
                                   nMembers = team$nMembers,
                                   members = team$members,
                                   repo_name = repo$name,
                                   url = repo$html_url)

                           }
                           else
                           {
                                   data.frame(
                                       name = team$name,
                                       slug = team$slug,
                                       id = team$id,
                                       nMembers = team$nMembers,
                                       members = team$members,
                                       repo_name = NA,
                                       url = NA)
                           }
                       })


reposByTeams <- rbindlist(reposByTeams)

write.csv2(reposByTeams,
           file = "csv/reposByTeams.csv",
           row.names = FALSE)

## Un fichero por cada grado
repoNames <- reposByTeams$repo_name
groups <- c("IE", "IA", "IQ")
lapply(groups, function(group)
{
    idx <- grep(paste0("tw", group), repoNames)
    write.csv2(reposByTeams[idx, ],
           file = paste0("csv/tw", group, ".csv"),
           row.names = FALSE)
})
##################################################################
## Obtiene README de cada repositorio
##################################################################
idxTW <- grep("tw", repoNames)
twRepos <- reposByTeams[idxTW,]

## Descarga README de cada repositorio y lo graba en carpeta MD
lapply(twRepos$repo_name, function(x)
{
    cat(x, "\n")
    readmeURL <- paste0("https://raw.githubusercontent.com/aigora/",
                        x,
                        "/master/README.md")
    try(download.file(readmeURL, paste0("md/README_", x, ".md")))
})

## Lee los ficheros descargados y genera un fichero MD global por grupo de matriculación

lapply(groups, function(group)
{
    idx <- grep(group, twRepos$repo_name)
    README <- lapply(idx, function(i)
    {
        repo <- twRepos$repo_name[i]
        fich <- paste0("md/README_", repo, ".md")
        content <- NULL
        content <- try(readLines(fich))
        if (!is.null(content))
            content[1] <- paste(content[1], "::", repo)
        content <- paste(content, collapse = "\n")
    })
    README <- paste(README, collapse = "\n\\newpage\n\n")
    READMEfich <- paste0("md/README_", group, ".md")
    writeLines(README, READMEfich)
})

