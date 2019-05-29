source('API.R')

##################################################################
## TEAMS
# #################################################################
## Recupera resultados de una consulta previa
teams <- fread('csv/teams.csv')


## Sólo ejecutar para enviar una nueva consulta a GitHub
teams <- getPages("/orgs/aigora/teams", simplify = TRUE)

nTeams <- nrow(teams)

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
                     "nMembers", "members")],
           file = "csv/teams.csv",
           row.names = FALSE)
