#!/usr/bin/env bash
set -euo pipefail

# Rebuild script for etro-js/etro-js.github.io
# Runs on existing source tree (no clone). Installs deps, runs pre-build steps, builds.

# --- Node version ---
# Docusaurus 2.2.0, engines: node >=16.14; use Node 18 LTS
export NVM_DIR="${NVM_DIR:-$HOME/.nvm}"
if [ -f "$NVM_DIR/nvm.sh" ]; then
    source "$NVM_DIR/nvm.sh"
    nvm install 18
    nvm use 18
fi

node --version
npm --version

# --- Package manager: npm ---

# --- Dependencies ---
npm install

# --- Build ---
npm run build

echo "[DONE] Build complete."
