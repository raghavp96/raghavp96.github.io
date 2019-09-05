#!/bin/bash

# Build the app
elm-app build
git push origin master
git subtree push --prefix=build public master