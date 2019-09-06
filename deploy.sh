#!/bin/bash

# Push all committed changes to origin remote, master branch
git push origin master

# Build the app, and move all built output to raghavp96.github.io folder (it's a repo so it has its own git tracking)
elm-app build
cp -r build/* raghavp96.github.io/
rm -rf build
cd raghavp96.github.io
git add .
git commit -m "Adding latest built changes from source."
# Push changes to origin master for this repo
git push origin master
cd ..