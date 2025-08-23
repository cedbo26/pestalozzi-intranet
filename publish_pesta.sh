#!/bin/zsh
set -euo pipefail

VAULT="$HOME/Library/Mobile Documents/iCloud~md~obsidian/Documents/DENTAL_PESTA"
REPO="$HOME/Documents/GitHub/pestalozzi-intranet"
CONTENT="$REPO/content"

mkdir -p "$CONTENT"
rsync -av --delete \
  --exclude ".obsidian/" \
  --exclude ".DS_Store" \
  "$VAULT/" "$CONTENT/"

cd "$REPO"
git add -A
git commit -m "Publish: $(date '+%Y-%m-%d %H:%M')" || true
git push origin main
echo "✅ PESTA publié. Cloudflare déploie…"
