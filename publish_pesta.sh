#!/usr/bin/env zsh
set -euo pipefail

VAULT="$HOME/Library/Mobile Documents/iCloud~md~obsidian/Documents/DENTAL_PESTA"
REPO="$HOME/Documents/GitHub/pestalozzi-intranet"
CONTENT="$REPO/content"
TRIGGER="$REPO/.ci/last_publish"

notify_ok()   { osascript -e 'display notification "Publication terminée ✅" with title "DENTAL_PESTA"'; }
notify_fail() { osascript -e 'display notification "Erreur lors de la publication ❌" with title "DENTAL_PESTA"'; }
trap notify_fail ERR

mkdir -p "$CONTENT" "$REPO/.ci"

# 1) Sync du vault → repo/content
rsync -av --delete --exclude ".obsidian/" --exclude ".DS_Store" "$VAULT/" "$CONTENT/"

# 2) Git: se synchroniser avant de pousser
cd "$REPO"
[ -f .git/index.lock ] && rm -f .git/index.lock
git fetch origin
git pull --rebase --autostash origin main

# 3) Forcer un petit diff à chaque run (déclenche l'Action même sans changement)
date +"%F %T" > "$TRIGGER"

# 4) Commit non-interactif + push
git add -A
git -c core.editor=true commit -m "publish: $(date '+%Y-%m-%d %H:%M:%S')" || echo "ℹ️ Rien à committer"
git push origin main

notify_ok
echo "✅ Push effectué — GitHub Actions va déployer."