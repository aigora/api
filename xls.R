library(openxlsx)

teamsByRepo <- fread("csv/teamsByRepo.csv")
twE105 <- fread("csv/twE105.csv")
twE100 <- fread("csv/twE100.csv")
twA104 <- fread("csv/twA104.csv")
twA109 <- fread("csv/twA109.csv")
twQ103 <- fread("csv/twQ103.csv")

commits <- fread("csv/resumen_commits.csv")

dfs <- list(teamsByRepo,
            twE105, twE100, twA104, twA109, twQ103,
            commits)

names(dfs) <- c("Equipos",
                "E105", "E100", "A104", "A109", "Q103",
                "Resumen commits")

old <- setwd(tempdir())
write.xlsx(dfs, file = "twCommits.xlsx")
setwd(old)
