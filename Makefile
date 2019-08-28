build:
	elm-app build
	rm -rf docs
	mv build docs