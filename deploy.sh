#!/bin/bash

# Build the app, and commit those changes to source repo
elm-app build
cp build-README.md build/
mv build/build-README.md build/README.md
git add .
git commit -m "adding build output to source"
git push origin master
# Push the build subtree to the public repo
git subtree push --prefix=build public master
# Remove the build directory from the source repo
rm -rf build
git add .
git commit -m "deleting build output from source"
git push origin master