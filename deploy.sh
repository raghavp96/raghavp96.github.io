#!/bin/bash

# Build the app
elm-app build
git add .
git commit -m "Building latest commits"

# Push all committed changes to origin master, and the build folder to public master
git push origin master
git subtree push --prefix build/ public master
