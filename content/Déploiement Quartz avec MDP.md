---
title: "Déploiement Quartz avec MDP"
project: "PESTA — Intranet"
repo: "https://github.com/cedbo26/pestalozzi-intranet"
cf_pages_url: "https://pestalozzi-intranet.pages.dev"
maintainer: "Cédric B."
contacts: ["cedbo26@hotmail.com"]
tags: ["deployment", "quartz", "cloudflare-pages", "security", "docs"]
status: "active"
version: "1.0"
last_reviewed: "2025-08-23"
type: "procédure technique"
---

## 0. Prérequis

- Repo GitHub : cedbo26/pestalozzi-intranet
    
- Quartz installé par Cloudflare au build (```npx quartz build```)
    
- Contenu Obsidian dans ```content/```
    
- Cloudflare Pages relié au repo


## 1. Structure minimale du dépôt

```
pestalozzi-intranet/
├─ content/                  # notes .md (source)
├─ public/                   # (généré par le build)
├─ functions/
│  └─ _middleware.js         # mot de passe (Basic Auth)
├─ package.json              # laissé vide ou standard
└─ (facultatif) docs/DEPLOY_PESTA.md
```

## 2. Protection par mot de passe (Basic Auth via Pages Functions)

Créer ```functions/_middleware.js``` :

```json
export const onRequest = async ({ request, next }) => {
  const USER = "pesta";
  const PASS = "ChangeMoi123!"; // ← à changer

  const auth = request.headers.get("Authorization") || "";
  const expected = "Basic " + btoa(`${USER}:${PASS}`);

  if (auth !== expected) {
    return new Response("Authentication required", {
      status: 401,
      headers: { "WWW-Authenticate": 'Basic realm="Pestalozzi Intranet"' }
    });
  }
  return next();
};
```

> 🔐 Changer PASS lors de la mise en production.
> ℹ️ Cette méthode ne dépend pas des emails/OTP (zéro galère Hotmail).


## 3. Paramètres Cloudflare Pages (une fois)


Dans **Workers & Pages → Pages → Create/Configure** le projet pestalozzi-intranet :

- **Framework preset** : ```None
    
- **Build command** : ```npx quartz build
    
- **Build output directory** : ```public
    
- **Root directory** : /
    
- Après création : **Settings → Functions** → vérifier que **Production environment functions** est **ON**.

## 4. Publication (flux quotidien)

1. Mettre à jour le contenu (Obsidian → ```content/```).
2. Commit & push :

```bash
git add -A
git commit -m "Publish: $(date '+%Y-%m-%d %H:%M')"
git push origin main
```

3. Cloudflare Pages **déploie automatiquement** (voir **Deployments**).
    
4. Site : https://pestalozzi-intranet.pages.dev
    
    → Demande **Utilisateur/Mot de passe** (```pesta``` / votre mot de passe).


## 5. Raccourci macOS (1 clic)

Créer un script ```publish_pesta.sh``` à la racine locale du repo (ou ailleurs) :

```bash
#!/bin/zsh
set -e
REPO="$HOME/Documents/GitHub/pestalozzi-intranet"
cd "$REPO"
git add -A
git commit -m "Publish: $(date '+%Y-%m-%d %H:%M')" || true
git push origin main
```

- ```chmod +x publish_pesta.sh```
    
- **Raccourcis macOS** → _Exécuter un script shell_ → pointer sur ce script.

## 6. Dépannage (rapide)

- **Pas de demande de mot de passe** : vérifier que ```functions/_middleware.js``` est **commité**, et que **Settings → Functions** (Production) est **ON**.
    
- **Logs Pages** : _Workers & Pages → Pages → pestalozzi-intranet → Deployments_
    
    - OK attendu : ```Found Functions directory at /functions puis Compiled Worker successfully```.
    
- **Erreur 403 après nettoyages** : s’assurer qu’aucune config **Zero Trust / Access** ne subsiste sur ce sous-domaine Pages.
    
- **“No functions dir … Skipping.”** : le dossier ```functions/``` n’est pas à la **racine du repo**.
  
## 7. Sécurité / bonnes pratiques

- Changer régulièrement PASS dans ```functions/_middleware.js``` (puis ```git push```).
- Ne jamais commiter des secrets réels ailleurs que dans ce fichier (ou passer ensuite aux **Environment Variables** Pages si besoin avancé).
- Si vous migrez vers un domaine custom, la protection **middleware** continue de fonctionner telle quelle.

## Annexes

### A. Commandes utiles
```bash
# Se placer dans le repo
cd "/Users/benaissa287/Documents/GitHub/pestalozzi-intranet"

# Créer/éditer le middleware
mkdir -p functions
nano functions/_middleware.js

# Publier
git add -A && git commit -m "Update" && git push origin main
```

### B. Messages de logs “sains” côté Cloudflare

- ```Found Functions directory at /functions. Uploading.```
    
- ```Compiled Worker successfully```
    
- Success: ```Your site was deployed!```

