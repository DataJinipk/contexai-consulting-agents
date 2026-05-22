#!/usr/bin/env bash
# Install the six ContexAi consulting agents into the local Claude skills directory.
set -e

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
SKILLS_SRC="$SCRIPT_DIR/skills"

# Detect platform
case "$(uname -s)" in
  Darwin) DEFAULT_TARGET="$HOME/Library/Application Support/Claude/skills" ;;
  Linux)  DEFAULT_TARGET="$HOME/.config/Claude/skills" ;;
  MINGW*|CYGWIN*|MSYS*) DEFAULT_TARGET="$APPDATA/Claude/skills" ;;
  *) DEFAULT_TARGET="$HOME/.claude/skills" ;;
esac

TARGET="${CLAUDE_SKILLS_DIR:-$DEFAULT_TARGET}"
echo "Installing skills into: $TARGET"
mkdir -p "$TARGET"

for s in prospector polymerist counsel steward operator navigator; do
  if [ -d "$SKILLS_SRC/$s" ]; then
    rm -rf "$TARGET/$s"
    cp -r "$SKILLS_SRC/$s" "$TARGET/$s"
    echo "  ✓ Installed: $s"
  else
    echo "  ✗ Missing source: $s"
  fi
done

echo ""
echo "Done. Restart Claude Desktop / Claude Code to register the new skills."
