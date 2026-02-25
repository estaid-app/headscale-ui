#!/bin/sh
set -x

# source is already copied into /staging/${PROJECT_NAME} via the Dockerfile
cd /staging/${PROJECT_NAME}

# install the project
npm install

# inject the version number
sed -i "s/insert-version/${VERSION}/g" ./src/routes/settings.html/+page.svelte

# build the project
npm run build