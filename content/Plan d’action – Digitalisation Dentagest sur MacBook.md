---
title: "Plan d’action – Digitalisation Dentagest sur MacBook"
projet: Pestalozzi
auteur: Cedric
date: 2025-09-24
tags:
  - dentagest
  - digitalisation
  - macbook
  - infrastructure
---

# 🚀 Plan d’action – Digitalisation Dentagest pour Mélissa

> [!info] Contexte  
> Mélissa souhaite gérer le **cabinet dentaire** depuis son **MacBook Pro** récent.  
> Objectif : utiliser Dentagest (logiciel Windows), tout en fluidifiant la **gestion documentaire** et la **sécurité**, afin de travailler depuis n’importe où (bureau, domicile, terrasse).

---

## 🖥️ 1. Exécution de Dentagest sur Mac
- **Option retenue** :  
  - Installer **Parallels Desktop** → machine virtuelle **Windows 11 Pro ARM**.  
  - Installer **Dentagest** sur la VM (client) + configurer accès serveur Dr Duc via **RDP**.  
- Avantages :  
  - Autonomie locale sur MacBook.  
  - Accès distant au serveur si nécessaire.  
- Étapes :  
  1. Acheter licence Parallels + Windows 11 Pro.  
  2. Créer VM optimisée (RAM + CPU dédiés).  
  3. Installer Dentagest client + configurer connexion serveur.  

---

## 📂 2. Gestion documentaire
- **Centralisation via Nextcloud / OneDrive**.  
- Workflows :  
  - 📑 Factures / devis générés par Dentagest → export automatique vers cloud.  
  - 📷 Documents annexes (scans, anamnèses, consentements) → numérisation directe vers cloud.  
  - 🔗 Partage sécurisé : lien Nextcloud aux patients, assurances, partenaires.  
- Étapes :  
  1. Configurer export automatique Dentagest vers dossier cloud.  
  2. Installer client Nextcloud sur Mac & VM.  
  3. Définir arborescence patient/année.  

---

## 🔐 3. Sécurité
- Sur MacBook Pro :  
  - Activer **FileVault** (chiffrement disque).  
  - Verrouillage automatique (≤ 10 min).  
- Sur VM Windows :  
  - Authentification forte (MFA).  
  - Sauvegardes chiffrées (dump SQL, exports).  
- Étapes :  
  1. Paramétrer FileVault + verrouillage.  
  2. Installer Microsoft Authenticator sur iPhone.  
  3. Valider procédures de backup régulier Dentagest.  

---

## 📊 4. Digitalisation patient
- Passage au **formulaire numérique** :  
  - iPad / tablette à l’accueil.  
## Nextcloud Forms ou Google Forms relié.  
- Consentements & devis → **signature électronique** (Swisscom / Dokobit).  
- Agenda synchronisé Dentagest ↔ OneDoc ↔ iCal.  
- Étapes :  
  1. Créer modèles de formulaires patients (FR/DE).  
  2. Tester flux : remplissage tablette → PDF stocké cloud.  
  3. Déployer signature électronique validée.  

---

## 🎯 5. Workflow cible
```mermaid
flowchart LR
  Patient -->|Formulaire numérique| Cloud[Cloud documentaire]
  Dentagest -->|Factures/Devis exports| Cloud
  Cloud -->|Lien sécurisé| Patient
  Dentagest --> Digora[Imagerie radios]
  MacBook -->|Parallels Windows 11| Dentagest
  MacBook -->|Accès direct| Cloud
  MacBook --> Agenda[iCal / OneDoc]