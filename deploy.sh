#!/bin/bash

# Build the app
elm-app build
cp build-README.md build/
mv build/build-README.md build/README.md
git add .
git commit -m "adding build output to source"
git push origin master
git subtree push --prefix=build public master
rm -rf build
git add .
git commit -m "deleting build output from source"
git push origin master