source("API.R")

issues <- read.csv2("issues/issues.txt")
milestones <- read.csv2("issues/milestones.txt")

teams <- fread('csv/teams.csv')
reposE105 <- teams[group == "E105", repo]
reposQ103 <- teams[group == "Q103", repo]


pushMilestones <- function(repo, milestones)
{
    for (i in seq_len(nrow(milestones)))
    {
        res <- ghMilestone(repo,
                           title = milestones[i, "Title"],
                           description = milestones[i, "Description"],
                           date = milestones[i, "Date"])
        print(res)

        Sys.sleep(1) ## Evita secondary rate limits
    }    

}

pushIssues <- function(repo, issues)
{
    for (j in seq_len(nrow(issues)))
    {
        res <- ghIssue(repo,
                       title = issues[j, "Title"],
                       body = issues[j, "Body"],
                       milestone = issues[j, "Milestone"]
                       )
        print(res)
        
        Sys.sleep(1) ## Evita secondary rate limits
    }

}

##################################################################
## Asignación masiva
##################################################################

repos <- reposQ103

lapply(seq_along(repos), function(i)
{
    repo <- repos[i]
    pushMilestones(repo, milestones)
})



lapply(seq_along(repos), function(i)
{
    repo <- repos[i]
    pushIssues(repo, issues)
    Sys.sleep(5)
})

