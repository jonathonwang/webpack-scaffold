#!/usr/bin/env bash
#Variables
COLORGREEN='\033[0;32m' # Green
COLORRED='\033[0;31m' # Red
NOCOLOR='\033[0m' # No Color
BOLD=$(tput bold) # Bold
WEBPACKSCAFFOLDDIRECTORY=~/Documents/Builds/Scaffolds/webpack-project-scaffold # Scaffold Directory

#NPM Dependencies Array
Dependencies=(bootstrap-sass bootstrap jquery react react-dom @types/react @types/react-dom @types/jquery types/bootstrap)

#NPM Dev Dependencies Array
DevDependencies=(webpack webpack-notifier autoprefixer autoprefixer-loader babel-core babel-loader babel-preset-es2015 babel-preset-react css-loader extract-text-webpack-plugin node-sass precss sass-loader style-loader ts-loader typescript)

# Copy Files
cp -R $WEBPACKSCAFFOLDDIRECTORY'/src' ./
cp $WEBPACKSCAFFOLDDIRECTORY'/.babelrc' ./
cp $WEBPACKSCAFFOLDDIRECTORY'/.gitignore' ./
cp $WEBPACKSCAFFOLDDIRECTORY'/index.html' ./
cp $WEBPACKSCAFFOLDDIRECTORY'/README.md' ./
cp $WEBPACKSCAFFOLDDIRECTORY'/tsconfig.json' ./
cp $WEBPACKSCAFFOLDDIRECTORY'/tslint.json' ./
cp $WEBPACKSCAFFOLDDIRECTORY'/webpack.config.babel.js' ./
cp $WEBPACKSCAFFOLDDIRECTORY'/webpack.production-config.babel.js' ./

# Install NPM Dependencies
if [ ! -f ./package.json ];
  then
    echo -e "${COLORRED}${BOLD}ERROR: No package.json found${NOCOLOR}"
    npm init
    echo -e "${COLORGREEN}Installing npm dependencies..."
    # Dependency Loop ==========================================================
    for dependency in "${Dependencies[@]}"
    do
       :
       npm install $dependency --save
    done
    # Dev Dependency Loop ======================================================
    for dependency in "${DevDependencies[@]}"
    do
       :
       npm install $dependency --save-dev
    done
    # ==========================================================================
    echo -e "${COLORGREEN}NPM dependencies installed";
  else
    echo -e "${COLORGREEN}package.json found!"
    echo -e "${COLORGREEN}Installing npm dependencies..."
    # Dependency Loop ==========================================================
    for dependency in "${Dependencies[@]}"
    do
       :
       npm install $dependency --save
    done
    # Dev Dependency Loop ======================================================
    for dependency in "${DevDependencies[@]}"
    do
       :
       npm install $dependency --save-dev
    done
    # ==========================================================================
    echo -e "${COLORGREEN}NPM dependencies installed";
fi

echo -e "${COLORGREEN}${BOLD}All files copied";
echo -e "${COLORGREEN}${BOLD}make sure to add :";
echo -e '"build": "webpack",'
echo -e '"build-prod": "webpack -p --config ./webpack.production-config.babel.js"'
echo -e "to your package.json scripts Object"
