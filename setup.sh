#!/usr/bin/env bash
# setup.sh - Initialize the superintervals-wheels repo and push to GitHub
# Usage: ./setup.sh <your-github-username>

set -euo pipefail

GITHUB_USER="${1:-}"
REPO_NAME="superintervals-wheels"

if [ -z "$GITHUB_USER" ]; then
  echo "Usage: $0 <your-github-username>"
  exit 1
fi

echo "==> Initializing repo: $REPO_NAME"
git init
git add -A
git commit -m "chore: init superintervals wheel builder"

echo ""
echo "==> Next steps:"
echo ""
echo "  1. Create a new repo on GitHub:"
echo "     https://github.com/new"
echo "     Name: $REPO_NAME"
echo "     Visibility: Public or Private"
echo ""
echo "  2. Push this repo:"
echo "     git remote add origin https://github.com/$GITHUB_USER/$REPO_NAME.git"
echo "     git branch -M main"
echo "     git push -u origin main"
echo ""
echo "  3. Trigger a build:"
echo "     Go to: https://github.com/$GITHUB_USER/$REPO_NAME/actions"
echo "     Click 'Build Wheels' -> 'Run workflow'"
echo "     Fill in:"
echo "       git_sha:       <commit SHA from kcleal/superintervals>"
echo "       version_label: v0.3.0"
echo ""
echo "  4. Install the built wheel:"
echo "     pip install https://github.com/$GITHUB_USER/$REPO_NAME/releases/download/v0.3.0/superintervals-0.3.0-cp310-cp310-linux_x86_64.whl"
