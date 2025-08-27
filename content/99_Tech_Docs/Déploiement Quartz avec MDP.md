---
title: 🌐 Déploiement Quartz (avec mot de passe)
type: guide-tech
tags:
  - github-actions
  - quartz
  - staticrypt
  - ci-cd
  - cloudflare
---
# 🌐 Déploiement Quartz protégé par mot de passe

## 📂 Rôle de cette note
> [!info]  
> Cette note documente **le workflow GitHub Actions** qui construit, chiffre et déploie le site Quartz protégé par mot de passe.  
> Elle complète la note [[Fonctionnement vault_python_git_cloudflare_publish]] (centrée sur le script local et le raccourci Mac).

---

## 🔗 Chaîne de déploiement

| Étape        | Technologie    | Version / Détails                              |
| ------------ | -------------- | ---------------------------------------------- |
| Build Quartz | Node.js        | **22.x** (requis par Quartz 4.5.x)             |
| Encryption   | Staticrypt     | **3.5.4**, exécuté avec Node **20.x** (compat) |
| CI/CD        | GitHub Actions | `.github/workflows/deploy.yml`                 |
| Publication  | GitHub Pages   | Output du workflow                             |
| Proxy        | Cloudflare     | Sert le site public sécurisé                   |
> [!info] 🔎 Qu’est-ce que CI/CD ?
> **CI/CD** = *Continuous Integration / Continuous Deployment*.  
> - **CI (Intégration Continue)** : à chaque push, GitHub reconstruit le site (Quartz) et exécute les vérifications.  
> - **CD (Déploiement Continu)** : une fois construit et chiffré, le site est automatiquement publié sur **GitHub Pages**, puis servi via **Cloudflare**.  
> 👉 En clair : **chaque commit déclenche automatiquement un nouveau site en ligne, protégé par mot de passe.**

---

## ⚙️ Fonctionnement du workflow

> [!note] Étapes principales
> 1. **Checkout** → récupère le code.  
> 2. **Build Quartz** (Node 22).  
> 3. **Switch Node 20** pour Staticrypt.  
> 4. **Chiffrement** de tous les fichiers HTML.  
> 5. **Vérification** des marqueurs Staticrypt.  
> 6. **Déploiement** sur GitHub Pages, relayé par Cloudflare.

---

## 🔒 Secrets utilisés
> [!tip] **Secrets à vérifier dans GitHub → Settings → Secrets and variables**
> - `STATICRYPT_PASSWORD` → mot de passe du site  
> - (si utilisé) `CLOUDFLARE_API_TOKEN`  

---

## 🔑 Changement de mot de passe
> [!warning] Procédure
> 1. Aller dans GitHub → repo → **Settings → Secrets and variables → Actions**.  
> 2. Modifier `STATICRYPT_PASSWORD`.  
> 3. Pousser une nouvelle publication (via le script `publish_pesta.sh`).  
> 4. Le nouveau mot de passe sera actif après le build.

---

## 🛠️ Maintenance
> [!example] Points de vigilance
> - Ne jamais supprimer les secrets.  
> - Toujours garder la distinction Node 22 (Quartz) / Node 20 (Staticrypt).  
> - Vérifier que `encrypted/` est ignoré dans `.gitignore`.  
> - Consulter les logs GitHub Actions en cas d’échec (étape “Encrypt…” ou “Verify…”).  

---

## 🔗 Liens internes
- [[Fonctionnement vault_python_git_cloudflare_publish]]
- [[🌐 Publication_DENTAL_PESTA]]