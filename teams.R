source('API.R')

cursoActual <- "2122"

##################################################################
## TEAMS
##################################################################
## Recupera resultados de una consulta previa
teams <- fread('csv/teams.csv')


## Sólo ejecutar para enviar una nueva consulta a GitHub
teams <- getPages("/orgs/aigora/teams", simplify = TRUE)

repos <- lapply(seq_len(nrow(teams)),
                function(i)
                {
                    team <- teams[i,]
                    cat(teams[i,]$name, "\n")
                    
                    repo <- ghGET(paste0("/orgs/aigora/teams/",
                                         team$slug, "/repos"))
                    repo <- content(repo, "parsed")
                    if(length(repo) != 0)
                        repo[[1]]$name
                    else
                        NA
                })
repos <- do.call(c, repos)
teams[, repo:=repos]

## Filtro a curso actual
idx <- grep(cursoActual, repos)
teams <- teams[idx,]
nTeams <- nrow(teams)

## Grupos de matriculación
teams[, group := substr(repo, 3, 6)]
groups <- unique(teams$group)

## Número de miembros
nMembers <- sapply(seq_len(nTeams),
                   function(i)
                   {
                       cat(teams[i,]$name, "\n")
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
                       cat(teams[i,]$name, "\n")
                       res <- getPages(paste0("/teams/",
                                              teams[i, "id"],
                                              "/members"))
                       nms <- sapply(res, function(x) x$login)
                       paste(nms, collapse = ", ")
                   }
                  )
teams$members <- members



write.csv2(teams[, c("name", "id", "slug",
                     "nMembers", "members",
                     "group",
                     "repo")],
           file = "csv/teams.csv",
           row.names = FALSE)

lapply(groups, function(x)
{
    write.csv2(teams[group == x,
                     c("name", "id", "slug",
                       "nMembers", "members",
                       "group",
                       "repo")],
           file = paste0("csv/", "teams", x, ".csv"),
           row.names = FALSE)
})

