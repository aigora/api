source("API.R")

teamsByRepo <- fread("csv/teamsByRepo.csv")
twRepos <- teamsByRepo[grep("tw", repo_name),
                       repo_name]

## Función wrapper de PATCH con autenticación
ghPatch <- function(x, body)
{
    PATCH(paste0(ghURL, x),
        authenticate(Sys.getenv("GITHUB_PAT"), ""),
        body = body,
        encode = "json")
}

##################################################################
## ATENCION: el próximo bucle archiva *todos* los repositorios
##################################################################

lapply(twRepos, function(repo)
{
    repoURL <- paste0("/repos/aigora/", repo)
    ghPatch(repoURL, list(archived = "true"))
})


