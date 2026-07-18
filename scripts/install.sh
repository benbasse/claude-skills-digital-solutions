#!/usr/bin/env bash
# Installs this repo's skills into ~/.claude/skills/
# Usage:
#   ./scripts/install.sh                      -> installs every category
#   ./scripts/install.sh dev security         -> installs only these categories
set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SKILLS_SRC="$REPO_DIR/skills"
DEST="${CLAUDE_SKILLS_DIR:-$HOME/.claude/skills}"

mkdir -p "$DEST"

CATEGORIES=("$@")
if [ ${#CATEGORIES[@]} -eq 0 ]; then
  CATEGORIES=(dev security design-product business-strategy marketing data)
fi

count=0
for cat in "${CATEGORIES[@]}"; do
  cat_dir="$SKILLS_SRC/$cat"
  if [ ! -d "$cat_dir" ]; then
    echo "Unknown or empty category: $cat (skipped)"
    continue
  fi
  for skill_dir in "$cat_dir"/*/; do
    skill_name="$(basename "$skill_dir")"
    cp -r "$skill_dir" "$DEST/$skill_name"
    echo "Installed: $skill_name"
    count=$((count+1))
  done
done

echo ""
echo "$count skill(s) installed in $DEST"
