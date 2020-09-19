#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run generate

# copy README.md
cp README.md dist/

# navigate into the build output directory
cd dist

git init
git add -A
git commit -m 'deploy'

# if you are deploying to https://USERNAME.github.io
git push -f git@github.com:danielgj/danielgj.github.io.git master

cd -
