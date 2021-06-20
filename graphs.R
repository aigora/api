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

##################################################################
## Datos agregados
##################################################################
commitsUserGroup <- commits[,
                       .(N = .N),
                       by = .(name = name,
                              group = group)
                       ]

## Commits diarios por usuario y grupo
commitsUserDaily <- commits[,
                       .(N = .N),
                       by = .(date = as.IDate(date),
                              name = name,
                              group = group)
                       ]

## Commits diarios por grupo
commitsGroupDaily <- commits[,
                        .(N = .N),
                        by = .(date = as.IDate(date),
                               group = group)
                       ]

xyplot(N ~ date,
       groups = group,
       data = commitsGroupDaily,
       type = 'l')

streamgraph(commitsGroupDaily,
            key = group,
            value = N,
            date = date,
            offset = "zero",
            interpolate = "basis",
            order = "inside-out") %>%
    sg_legend(show=TRUE, label="Grupo:")

plot_ly(commitsGroupDaily) %>%
    add_lines(x = ~ date,
              y = ~ N,
              color = ~ group)

## Commits totales por usuario
commitsUser <- commits[,
                       .(N = .N),
                       by = name
                       ]

trellis.device(png, file = "figs/Histograma_Commits_Usuarios.png", width = 2000, height = 2000, res = 300)
limits <- quantile(commitsUser$N, c(0, 0.99))
histogram(~ N, data = commitsUser, xlim = limits,
          nint = 40,
          xlab = "Número de commits por usuario",
          ylab = "Porcentaje del total de usuarios")
dev.off()

## Commits totales por grupo
commitsGroup <- commits[,
                        .(N = .N),
                        by = group
                        ]

trellis.device(png, file = "figs/Histograma_Commits_Grupos.png", width = 2000, height = 2000, res = 300)
limits <- quantile(commitsGroup$N, c(0, 0.95))
histogram(~ N, data = commitsGroup,
          xlim = limits,
          nint = 45,
          xlab = "Número de commits por grupo",
          ylab = "Porcentaje del total de grupos")
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
                                 by = group
                                 ]

trellis.device(png, file = "figs/Histograma_Rango.png", width = 2000, height = 2000, res = 300)
histogram(~ range, data = metricasGrupo, nint = 20,
          xlab = "Rango normalizado", ylab = "Porcentaje")
dev.off()

trellis.device(png, file = "figs/Histograma_Rango_Grado.png", width = 2000, height = 2000, res = 300)
histogram(~ range|grado, data = metricasGrupo,
          layout = c(3, 1),
          xlab = "Rango normalizado", ylab = "Porcentaje")
dev.off()

trellis.device(png, file = "figs/Histograma_Max.png", width = 2000, height = 2000, res = 300)
histogram(~ max, data = metricasGrupo, nint = 20,
          xlab = "Máximo normalizado", ylab = "Porcentaje")
dev.off()

trellis.device(png, file = "figs/Histograma_Max_Profesor.png", width = 2000, height = 2000, res = 300)
histogram(~ max|grado, data = metricasGrupo,
          layout = c(3, 1),
          xlab = "Máximo normalizado", ylab = "Porcentaje")
dev.off()


##################################################################
## Encuestas
##################################################################

encuesta2019 <- fread("csv/encuesta_estudiantes_2019.csv")
encuesta2019$year <- "2019"

encuesta2021 <- fread("csv/encuesta_estudiantes_2021.csv")
encuesta2021$year <- "2021"

encuestas <- rbind(encuesta2019, encuesta2021)

## Reorganiza: preguntas en una columna, respuestas en otra, y año en otra
encuestas <- melt(encuestas,
                  id.vars = "year", 
                  measure.vars = c("P1", "P2", "P3", "P4"),
                  variable.name = "Pregunta",
                  value.name = "Respuesta")

## 2019
trellis.device(png, file = "figs/encuestas_estudiantes_2019.png", width = 2000, height = 2000, res = 300)

histogram(~ Respuesta| Pregunta,
          data = encuestas[year == 2019],
          layout = c(4, 1),
          xlab = "Valoraciones", ylab = "Porcentaje") +
    layer(panel.abline(v = 5, col = 'red'))

dev.off()

## 2021
trellis.device(png, file = "figs/encuestas_estudiantes_2021.png", width = 2000, height = 2000, res = 300)

histogram(~ Respuesta| Pregunta,
          data = encuestas[year == 2021],
          layout = c(4, 1),
          xlab = "Valoraciones", ylab = "Porcentaje") +
    layer(panel.abline(v = 5, col = 'red'))

dev.off()


## Evolución
trellis.device(png, file = "figs/encuestas_estudiantes.png", width = 2000, height = 2000, res = 300)

hEncuestas <- histogram(~ Respuesta | Pregunta * year,
                        data = encuestas,
                        layout = c(2, 4),
                        xlab = "Valoraciones", ylab = "Porcentaje") +
    layer(panel.abline(v = 5, col = 'red'))

useOuterStrips(hEncuestas)

dev.off()


