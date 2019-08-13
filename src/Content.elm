module Content exposing (workExperience, projects)

import Types exposing (..)

cs_language_tags = ["Python", "Java", "Racket", "R", "Elm", "SQL", "HTML", "CSS", "JavaScript" ]

workExperience = [
        { 
            title = "Software Engineering Co-op", 
            company = "Intuit, Inc.", 
            blurb = "Worked with the Voyager Team, and helped launch a platform-wide orchestration service leveraging AWS, and helped redesign the trust store management process.", 
            description = "Did stuff", 
            link = ""
        },
        { 
            title = "Software Engineering Co-op", 
            company = "Charles River Development", 
            blurb = "Worked with the Java Frameworks Team, designed and built a tool to easily collect data from a cluster of application servers, and also built an API-agnostic backwards compatibility enforcer.", 
            description = "Did stuff",
            link = ""
        },
        { 
            title = "College Intern", 
            company = "Dell EMC", 
            blurb = "Worked with the Proven Program on certification exam document conversion, and both financial and exam security data analysis.", 
            description = "Did stuff", 
            link = ""
        }
    ]

projects = [
        { 
            title = "meta-api", 
            blurb = "The backend for some Slack apps of mine at the moment", 
            description = "Slack is a super fun way to communicate with team members - even the Free tier version of Slack has a lot of great features, like tagging users, threading, creating channels, and allowing you to build and add your own apps to get more out of it. It's so good that my friend group uses it as our messaging platform and we've done a number of customizations to get what we want. One feature the free tier doesn't support is managing user groups. That is, being able to write a message that tags the engineers on your team and notifies them that they were tagged. You'd have to tag each member individually, which is a hassle."
        },
        { 
            title = "league-ai", 
            blurb = "Using Machine Learning and Ai to solve problems in LoL", 
            description = "League of Legends is a popular MOBA style game that's very complex - many factors in a single game (and out of the game) are key to determining what team will win in a given match. I play a bit of League (I'm not good though rip)! In this project, we (I worked on this with a friend) compared different machine learning algorithms (Random Forest and Neural Networks among them) for their ability in predicting the outcome of a match."
        },
        { 
            title = "bluebikedata", 
            blurb = " A website, API, and database for blue bike data", 
            description = "Bluebikes is a public bikeshare service in Boston, MA. They're super convenient! In this project, we poll live JSON data that Bluebike at a given interval, and aggregate that data to get insights about bike station usage. We've ported trip data that they release every quarted into tables in our RDBMS. Storing all this data, we expose a REST API that users can connect with to make their own insights, but we provide our own as well on our site! (I had to take down the site because I ran out of my $300 Google Cloud credit."
            },
        { 
            title = "dockernetes", 
            blurb = "A simple, lightweight system for connecting Docker containers to a network.", 
            description = "Template for managing Docker container intercommunication on a connected network"
        }
    ]