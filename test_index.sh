#!/bin/zsh
VAULT="$HOME/Library/Mobile Documents/iCloud~md~obsidian/Documents/DENTAL_PESTA"
REPO="$HOME/Documents/GitHub/pestalozzi-intranet"
CONTENT="$REPO/content"

mkdir -p "$CONTENT"
rsync -av --delete --exclude ".obsidian/" --exclude ".DS_Store" --exclude "_templates/" "$VAULT/" "$CONTENT/"

INDEX="$CONTENT/index.md"
{
  echo "# 📚 Accueil — PESTA"
  echo
  echo "## Notes disponibles"
  echo
  find "$CONTENT" -type f -name "*.md" ! -path "*/_templates/*" ! -name "index.md" |
  sed "s|$CONTENT/||" | sort |
  while read -r file; do
    title="$(basename "$file" .md)"
    echo "- [[$title]]"
  done
} > "$INDEX"

echo "✅ index.md regénéré dans $INDEX"
