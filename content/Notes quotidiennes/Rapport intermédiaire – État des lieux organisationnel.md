---
title: Déploiement Quartz avec MDP
project: PESTA — Intranet
repo: https://github.com/cedbo26/pestalozzi-intranet
cf_pages_url: https://pestalozzi-intranet.pages.dev
maintainer: Cédric B.
contacts:
  - cedbo26@hotmail.com
tags:
  - deployment
  - quartz
  - cloudflare-pages
  - security
  - docs
status: active
version: "1.0"
last_reviewed: 2025-08-23
type: procédure technique
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

- **Framework preset** : ```None```
    
- **Build command** : ```npx quartz build```
    
- **Build output directory** : ```public```
    
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

# 
*Cabinet Dentaire Pestalozzi – Août 2025*  
*Consultant : [CB]*

---

## 📌 Contexte global

Depuis environ 6 mois, le **Cabinet Dentaire Pestalozzi** (Melissa) partage ses locaux avec le **Cabinet Dentaire du Lac (RDL4)**, propriété du **Dr Richard Duc**.  
Un accord **oral** prévoit que Melissa reprenne progressivement le cabinet et l’équipe de Duc **d’ici fin 2027**.  
Actuellement, chaque entité conserve sa propre patientèle, ses encaissements et son matériel.

---

## 📍 [[Organigramme]]

### **Cabinet Pestalozzi (Melissa)**

- **Melissa**  
  Propriétaire – Assistante dentaire  
  Taux d’activité : ~100%  
  Jours travaillés : tous les jours ouvrables

- **Dr Aldo Allo**  
  Dentiste – rémunéré à 35% du CA  
  Taux d’activité : 60%  
  Jours travaillés : lundi, mardi, jeudi

- **Laurie Willommet**  
  Hygiéniste  
  Taux d’activité : 30%  
  Jours travaillés : mardi + mercredi matin

- **Medina**  
  Assistante dentaire CFC  
  Taux d’activité : 40%  
  Jours travaillés : variables

---

### **Cabinet du Lac (Dr Duc)**

- **Dr Richard Duc**  
  Dentiste  
  Taux d’activité : 40%  
  Jours travaillés : lundi, vendredi

- **Dr Aldo Allo**  
  Dentiste (également employé par Cabinet Pestalozzi)  
  Taux d’activité : 40%  
  Jours travaillés : mercredi, vendredi

- **Chloé**  
  Assistante dentaire  
  Taux d’activité : 90%  
  Jours travaillés : non précisés

- **Valérie**  
  Assistante dentaire  
  Taux d’activité : 40%  
  Jours travaillés : 2 jours/semaine

- **Marise**  
  Hygiéniste  
  Taux d’activité : ~60%  
  Jours travaillés : non précisés

- **Sarah**  
  Hygiéniste  
  Taux d’activité : ~40–45%  
  Jours travaillés : non précisés

- **Sylviane**  
  Soutien administratif (épouse du Dr Duc)  
  Taux d’activité : non précisé  
  Jours travaillés : non précisés

---

## **Règles de partage**

- **Loyer et charges communes**  
  50% chacun

- **Maintenance matériel commun**  
  50% chacun

- **Consommables**  
  Gestion séparée

- **Patientèle / facturation**  
  Totalement séparées

---

## 📂 Organisation documentaire

### **Stockage identifié**

- **Documents administratifs**  
  Ordinateur Melissa, dossiers papier

- **Imagerie**  
  Digora (lié à Dentagest)

- **Logiciels**  
  Dentagest pour la gestion patients et actes

- **Courrier entrant**  
  Traitement manuel, classement non automatisé

---

### **Archivage**

- **Archivage automatisé**  
  Aucun système complet en place

- **Emails**  
  Stockés dans dossiers de messagerie (Bluewin + info@)

- **Archivage long terme**  
  Non formalisé

---

## 💬 Communication

- **Moyens utilisés**  
  Email, téléphone, SMS, courrier

- **Emails principaux**  
  info@cabinet-dentaire-pestalozzi.ch  
  Adresse Bluewin

- **Accès mails**  
  Melissa + dentiste

- **Observation**  
  Échanges souvent par téléphone, ce qui limite la traçabilité

---

## 💰 Facturation

- **Flux identifiés**  
  Patients privés  
  CMD (Caisse des Médecins)  
  Assurances  
  Aide sociale

- **Observations**  
  Process différencié selon le type de patient  
  Délai, suivi et relance peu documentés  
  Pas clair si Dentagest est relié automatiquement à CMD et assurances

---

## ⚠ Zones d’ombre à éclaircir

### **Organisation documentaire**
- **Structure interne Dentagest**  
  Non précisée
- **Archivage numérique systématique**  
  À confirmer
- **Responsable numérisation/classement**  
  Non défini
- **Sauvegardes régulières**  
  À confirmer

### **Facturation**
- **Délais de paiement standards**  
  Non précisés
- **Gestion et fréquence des relances**  
  Non documentées
- **Validation des devis**  
  À clarifier
- **Tableau de suivi des paiements**  
  Inexistant ou incomplet
- **Liaison technique avec CMD/assurances**  
  À confirmer

### **Communication**
- **Centralisation des échanges patients**  
  Non mise en place
- **Suivi des appels téléphoniques**  
  Pas de système formel
- **Gestion mails/appels en cas d’absence**  
  Non défini

### **Infrastructure**
- **État du serveur Dentagest**  
  À évaluer
- **Plan de reprise après sinistre**  
  Non existant
- **Inventaire des postes connectés**  
  Non documenté

---

## ✅ Recommandations immédiates

1. **Préparer un formulaire complémentaire** structuré en 4 parties :  
   - Organisation documentaire  
   - Facturation  
   - Communication  
   - Infrastructure

2. **Mettre en place une cartographie** claire du flux patient → facturation → encaissement

3. **Centraliser les communications** patients (idéalement via Dentagest)

4. **Planifier la sauvegarde et l’archivage** :  
   - Automatisation possible  
   - Sauvegarde externe

---

## 📅 Étapes suivantes

- [ ] Envoyer le formulaire complémentaire à Melissa  
- [ ] Consolider les réponses et intégrer au rapport  
- [ ] Préparer la stratégie de reprise progressive du cabinet Duc  
- [ ] Définir le plan de transition organisationnelle à horizon 2027