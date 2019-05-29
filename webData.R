source('API.R')

##################################################################
## Recupera consulta previa
repos <- readRDS("csv/repos.Rds")
repoNames <- sapply(repos, function(x) x$name)
idxTW <- grepl("tw", repoNames)
twRepos <- repos[idxTW]
twNames <- sapply(twRepos, function(x) x$name)

## Tienen wiki?
hasWiki <- sapply(twRepos, function(x) x$has_wiki)
wikiURL <- sapply(twRepos, function(x) paste0(x$html_url, "/wiki"))

## Tiene logo?
contents <- lapply(twRepos, function(x)
{
    files <- ghGET(paste0("/repos/aigora/",
                 x$name,
                 "/contents"))
    parsed <- content(files, "parsed")
    sapply(parsed, function(x) x$name)
})

logo <- lapply(contents, function(x)
{
    logo <- grep("logo.png", x,
                 ignore.case = TRUE,
                 value = TRUE)
    if (length(logo) == 0)
        ""
    else
        logo[1]
})
logo <- do.call(c, logo)   

logoURL <- paste0("https://raw.githubusercontent.com/aigora/",
                  twNames,
                  "/master/",
                  logo)
logoURL[logo == ""]  <- ""

## Junto información
webData <- data.frame(
    title = twNames, 
    layout = "default",
    modal_id = seq_along(twNames),
    wiki_link = wikiURL,
    thumbnail = logoURL,
    alt = twNames)


write.csv2(webData,
           file = "csv/webData.csv",
           row.names = FALSE)
