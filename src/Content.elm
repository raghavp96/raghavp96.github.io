module Content exposing (workExperience, projects)

import Types exposing (..)

cs_language_tags = ["Python", "Java", "Racket", "R", "Elm", "SQL", "HTML", "CSS", "JavaScript" ]

workExperience = [
        { 
            title = "Software Engineering Co-op, 2018", 
            company = "Intuit, Inc.", 
            blurb = "Worked with the Voyager Team to launch a platform-wide orchestration service leveraging AWS, and led redesign of the trust store management process.", 
            description = [
                "In my second co-op I launched a platform-wide orchestration service leveraging AWS Step Function to modify data and resources across the components and services that make up Quickbooks Online (QBO). This was done to help QBO meet GDPR compliance, and I worked with a small subset of my team over the course of my co-op to get this done. This was the first time I had worked with Python, Docker, AWS, and I learned a lot from my time here. Since this was a new project starting from scratch I also helped a lot with setting up builds, logging tools, and automating the code pipeline and test suites as much as possible.", 
                "The first thing I worked on involved an expired SSL cert in the QBO Truststore and Keystore; there was no easy way to tell what certs were used for what service, when they expired, etc. I had to use Java keytool to help figure out which cert was the issue. Hitting this problem a second time, I led an initiative to redesign how we managed these CA certs and worked to externalize the trust store so we could easily rotate certs without rebuilding QBO."], 
            link = "https://www.intuit.com/",
            tags = ["Java", "Python", "AWS S3", "AWS Lambda", "AWS Step Function", "CircleCI", "Jenkins", "Docker", "GraphQL", "Keytool"]
        },
        { 
            title = "Software Engineering Co-op, 2017", 
            company = "Charles River Development", 
            blurb = "Worked with the Java Frameworks Team, designed and built a tool to easily collect data from a cluster of application servers, and also built an API-agnostic backwards compatibility enforcer.", 
            description = [
                "This was my first coop! I was just a newborn babe tasked with creating a monitoring tool that collected different stats about our application servers whenever they being performance tested. I learned about a lot of unique things in J2EE, like JMX and MXBeans (which I used to monitor the JVMs). The tool was used by DBA team. There was some aspect of this project related to SQL but I can't remember what :( (sadbois).",
                "Charles River releases a web API for their clients to connect to, but it seemed like the API was breaking too frequently, which led to lots of customer questions about the API. I got to work on building an API verifier that enforced backwards compatibility using Java's Reflection library to compare the changed API and the current version and integrated this into the build process, so breaking API changes wouldn't build successfully.",
                "(IIRC, I compare the two versions of the API by essentially creating a graph of each API (classes are nodes, and edges between two nodes occur when a class has a public variable with that type or a public method with that type in the signature), checking that the new graph preserves all the edges in the current graph.)"],
            link = "https://www.crd.com/",
            tags = ["Java", "Jenkins", "MySQL", "Reflection"]
        },
        { 
            title = "College Intern, 2016", 
            company = "Dell EMC", 
            blurb = "Worked with the Proven Program on certification exam document conversion, and both financial and exam security data analysis.", 
            description = [
                "My first ever internship was with EMC's Educational Services. This role was more business-oriented than software development-focused, but I was still able to apply problem solving skills I learned from my courses to build some tools to automate my work. I built a tool in Java that formatted provided text fields into a Word document that followed the new standard. I used my tool to convert all 70 of the Proven Program certification curricula.",
                "I moved to more analyical-style projects, analyzing monthly invoices to learn more about where the biggest expenditures were, as well as studying anonymized answer patterns to certification exams to detect cheating. This was my first exposure to a little bit of the R language."], 
            link = "https://education.emc.com",
            tags = ["Java", "Excel", "AccessDB" ]
        }
    ]

projects = [
        { 
            title = "meta-api", 
            blurb = "The backend for some Slack apps of mine at the moment", 
            description = "Slack is a super fun way to communicate with team members - even the Free tier version of Slack has a lot of great features, like tagging users, threading, creating channels, and allowing you to build and add your own apps to get more out of it. It's so good that my friend group uses it as our messaging platform and we've done a number of customizations to get what we want. One feature the free tier doesn't support is managing user groups. That is, being able to write a message that tags the engineers on your team and notifies them that they were tagged. You'd have to tag each member individually, which is a hassle.",
            tags = ["Python", "Flask", "MongoDB" , "Heroku"]
        },
        { 
            title = "league-ai", 
            blurb = "Using Machine Learning and Ai to solve problems in LoL", 
            description = "League of Legends is a popular MOBA style game that's very complex - many factors in a single game (and out of the game) are key to determining what team will win in a given match. I play a bit of League (I'm not good though rip)! In this project, we (I worked on this with a friend) compared different machine learning algorithms (Random Forest and Neural Networks among them) for their ability in predicting the outcome of a match.",
            tags = ["Python", "TensorFlow" , "R"]
        },
        { 
            title = "bluebikedata", 
            blurb = " A website, API, and database for blue bike data", 
            description = "Bluebikes is a public bikeshare service in Boston, MA. They're super convenient! In this project, we poll live JSON data that Bluebike at a given interval, and aggregate that data to get insights about bike station usage. We've ported trip data that they release every quarted into tables in our RDBMS. Storing all this data, we expose a REST API that users can connect with to make their own insights, but we provide our own as well on our site, where we use Tableau to answer different questions we had! (Had to take down the site because I ran out of my $300 Google Cloud credit, but the GitHub README has some nice examples)",
            tags = ["Python", "Flask", "Google Cloud SQL" , "Microservices", "Docker"]
            },
        { 
            title = "dockernetes", 
            blurb = "A simple, lightweight system for connecting Docker containers to a network.", 
            description = "Template for managing Docker container intercommunication on a connected network",
            tags = ["Docker"]
        }
    ]