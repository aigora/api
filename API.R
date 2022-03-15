library(httr)
library(data.table)
## Dirección principal de la API
ghURL <- "https://api.github.com"

## Función wrapper de GET con autenticación
ghGET <- function(x, ...)
{
    GET(paste0(ghURL, x),
        authenticate(Sys.getenv("GITHUB_PAT"), ""),
        ...)
}
## La API proporciona información paginada. Con esta función compruebo
## si hay más de una página, y obtengo todas juntas en un único
## objeto.
getPages <- function(x, simplify = FALSE)
{
    i <- 1
    more <- TRUE
    result <- list()
    while(isTRUE(more))
    {
        resPage <- ghGET(x, query = list(page = i))
        link <- headers(resPage)$link
        resPage <- content(resPage, "parsed")
        result <- c(result, resPage)
        more <- grepl("next", link)
        i <- i + 1
    }
    if (simplify)
        result <- rbindlist(result)
    else
        result
}
## Ejemplo:
## aigora <- ghGET("/orgs/aigora")

## Función wrapper de PATCH con autenticación
ghPatch <- function(x, body)
{
    PATCH(paste0(ghURL, x),
        authenticate(Sys.getenv("GITHUB_PAT"), ""),
        body = body,
        encode = "json")
}

## Función wrapper de POST con autenticación
ghPOST <- function(x, ...)
{
    POST(paste0(ghURL, x),
        authenticate(Sys.getenv("GITHUB_PAT"), ""),
        ...)
}


ghIssue <- function(repo, title, body, milestone = NULL)
{
    ghPOST(paste0("/repos/aigora/",
                  repo,
                  "/issues"),
            body = list(
                title = title,
                body = body,
                milestone = milestone),
            encode = "json")
}

ghMilestone <- function(repo, title, description, date)
{
    ghPOST(paste0("/repos/aigora/",
                  repo,
                  "/milestones"),
            body = list(
                title = title,
                description = description,
                due_on = date),
            encode = "json")
}
