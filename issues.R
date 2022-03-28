source("API.R")

issues <- read.csv2("issues/issues.txt")
milestones <- read.csv2("issues/milestones.txt")

teams <- fread('csv/teams.csv')
reposE105 <- teams[group == "E105", repo]

lapply(reposE105, function(repo)
{
    
    for (i in seq_len(nrow(milestones)))
        ghMilestone(repo,
                    title = milestones[i, "Title"],
                    description = milestones[i, "Description"],
                    date = milestones[i, "Date"])

    for (i in seq_len(nrow(issues)))
        ghIssue(repo,
                title = issues[i, "Title"],
                body = issues[i, "Body"],
                milestone = issues[i, "Milestone"]
                )

})

