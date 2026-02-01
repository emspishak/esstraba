#!/bin/bash
set -e

REPO="$HOME/files/esstraba"

cd "$REPO/frontend"
npm ci
npm run build

WEB="$HOME/web/strava"
rm -r "$WEB"
mkdir "$WEB"

cp -a "build/." "$WEB/"
