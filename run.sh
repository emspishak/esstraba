#!/bin/bash
set -e

export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

nvm use

REPO="$HOME/files/esstraba"

cd "$REPO/frontend"
WEB="$HOME/web/strava"
rm -r "$WEB"
mkdir "$WEB"

cp -a "build/." "$WEB/"

cd "$REPO/backend"
npm run serve
