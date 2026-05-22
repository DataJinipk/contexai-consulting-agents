#!/usr/bin/env bash
# One-line push helper. Run from inside this folder on your local machine.
#
# Prerequisites:
#   1. Install GitHub CLI:  https://cli.github.com/   (e.g. `brew install gh` on macOS,
#      `winget install GitHub.cli` on Windows, `sudo apt install gh` on Linux)
#   2. Authenticate once:   gh auth login   (browser flow, no PAT needed)
#
# Then run:   ./push_to_github.sh <repo-name>
#
# Example:    ./push_to_github.sh contexai-consulting-agents

set -e

REPO_NAME="${1:-contexai-consulting-agents}"
VISIBILITY="${2:-public}"     # public | private

echo "Repository: $REPO_NAME ($VISIBILITY)"
echo ""

# Initialize git if not already
if [ ! -d .git ]; then
  git init -b main
  git add .
  git -c user.email="amir.wahmed@gmail.com" -c user.name="Amir W. Ahmed" \
      commit -m "Initial commit — ContexAi Consulting Agents v3 (5.00/5.00 portfolio score)"
fi

# Create the repo on GitHub and push
gh repo create "$REPO_NAME" \
  --"$VISIBILITY" \
  --source=. \
  --remote=origin \
  --push \
  --description "Six specialist consulting agents for downstream oil, gas & petrochemicals — built and benchmarked by ContexAi Consultancy"

echo ""
echo "✓ Pushed to GitHub. Open the repo:"
gh repo view --web
