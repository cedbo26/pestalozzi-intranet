#!/usr/bin/env zsh
set -euo pipefail

VAULT="$HOME/Library/Mobile Documents/iCloud~md~obsidian/Documents/DENTAL_PESTA"
REPO="$HOME/Documents/GitHub/pestalozzi-intranet"
CONTENT="$REPO/content"

notify_ok()   { osascript -e 'display notification "Publication terminée ✅" with title "DENTAL_PESTA"'; }
notify_fail() { osascript -e 'display notification "Erreur lors de la publication ❌" with title "DENTAL_PESTA"'; }
trap notify_fail ERR

# 1) Sync contenu
mkdir -p "$CONTENT"
rsync -av --delete --exclude ".obsidian/" --exclude ".DS_Store" "$VAULT/" "$CONTENT/"

# 2) Git: sync → commit → push
cd "$REPO"
[ -f .git/index.lock ] && rm -f .git/index.lock               # évite les verrous orphelins
git fetch origin                                              # récupère les commits distants
git pull --rebase --autostash origin main                     # intègre avant de pousser

git add -A
git -c core.editor=true commit -m "publish: $(date '+%Y-%m-%d %H:%M:%S')" || echo "ℹ️ Rien à committer"
git push origin main

notify_ok