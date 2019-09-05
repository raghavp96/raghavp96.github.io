# Elm App

This project is bootstrapped with [Create Elm App](https://github.com/halfzebra/create-elm-app).


## Available scripts

In the project directory you can run:

- `elm-app start` : Runs the app in the development mode. The browser should open automatically to [http://localhost:3000](http://localhost:3000). If the browser does not open, you can open it manually and visit the URL. The page will reload if you make edits. You will also see any lint errors in the console.

- `elm-app install` : Alias for [`elm install`](http://guide.elm-lang.org/get_started.html#elm-install). Used for installing Elm packages from [package.elm-lang.org](http://package.elm-lang.org/)

- `elm-app test` : Runs tests with [node-test-runner](https://github.com/rtfeldman/node-test-runner/tree/master)

- `elm-app build` : Builds the app for production to the `build` folder. The build is minified, and the filenames include the hashes. App is ready to be deployed! (You will not usually need to call this unless)


## Build, Push, Deploy
- I've configured two remotes:
    ```
    origin	https://github.com/raghavp96/website.git (fetch)
    origin	https://github.com/raghavp96/website.git (push)
    public	https://github.com/raghavp96/raghavp96.github.io.git (fetch)
    public	https://github.com/raghavp96/raghavp96.github.io.git (push)
    ```

- I want to not have to deal with building the app and pushing the build output to Github, but GithubPages requires it. the public remote is then where I want to push that, keeping it away from the source code.

- To push then - we run `./deploy.sh`, which will push to origin master and also push the build folder to public remote's master.

## Dead code elimination

Create Elm App comes with an setup for dead code elimination which relies on the elm compiler flag `--optimize` and `uglifyjs`.