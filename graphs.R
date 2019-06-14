source('API.R')

## remotes::install_github("hrbrmstr/streamgraph")
library(streamgraph) 
library(plotly)
library(lattice)
library(latticeExtra)
source("configGraphs.R")
##################################################################
## COMMITS
##################################################################

teamsByRepo <- fread("csv/teamsByRepo.csv")

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

trellis.device(pdf, file = "figs/Histograma_Commits_Usuarios.pdf")
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

trellis.device(pdf, file = "figs/Histograma_Commits_Grupos.pdf")
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

trellis.device(pdf, file = "figs/Histograma_Rango.pdf")
histogram(~ range, data = metricasGrupo, nint = 20,
          xlab = "Rango normalizado", ylab = "Porcentaje")
dev.off()

trellis.device(pdf, file = "figs/Histograma_Rango_Profesor.pdf")
histogram(~ range|profe, data = metricasGrupo,
          layout = c(5, 1),
          xlab = "Rango normalizado", ylab = "Porcentaje")
dev.off()

trellis.device(pdf, file = "figs/Histograma_Max.pdf")
histogram(~ max, data = metricasGrupo, nint = 20,
          xlab = "Máximo normalizado", ylab = "Porcentaje")
dev.off()

trellis.device(pdf, file = "figs/Histograma_Max_Profesor.pdf")
histogram(~ max|profe, data = metricasGrupo,
          layout = c(5, 1),
          xlab = "Máximo normalizado", ylab = "Porcentaje")
dev.off()







