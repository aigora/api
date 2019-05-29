source("API.R")

twE105 <- fread("csv/twE105.csv")
reposE105 <- twE105$repo_name

mainURL <- "https://github.com/aigora/"

reposURL <- paste0(mainURL, reposE105, ".git")

old <- setwd(tempdir())
lapply(reposURL,
       function(x)
           system2("git", c("clone", x))
       )
setwd(old)
