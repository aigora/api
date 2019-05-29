source('API.R')

## remotes::install_github("hrbrmstr/streamgraph")
library(streamgraph) 
library(plotly)
library(lattice)

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
commits <- commits[name != "Oscar Perpiñán Lamigueiro"]
commits$date <- as.POSIXct(commits$date, format = "%Y-%m-%dT%H:%M:%SZ")
commits <- commits[order(date)]

commitsUserDaily <- commits[,
                       .(N = .N),
                       by = .(date = as.IDate(date),
                              name = name,
                              group = group)
                       ]

commitsUser <- commits[,
                       .(N = .N),
                       by = name
                       ]
commitsGroupDaily <- commits[,
                        .(N = .N),
                        by = .(date = as.IDate(date),
                               group = group)
                       ]

xyplot(N ~ date, groups = group, data = commitsGroupDaily, type = 'l')

streamgraph(commitsGroupDaily,
            key = group,
            value = N,
            date = date,
            offset = "zero")

plot_ly(commitsGroupDaily) %>%
    add_lines(x = ~ date,
              y = ~ N,
              color = ~ group)

commitsGroup <- commits[,
                        .(N = .N),
                        by = group
                       ]
dotplot(group ~ N, data = commitsGroup)

commitsTotalDaily <- commits[,
                        .(N = .N),
                        by = .(date = as.IDate(date))
                        ]

xyplot(N ~ date, data = commitsTotalDaily, type = 'l')
