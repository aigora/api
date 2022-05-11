source('API.R')

## Recupera consulta previa
teams <- fread('csv/teams.csv')

groups <- unique(teams$group)

curso <- substr(teams$repo[1], 8, 11)

##################################################################
## Obtiene README de cada repositorio
##################################################################

repos <- teams$repo

## Descarga README de cada repositorio y lo graba en carpeta MD
lapply(repos, function(x)
{
    cat(x, "\n")
    readmeURL <- paste0("https://raw.githubusercontent.com/aigora/",
                        x,
                        "/master/README.md")
    try(download.file(readmeURL, paste0("md/README_", x, ".md")))
})

## Lee los ficheros descargados y genera un fichero MD global por grupo de matriculación

lapply(groups, function(x)
{
    repoGroup <- teams[group == x, repo]
    README <- lapply(repoGroup, function(repo)
    {
        fich <- paste0("md/README_", repo, ".md")
        content <- NULL
        content <- try(readLines(fich))
        if (!is.null(content))
            content[1] <- paste(content[1], "::", repo)
        content <- paste(content, collapse = "\n")
    })
    README <- paste(README, collapse = "\n\\newpage\n\n")
    READMEfich <- paste0("md/README_", x, "_", curso, ".md")
    writeLines(README, READMEfich)
})

