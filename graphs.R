
source('API.R')

##remotes::install_github("hrbrmstr/streamgraph")
library(streamgraph) 
library(plotly)
library(lattice)
library(latticeExtra)
library(car)
library(carData)
library(foreign)
library(ggplot2)
library(psych)
source("configGraphs.R")
##################################################################
## COMMITS
##################################################################

teamsByRepo <- fread("csv/reposByTeams.csv")

repoNames <- teamsByRepo$repo_name

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
                       "Oscar PerpiÃ±Ã¡n Lamigueiro")
)]
commits$date <- as.POSIXct(commits$date, format = "%Y-%m-%dT%H:%M:%SZ")
commits <- commits[order(date)]

#################################################################
## Notas-Commits IE
#################################################################
#Añadir una carpeta llamada "notas" y dentro el archivo "calificaciones_IE.csv"
#Borrar despues de ejecutar para no subir las notas al Github

teamsNotasIE <- fread("csv/notas/calificaciones_IE.csv")
notasIE <- teamsNotasIE$calificacion
twReposIE <- repoNames[grepl("twIE", repoNames)]
commitsIE <- lapply(twReposIE, function(x)
{
    vals <- fread(paste0("csv/commits_", x, ".csv"))
    vals$group <- x
    vals
})

commitsIE <- do.call(rbind, commitsIE)
commitsIE <- commitsIE[!(name %in%
                         c("Juliauru",
                           "MPerezMateo",
                           "Oscar PerpiÃ±Ã¡n Lamigueiro")
)]

commitsGroupIE <- commitsIE[,
                            .(N = .N),
                            by = group
                            ##notasIE = notas
]

commitsGroupIE$notas <- notasIE
commitsGroupIEOrdenado <- commitsGroupIE[with(commitsGroupIE, order(commitsGroupIE$N)), ] # Orden directo 
x <- commitsGroupIEOrdenado$N
y <- commitsGroupIEOrdenado$notas


trellis.device(png, file = "figs/Grafico_Notas_Commits_IE.png", width = 2000, height = 2000, res = 300)
limits <- quantile(commitsGroupIEOrdenado$N, c(0, 0.99))
plot(x , y,xlab = "Commits", ylab = "Notas", pch = 19, col = "black")
title(main = "Notas-Commits IE")
grid(20,10)
dev.off()

#################################################################
## Notas-Commits IA
#################################################################
#Añadir una carpeta llamada "notas" y dentro el archivo "calificaciones_IE.csv"
#Borrar despues de ejecutar para no subir las notas al Github

teamsNotasIA <- fread("csv/notas/calificaciones_IA.csv")
notasIA <- teamsNotasIA$calificacion
twReposIA <- repoNames[grepl("twIA", repoNames)]
commitsIA <- lapply(twReposIA, function(x)
{
    vals <- fread(paste0("csv/commits_", x, ".csv"))
    vals$group <- x
    vals
})

commitsIA <- do.call(rbind, commitsIA)
commitsIA <- commitsIA[!(name %in%
                             c("Juliauru",
                               "MPerezMateo",
                               "Oscar PerpiÃ±Ã¡n Lamigueiro")
)]

commitsGroupIA <- commitsIA[,
                            .(N = .N),
                            by = group
]

commitsGroupIA$notas <- notasIA
commitsGroupIAOrdenado <- commitsGroupIA[with(commitsGroupIE, order(commitsGroupIA$N)), ] # Orden directo 
x <- commitsGroupIAOrdenado$N
y <- commitsGroupIAOrdenado$notas


trellis.device(png, file = "figs/Grafico_Notas_Commits_IA.png", width = 2000, height = 2000, res = 300)
limits <- quantile(commitsGroupIAOrdenado$N, c(0, 0.99))
plot(x , y,xlab = "Commits", ylab = "Notas", pch = 19, col = "black")
title(main = "Notas-Commits IA")
grid(20,10)
dev.off()







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
                                      profe = substr(group, 3, 6)
                                 ),
                                 by = group
                                 ]

trellis.device(png, file = "figs/Histograma_Rango.png", width = 2000, height = 2000, res = 300)
histogram(~ range, data = metricasGrupo, nint = 20,
          xlab = "Rango normalizado", ylab = "Porcentaje")
dev.off()

trellis.device(png, file = "figs/Histograma_Rango_Profesor.png", width = 2000, height = 2000, res = 300)
histogram(~ range|profe, data = metricasGrupo,
          layout = c(5, 1),
          xlab = "Rango normalizado", ylab = "Porcentaje")
dev.off()

trellis.device(png, file = "figs/Histograma_Max.png", width = 2000, height = 2000, res = 300)
histogram(~ max, data = metricasGrupo, nint = 20,
          xlab = "Máximo normalizado", ylab = "Porcentaje")
dev.off()

trellis.device(png, file = "figs/Histograma_Max_Profesor.png", width = 2000, height = 2000, res = 300)
histogram(~ max|profe, data = metricasGrupo,
          layout = c(5, 1),
          xlab = "Máximo normalizado", ylab = "Porcentaje")
dev.off()


##################################################################
## Encuestas
##################################################################
encuestas <- read.csv("csv/encuesta_estudiantes.csv")

trellis.device(png, file = "figs/encuestas_estudiantes.png", width = 2000, height = 2000, res = 300)
histogram(~ P1 + P2 + P3 + P4, data = encuestas,
          layout = c(4, 1),
          xlab = "Valoraciones", ylab = "Porcentaje") +
    layer(panel.abline(v = 5, col = 'red'))
dev.off()



