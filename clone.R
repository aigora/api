source("API.R")

teams <- fread('csv/teams.csv')
repoNames <- teams$repo

grupo <- "E105"
curso <- 2122
cadena <- paste0("tw", grupo,  "_", curso)

idx <- grep(cadena, repoNames)
twRepos <- repoNames[idx]


mainURL <- "https://github.com/aigora/"
reposURL <- paste0(mainURL, twRepos, ".git")

old <- setwd(tempdir())
lapply(reposURL, function(x)
    system2("git", c("clone", x)))
setwd(old)

