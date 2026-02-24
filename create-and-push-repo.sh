#!/usr/bin/env bash
set -e
cd "$(dirname "$0")"

echo "=== 1. Install GitHub CLI (if needed) ==="
if ! command -v gh &>/dev/null; then
  echo "Installing gh..."
  brew install gh
else
  echo "gh is already installed."
fi

echo ""
echo "=== 2. Log in to GitHub (if needed) ==="
if ! gh auth status &>/dev/null; then
  gh auth login
else
  echo "Already logged in."
fi

echo ""
echo "=== 3. Create repo and push ==="
gh repo create deploy-artifacts --public --source=. --remote=origin --push

echo ""
echo "Done. Repo: https://github.com/ank1064/deploy-artifacts"
