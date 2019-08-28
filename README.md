# Elm App

This project is bootstrapped with [Create Elm App](https://github.com/halfzebra/create-elm-app).


## Available scripts

In the project directory you can run:

- `elm-app build` : Builds the app for production to the `build` folder. The build is minified, and the filenames include the hashes. App is ready to be deployed!

- `elm-app start` : Runs the app in the development mode. The browser should open automatically to [http://localhost:3000](http://localhost:3000). If the browser does not open, you can open it manually and visit the URL. The page will reload if you make edits. You will also see any lint errors in the console.

- `elm-app install` : Alias for [`elm install`](http://guide.elm-lang.org/get_started.html#elm-install). Used for installing Elm packages from [package.elm-lang.org](http://package.elm-lang.org/)

- `elm-app test` : Runs tests with [node-test-runner](https://github.com/rtfeldman/node-test-runner/tree/master)

## Dead code elimination

Create Elm App comes with an setup for dead code elimination which relies on the elm compiler flag `--optimize` and `uglifyjs`.