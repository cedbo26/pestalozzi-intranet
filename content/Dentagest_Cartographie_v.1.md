---
title: "Cartographie – Fonctionnement Dentagest & APEX"
projet: Pestalozzi
date: 2025-09-24
tags:
  - dentagest
  - apex
  - flux
  - imagerie
  - infrastructure
backlinks:
  - [[🧭 Synthèse IT]]
  - [[Migration Dentagest – Offre AEA-250825-033]]
  - [[💰 Billing process]]
---

# 🦷 Cartographie – Dentagest & APEX

> [!info] Contexte  
> Dentagest est l’ERP dentaire du cabinet Pestalozzi.  
> Il repose sur un **serveur 4D** (base de données et logique applicative) et sur plusieurs modules satellites (exports, imagerie).  
> **APEX** est un logiciel annexe gérant des graphes cliniques et de l’imagerie, connecté indirectement à Dentagest.

---

## ⚙️ Composants identifiés

### 1. **Dentagest (cœur du système)**
- Moteur : **4D Server** (`DentaGest Server`).  
- Clients : **logiciel lourd Windows** installé sur chaque poste (`C:\DentaGest_Client`).  
- Données principales : patientèle, actes, devis, factures, historique.  
- Exports :  
  - **CMD** (recouvrement) → `P:\DG_Export_CMD` (XML).  
  - **Documents patients** → `P:\DG_Doc` / `Docs` (PDF, lettres, ordonnances).  
- Photos : `DG_Photo` (par patient, dossiers numérotés).

### 2. **APEX (module satellite)**
- Dossier : `C:\W-Apex\`.  
- Contenus : graphes parodontaux, images BMP, fichiers propriétaires (`.DAT`, `.CNT`, `.BEH`, `.POS`).  
- Sert d’outil visuel et complément clinique (imagerie, parodontologie).  
- Lié à Dentagest par intégration fonctionnelle, pas au niveau base.

### 3. **Autres partages réseau**
- `dfw_archives (M:)` → anciennes archives et sauvegardes manuelles.  
- `Transferts (T:)` → zone temporaire (installateurs, migrations).  

---

## 📂 Flux de données

```mermaid
flowchart TD

  subgraph Dentagest["Dentagest – Serveur 4D"]
    DB[Base 4D – patients, actes, factures]
    Client["Clients Windows Dentagest"]
  end

  subgraph DG_Partage["P: DG_Partage"]
    Docs["Docs/DG_Doc – PDF, lettres, ordonnances"]
    ExportCMD["DG_Export_CMD – Fichiers XML CMD"]
    Photos["DG_Photo – Photos patients"]
  end

  subgraph APEX["C: W-Apex (imagerie)"]
    Graphs["Graphs / Paro"]
    Images["BMP, DAT, CNT, BEH"]
  end

  Client <--> DB
  DB --> Docs
  DB --> ExportCMD
  DB --> Photos

  Client -. ouvre .-> APEX
  APEX --> Graphs
  APEX --> Images
  ```

## 🔐 Sauvegardes
- Répertoires internes : `C:\W-Apex\Backup` & `Backup_files`.  
- Pas de tâche planifiée Windows clairement identifiée pour Dentagest → sauvegardes probablement **manuelles** ou via l’outil intégré **4D**.  
- ⚠️ La sauvegarde doit impérativement couvrir :  
  - La **base 4D Dentagest**.  
  - Les dossiers partagés **DG_Partage** (Docs, Exports, Photos).  
  - Le dossier **W-Apex** (imagerie).  

---

## 📌 Points critiques
> [!warning] Observations
> - Mélange entre données structurées (base 4D) et fichiers annexes (PDF, XML, images).  
> - Les dossiers numérotés dans `DG_Partage\Docs` correspondent à des patients → contiennent souvent des PDF (lettres, ordonnances, publipostages).  
> - `DG_Photo` semble peu alimenté (beaucoup de dossiers vides).  
> - `W-Apex` utilise un **format propriétaire non standard**.  
> - Risque de perte documentaire si les sauvegardes ne couvrent pas **tous les répertoires**.  

---

## 🎯 Prochaines étapes
1. Vérifier la **méthode de sauvegarde officielle** de Dentagest (intégrée 4D vs scripts externes).  
2. Clarifier le lien fonctionnel **Dentagest ↔ APEX** (comment s’opère l’échange de données).  
3. Confirmer avec le technicien lors de la migration :  
   - Localisation des fichiers `.4DD` / `.4DInd` (base Dentagest).  
   - Processus de **restauration complet**.  
   - Intégration **Digora** (non encore cartographiée).  
1. Définir une stratégie pour la **digitalisation documentaire** (Nextcloud / OneDrive).  

