#!/bin/bash

# Build the app
elm-app build
cp build-README.md build/
mv build/build-README.md build/README.md
git push origin master
git subtree push --prefix=build public master
rm -rf build