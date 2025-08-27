---
title: Fonctionnement vault_python_git_cloudflare_publish
type: guide-tech
tags:
  - obsidian
  - github
  - cloudflare
  - staticrypt
  - quartz
  - ci-cd
  - node
---
## 📊 Tableau récapitulatif

| Élément        | Rôle principal                                                                 | Emplacement / Accès |
|----------------|---------------------------------------------------------------------------------|----------------------|
| **Obsidian**   | Vault source de travail (`DENTAL_PESTA`)                                        | `~/Library/Mobile Documents/iCloud~md~obsidian/Documents/DENTAL_PESTA` |
| **Script local** | Automatisation de la copie + commit + push (`publish_pesta.sh`)                | `~/Documents/GitHub/pestalozzi-intranet/publish_pesta.sh` |
| **GitHub**     | Héberge le dépôt `pestalozzi-intranet` + exécute le workflow CI/CD              | https://github.com/cedbo26/pestalozzi-intranet |
| **Workflow CI** | `.github/workflows/deploy.yml` → Build Quartz (Node 22) + Encrypt Staticrypt (Node 20) | Dans le dépôt GitHub |
| **Secrets**    | Mot de passe d’accès et tokens (ex: `STATICRYPT_PASSWORD`)                      | GitHub → Settings → Secrets & Variables |
| **Cloudflare** | Sert de proxy/publication finale sécurisée                                      | Cloudflare Pages relié au repo |

---

> [!info] **Workflow stable**
> - Quartz build sous **Node 22**  
> - Staticrypt chiffrage sous **Node 20**  
> - Vérification : recherche des marqueurs `staticrypt-html`  
> - Déploiement GitHub Pages → Cloudflare

> [!tip] **Changer le mot de passe**
> Modifier `STATICRYPT_PASSWORD` dans GitHub (Settings → Secrets).  
> Le prochain push déclenchera un build avec le **nouveau mot de passe**.

> [!warning] **À surveiller**
> - Ne pas supprimer le secret `STATICRYPT_PASSWORD`  
> - Ne pas repasser tout en Node 22 (Staticrypt planterait)  
> - Vérifier que `encrypted/` reste bien ignoré (`.gitignore`)  

## 📂 Fonctionnement général du Vault
- **Vault source** :  
  `/Users/benaissa287/Library/Mobile Documents/iCloud~md~obsidian/Documents/DENTAL_PESTA`
- **Destination GitHub local** :  
  `/Users/benaissa287/Documents/GitHub/pestalozzi-intranet/content`
- Le contenu est **synchronisé** via le script `publish_pesta.sh`, puis poussé sur GitHub.
- Déclenche ensuite le workflow **GitHub Actions** → build Quartz → chiffrement Staticrypt → publication sur **GitHub Pages** (relayé par **Cloudflare**).

---

## ⚡ Script de publication (`publish_pesta.sh`)
- **Emplacement** :  
  `/Users/benaissa287/Documents/GitHub/pestalozzi-intranet/publish_pesta.sh`
- **Rôle** :  
  1. Copie le contenu du Vault vers `content/`  
  2. Synchronise le dépôt avec GitHub (pull --rebase)  
  3. Crée un commit (avec tampon `.ci/last_publish`)  
  4. Push sur `main` → déclenchement du workflow  
  5. Affiche une notification macOS de succès/échec  
- **Activation** :  
  - Soit en Terminal :  
    ```bash
    zsh ~/Documents/GitHub/pestalozzi-intranet/publish_pesta.sh
    ```
  - Soit via le **Raccourci Mac** nommé `Publish Pesta`.

### Script version 250827
```python
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
```
---

## 🔗 Interactions GitHub ↔ Cloudflare
- **GitHub** : héberge le repo `pestalozzi-intranet`  
- **Actions** : `.github/workflows/deploy.yml`  
  - Étapes :
    - Build Quartz avec **Node 22** (obligatoire pour Quartz 4.5.x)  
    - Switch en **Node 20** pour Staticrypt (compatibilité)  
    - Chiffre les fichiers HTML avec le secret `STATICRYPT_PASSWORD`  
    - Vérifie que l’index est bien protégé  
    - Déploie sur GitHub Pages  
- **Cloudflare** : se connecte à GitHub Pages pour publier le site sécurisé.

---

## 🔒 Changement de mot de passe du site
1. Aller dans **GitHub 
   → Repo `pestalozzi-intranet` 
   → Settings 
   → Secrets and variables 
   → Actions**  
2. Modifier la valeur du secret :  
   - `STATICRYPT_PASSWORD`  
3. Sauvegarder → le prochain push déclenchera un build avec le **nouveau mot de passe**.  
👉 Aucune modif du script n’est nécessaire.

---

## ⚙️ Versions & dépendances
- **Node.js** :
  - `22.x` pour **Quartz** (build)  
  - `20.x` pour **Staticrypt** (encryption)  
- **Staticrypt** :
  - Version utilisée : `3.5.4` (installée dans le workflow avec `npm i -g staticrypt@3.5.4`)  
- **Quartz** :
  - Version actuelle : `4.5.x` (build via `npx quartz build`)  
- **Secrets requis** :
  - `STATICRYPT_PASSWORD` → mot de passe du site  
  - `CLOUDFLARE_API_TOKEN` (si déploiement direct Cloudflare Workers)

---

## 🛠️ Procédure de déploiement
1. Travailler dans Obsidian (Vault `DENTAL_PESTA`).  
2. Lancer le raccourci **Publish Pesta**.  
3. Vérifier dans GitHub → **Actions** que le run démarre.  
4. Attendre le check vert ✅ → le site est déployé via Cloudflare.  
5. Tester le lien public (mot de passe requis).

---

## 📌 À retenir
- Le déploiement est **stable** tant que :  
  - Les versions Node (22 pour Quartz, 20 pour Staticrypt) sont respectées.  
  - Le secret `STATICRYPT_PASSWORD` est présent.  
  - Le script `publish_pesta.sh` est utilisé.  
- En cas de problème, vérifier les **logs GitHub Actions** (étape “Encrypt ALL HTML…” ou “Verify encryption…”).  

---

### 🔗 Liens internes
- [[Déploiement Quartz avec MDP]]


