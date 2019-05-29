source("API.R")

teamsByRepo <- fread("csv/teamsByRepo.csv")
repoNames <- teamsByRepo$repo_name
idx <- grep("tw", repoNames)
twRepos <- repoNames[idx]

mainURL <- "https://github.com/aigora/"
reposURL <- paste0(mainURL, twRepos, ".git")

old <- setwd(tempdir())
lapply(reposURL, function(x)
    system2("git", c("clone", x)))
setwd(old)

