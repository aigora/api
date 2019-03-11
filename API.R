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

aigora <- ghGET("/orgs/aigora")

##################################################################
## TEAMS
##################################################################

teams <- getPages("/orgs/aigora/teams", simplify = TRUE)

nTeams <- nrow(teams)

nMembers <- sapply(seq_len(nTeams),
                   function(i)
                       {
                           res <- ghGET(paste0("/teams/",
                                               teams[i, "id"]))
                           res <- content(res, "parsed")
                           res$members_count
                       }
                   )
                   
teams$nMembers <- nMembers

members <- sapply(seq_len(nTeams),
                   function(i)
                   {
                       res <- getPages(paste0("/teams/",
                                              teams[i, "id"],
                                              "/members"))
                       nms <- sapply(res, function(x) x$login)
                       paste(nms, collapse = ", ")
                   }
                  )
teams$members <- members

saveRDS(teams, "teams.Rds")

write.csv2(teams[, c("name", "id", "slug",
                     "nMembers", "members")],
           file = "teams.csv",
           row.names = FALSE)

##################################################################
## REPOSITORIOS
##################################################################

repos <- getPages("/orgs/aigora/repos")
nmsRep <- sapply(repos, function(x) x$name)

saveRDS(repos, "repos.Rds")

nRepos <- length(repos)

teamsByRepo <- lapply(seq_len(nRepos),
                      function(i)
                      {
                          repo <- repos[[i]]
                          team <- ghGET(paste0("/repos/aigora/",
                                               repo$name,
                                               "/teams"))
                          team <- content(team, "parsed")
                          if (length(team) > 0)
                          {
                              res <- rbindlist(team)
                              res[, .(repo_name = repo$name,
                                      name, slug, id)]
                          }
                          else
                              data.frame(
                                  repo_name = nmsRep[i],
                                  name = NA,
                                  slug = NA,
                                  id = NA)
                      })   
teamsByRepo <- rbindlist(teamsByRepo)
## Añade información de integrantes de cada equipo
teamsByRepo <- merge(teamsByRepo,
                      teams[, .(name, id,
                                nMembers, members)])
write.csv2(teamsByRepo,
           file = "teamsByRepo.csv",
           row.names = FALSE)

## Un fichero por cada grupo de matriculación
repoNames <- teamsByRepo$repo_name
groups <- c("E100", "E105", "Q103", "A104", "A109")
lapply(groups, function(group)
{
    idx <- grep(paste0("tw", group), repoNames)
    write.csv2(teamsByRepo[idx, ],
           file = paste0("tw", group, ".csv"),
           row.names = FALSE)
})

