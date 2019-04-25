library(httr)
library(data.table)

ghURL <- "https://api.github.com"

ghGET <- function(x, ...)
{
    GET(paste0(ghURL, x),
        authenticate(Sys.getenv("GITHUB_PAT"), ""),
        ...)
}

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


