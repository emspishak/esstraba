#!/bin/bash
set -e

export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

nvm use

REPO="$HOME/files/esstraba"

cd "$REPO/frontend"
npm ci
npm run build

cd "$REPO/backend"
npm ci
npm run build
