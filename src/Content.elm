module Content exposing (workExperience, projects)

import Types exposing (..)


workExperience = [
        { title = "Software Engineering Co-op", company = "Intuit, Inc.", blurb = "Did AWS stuff", description = "Did stuff", link = ""},
        { title = "Software Engineering Co-op", company = "Charles River Development", blurb = "Did DB stuff", description = "Did stuff", link = ""},
        { title = "College Intern", company = "Dell EMC", blurb = "Did template stuff", description = "Did stuff", link = ""}
    ]

projects = [
        { title = "meta-api", blurb = "wowow1", description = "The back end for a Slack App"},
        { title = "league-ai", blurb = "wowow2", description = "Using Machine Learning and Ai to solve problems in LoL"},
        { title = "bluebikedata", blurb = "wowow3", description = "Aggregating data exposed by Bluebikes, exposing that data, and providing insights"},
        { title = "dockernetes", blurb = "wowow4", description = "Template for managing Docker container intercommunication on a connected network"}
    ]