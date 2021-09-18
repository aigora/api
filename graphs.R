source('API.R')

source("configGraphs.R")
##################################################################
## COMMITS
##################################################################

## Recupera consulta previa
teams <- fread('csv/teams.csv')
nTeams <- nrow(teams)

reposByTeams <- fread("csv/reposByTeams.csv")


## Recupera datos de un grupo de matriculación. P.ej IE
twIE <- fread("csv/twIE.csv")

repoNames <- reposByTeams$repo_name
twRepos <- repoNames[grepl("tw", repoNames)]

## Recupera datos de ficheros locales
commits <- lapply(twRepos, function(x)
{
    vals <- fread(paste0("csv/commits_", x, ".csv"))
    vals$group <- x
    vals
})
commits <- do.call(rbind, commits)
commits <- commits[!(name %in%
                     c("Juliauru",
                       "MPerezMateo",
                       "Oscar Perpiñán Lamigueiro")
)]
commits$date <- as.POSIXct(commits$date, format = "%Y-%m-%dT%H:%M:%SZ")
commits <- commits[order(date)]
commits$course <- "2020-21"

reposByTeams2019 <- fread("csv/teamsByRepo1819.csv")
repoNames2019 <- reposByTeams2019$repo_name
twRepos2019 <- repoNames2019[grepl("tw", repoNames2019)]

commits2019 <- lapply(twRepos2019, function(x)
{
    vals <- fread(paste0("csv/commits_", x, ".csv"))
    vals$group <- x
    vals
})

commits2019 <- do.call(rbind, commits2019)
commits2019 <- commits2019[!(name %in%
                     c("Juliauru",
                       "MPerezMateo",
                       "Oscar Perpiñán Lamigueiro")
)]
commits2019$date <- as.POSIXct(commits2019$date, format = "%Y-%m-%dT%H:%M:%SZ")
commits2019 <- commits2019[order(date)]
commits2019$course <- "2018-19"

commits <- rbind(commits2019,
                 commits[, .(name, date, group, course)]) 

##################################################################
## Datos agregados
##################################################################
commitsUserGroup <- commits[,
                       .(N = .N),
                       by = .(name = name,
                              group = group,
                              course = course)
                       ]

## Commits diarios por usuario y grupo
commitsUserDaily <- commits[,
                       .(N = .N),
                       by = .(date = as.IDate(date),
                              name = name,
                              group = group,
                              course = course)
                       ]

## Commits diarios por grupo
commitsGroupDaily <- commits[,
                        .(N = .N),
                        by = .(date = as.IDate(date),
                               group = group,
                               course = course)
                       ]
## Commits totales por usuario
commitsUser <- commits[,
                       .(N = .N),
                       by = .(name = name,
                              course = course)
                       ]

## Commits totales por grupo
commitsGroup <- commits[,
                        .(N = .N),
                        by = .(group = group,
                               course = course)
                        ]


xyplot(N ~ date,
       groups = group,
       data = commitsGroupDaily,
       type = 'l')

## streamgraph(commitsGroupDaily,
##             key = group,
##             value = N,
##             date = date,
##             offset = "zero",
##             interpolate = "basis",
##             order = "inside-out") %>%
##     sg_legend(show=TRUE, label="Grupo:")

## plot_ly(commitsGroupDaily) %>%
##     add_lines(x = ~ date,
##               y = ~ N,
##               color = ~ group)


trellis.device(png, file = "figs/Histograma_Commits_Usuarios.png", width = 2000, height = 2000, res = 300)

limits <- quantile(commitsUser$N, c(0, .99))
histogram(~ N|course, data = commitsUser, xlim = limits,
          nint = 40,
          scales = list(alternating = 3),
          xlab = "Number of commits per student",
          ylab = "% of total students")

dev.off()


trellis.device(png, file = "figs/Histograma_Commits_Grupos.png", width = 2000, height = 2000, res = 300)

limits <- quantile(commitsGroup$N, c(0, .99))
histogram(~ N|course, data = commitsGroup,
          xlim = limits,
          nint = 30,
          scales = list(alternating = 3),
          xlab = "Number of commits per group",
          ylab = "% of total groups")

dev.off()

dotplot(group ~ N, data = commitsGroup)

## Commits diarios totales (todos los grupos y usuarios juntos)
commitsTotalDaily <- commits[,
                        .(N = .N),
                        by = .(date = as.IDate(date))
                        ]

xyplot(N ~ date, data = commitsTotalDaily, type = 'l')

## SD y max de cada grupo
metricasGrupo <- commitsUserGroup[,
                                  .(
                                      range = diff(range(N)) / sum(N),
                                      max = max(N)/sum(N),
                                      grado = substr(group, 3, 4)
                                 ),
                                 by = .(group, course)
                                 ]


trellis.device(png, file = "figs/Histograma_Max.png", width = 2000, height = 2000, res = 300)

limits <- quantile(metricasGrupo$max, c(0, .99))
histogram(~ max|course,
          data = metricasGrupo,
          xlim = limits, nint = 15,
          scales = list(alternating = 3),
          xlab = "Maximum number of commits (normalized)", ylab = "Percentage")

dev.off()

trellis.device(png, file = "figs/Histograma_Max_Grado.png", width = 2000, height = 2000, res = 300)

limits <- quantile(metricasGrupo$max, c(0, .99))
histogram(~ max|grado,
          data = metricasGrupo[course == "2020-21"],
          xlim = limits,
          layout = c(3, 1),
          scales = list(alternating = 3),
          xlab = "Maximum number of commits (normalized)", ylab = "Percentage")

dev.off()

trellis.device(png, file = "figs/Histograma_Rango.png", width = 2000, height = 2000, res = 300)

limits <- quantile(metricasGrupo$range, c(0, .99))
histogram(~ range|course,
          data = metricasGrupo,
          nint = 15, xlim = limits,
          scales = list(alternating = 3),
          xlab = "Range of commits (normalized)", ylab = "Percentage")

dev.off()

trellis.device(png, file = "figs/Histograma_Rango_Grado.png", width = 2000, height = 2000, res = 300)

histogram(~ range|grado,
          data = metricasGrupo[course == "2020-21"],
          xlim = limits,
          layout = c(3, 1),
          scales = list(alternating = 3),
          xlab = "Range of commits (normalized)", ylab = "Percentage")

dev.off()

##################################################################
## Encuestas
##################################################################

encuesta2019 <- fread("csv/encuesta_estudiantes_2019.csv")
encuesta2019$year <- "2019"

encuesta2021 <- fread("csv/encuesta_estudiantes_2021.csv")
encuesta2021$year <- "2021"

encuestas <- rbind(encuesta2019, encuesta2021)
names(encuestas) <- c("Q1", "Q2", "Q3", "Q4", "year")

## Reorganiza: preguntas en una columna, respuestas en otra, y año en otra
encuestas <- melt(encuestas,
                  id.vars = "year", 
                  measure.vars = c("Q1", "Q2", "Q3", "Q4"),
                  variable.name = "Question",
                  value.name = "Answer")

## 2019
trellis.device(png, file = "figs/encuestas_estudiantes_2019.png", width = 2000, height = 2000, res = 300)

histogram(~ Answer| Question,
          data = encuestas[year == 2019],
          layout = c(4, 1),
          scales = list(alternating = 3),
          xlab = "Values", ylab = "Percentage") +
    layer(panel.abline(v = 5, col = 'red'))

dev.off()

## 2021
trellis.device(png, file = "figs/encuestas_estudiantes_2021.png", width = 2000, height = 2000, res = 300)

histogram(~ Answer| Question,
          data = encuestas[year == 2021],
          layout = c(4, 1),
          xlab = "Values", ylab = "Percentage") +
    layer(panel.abline(v = 5, col = 'red'))

dev.off()


## Evolución
trellis.device(png, file = "figs/encuestas_estudiantes_2019vs2021.png", width = 2000, height = 2000, res = 300)

hEncuestas <- histogram(~ Answer | Question * year,
                        data = encuestas,
                        layout = c(2, 4),
                        scales = list(alternating = 3),
                        xlab = "Values", ylab = "Percentage") +
    layer(panel.abline(v = 5, col = 'red'))

useOuterStrips(hEncuestas)

dev.off()


