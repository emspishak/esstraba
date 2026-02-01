#!/bin/bash
set -e

REPO="$HOME/files/esstraba"

cd "$REPO/frontend"
npm ci
npm run build

cd "$REPO/backend"
npm ci
npm run build
