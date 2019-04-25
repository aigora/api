source('API.R')

##################################################################
## REPOSITORIOS
##################################################################

## Recupera consulta previa
teams <- fread('csv/teams.csv')

teamsByRepo <- fread("csv/teamsByRepo.csv")

## Recupera datos de un grupo de matriculación. P.ej E105
twE015 <- fread("csv/twE105.csv")

## Sólo ejecutar para realizar una nueva consulta a GitHub
repos <- getPages("/orgs/aigora/repos")
nmsRep <- sapply(repos, function(x) x$name)

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
           file = "csv/teamsByRepo.csv",
           row.names = FALSE)

## Un fichero por cada grupo de matriculación
repoNames <- teamsByRepo$repo_name
groups <- c("E100", "E105", "Q103", "A104", "A109")
lapply(groups, function(group)
{
    idx <- grep(paste0("tw", group), repoNames)
    write.csv2(teamsByRepo[idx, ],
           file = paste0("csv/tw", group, ".csv"),
           row.names = FALSE)
})
