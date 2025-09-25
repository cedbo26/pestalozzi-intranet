---
title: Cartographie – Fonctionnement Dentagest & APEX (v.2)
projet: Pestalozzi
date: 2025-09-24
tags:
  - dentagest
  - apex
  - flux
  - imagerie
  - infrastructure
version: 2
---

# 🦷 Cartographie – Dentagest & APEX (v.2)

> [!info] Contexte  
> Dentagest est l’ERP dentaire du cabinet Pestalozzi.  
> Il repose sur une architecture **client/serveur 4D** (base de données 4D Server, clients lourds Windows).  
> **APEX** est un module satellite gérant des graphes cliniques et de l’imagerie, avec un format propriétaire.  
> Plusieurs partages réseau complètent la structure (exports, documents patients, photos).

---

## ⚙️ Composants identifiés

### 1. **Dentagest (cœur du système)**
- **Moteur** : **4D Server** (`DentaGest Server`).  
- **Connexion client** : via TCP/IP sur **port 19813**, par nom réseau ou adresse IP.  
- **Clients** : installés sur chaque poste (`C:\DentaGest_Client`), avec bibliothèques 4D (`DB4D.dll`, `SQLConnector.dll`).  
- **Données principales** : patientèle, actes, devis, factures, historique.  
- **Exports** :  
  - `DG_Export_CMD` → fichiers **XML** pour CMD (recouvrement).  
  - `DG_Doc` / `Docs` → dossiers numérotés par patient contenant des **PDF** (lettres, ordonnances, publipostages).  
  - `DG_Photo` → dossiers numérotés pour photos patients (peu alimentés).  

### 2. **APEX (module satellite imagerie)**
- Répertoire : `C:\W-Apex\`.  
- Contenus :  
  - Graphes parodontaux, images BMP.  
  - Fichiers propriétaires : `.DAT`, `.CNT`, `.POS`, `.BEH`, `.TXT`.  
- Rôle : outil d’imagerie / visualisation clinique, indépendant mais consultable depuis Dentagest.  
- Sauvegardes internes : dossiers `C:\W-Apex\Backup` et `Backup_files`.  

### 3. **Autres partages réseau**
- `dfw_archives (M:)` → archives anciennes, sauvegardes manuelles.  
- `Transferts (T:)` → zone temporaire pour installateurs et migrations.  

---

## 📂 Flux de données

```mermaid
flowchart TD

  subgraph Dentagest["Dentagest – 4D Server"]
    DB[Base 4D – patients, actes, factures]
    Client["Clients Windows (port 19813)"]
  end

  subgraph DG_Partage["P: DG_Partage"]
    Docs["Docs/DG_Doc – PDF, lettres, ordonnances"]
    ExportCMD["DG_Export_CMD – Fichiers XML CMD"]
    Photos["DG_Photo – Photos patients (peu alimenté)"]
  end

  subgraph APEX["C: W-Apex (imagerie)"]
    Graphs["Graphs / Paro"]
    Images["BMP, DAT, CNT, BEH, POS"]
    Backups["Backup / Backup_files"]
  end

  Client <--> DB
  DB --> Docs
  DB --> ExportCMD
  DB --> Photos

  Client -. ouvre .-> APEX
  APEX --> Graphs
  APEX --> Images
  APEX --> Backups
  ```


## 🔐 Sauvegardes
- Répertoires internes : `C:\W-Apex\Backup` & `Backup_files`.  
- Pas de tâche planifiée Windows spécifique à Dentagest → sauvegardes probablement **manuelles** ou via outil intégré **4D**.  
- ⚠️ Une sauvegarde fiable doit couvrir :  
  - La base **4D Dentagest** (`.4DD`, `.4DInd`, `.4DR`).  
  - Les dossiers partagés **DG_Partage** (Docs, Exports, Photos).  
  - Le dossier **W-Apex** (imagerie).  

---

## 📌 Points critiques
> [!warning] Observations
> - Mélange entre données structurées (base 4D) et fichiers annexes (PDF, XML, images).  
> - `DG_Partage\Docs` : chaque dossier numéroté = patient → contient des documents générés automatiquement par Dentagest.  
> - `DG_Photo` existe mais est peu utilisé (beaucoup de dossiers vides).  
> - `W-Apex` repose sur un **format propriétaire non standard**.  
> - Risque de perte documentaire si les sauvegardes ne couvrent pas **tous les répertoires**.  

---

## 🎯 Prochaines étapes
1. Vérifier la **méthode de sauvegarde officielle** de Dentagest (intégrée 4D vs scripts externes).  
2. Clarifier le lien fonctionnel **Dentagest ↔ APEX** (comment les données circulent).  
3. Confirmer avec le technicien lors de la migration :  
   - Localisation des fichiers `.4DD` / `.4DInd` (base 4D).  
   - Processus de **restauration complet**.  
   - Intégration **Digora** (imagerie radiologique, non encore cartographiée).  
4. Définir une stratégie pour la **digitalisation documentaire** (Nextcloud / OneDrive).  
