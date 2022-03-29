source("API.R")

issues <- read.csv2("issues/issues.txt")
milestones <- read.csv2("issues/milestones.txt")

teams <- fread('csv/teams.csv')
reposE105 <- teams[group == "E105", repo]


lapply(seq_along(reposE105), function(i)
{

    repo <- reposE105[i]

    print(repo)
    
    ## for (i in seq_len(nrow(milestones)))
    ## {
    ##     res <- ghMilestone(repo,
    ##                        title = milestones[i, "Title"],
    ##                        description = milestones[i, "Description"],
    ##                        date = milestones[i, "Date"])
    ##     print(res)
    ## }    

    for (j in seq_len(nrow(issues)))
    {
        res <- ghIssue(repo,
                       title = issues[j, "Title"],
                       body = issues[j, "Body"],
                       milestone = issues[j, "Milestone"]
                       )
        print(res)
        
        Sys.sleep(5)
    }
})

