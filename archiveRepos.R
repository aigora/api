source("API.R")

teamsByRepo <- fread("csv/teamsByRepo.csv")
twRepos <- teamsByRepo[grep("tw", repo_name),
                       repo_name]


##################################################################
## ATENCION: el próximo bucle archiva *todos* los repositorios
##################################################################

lapply(twRepos, function(repo)
{
    repoURL <- paste0("/repos/aigora/", repo)
    ghPatch(repoURL, list(archived = "true"))
})


