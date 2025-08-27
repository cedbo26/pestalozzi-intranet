---
title: Dentagest
type: IT_App
projet: Pestalozzi
date: 2025-08-31
consultant: Cedric
statut: en attente réponse Dentagest
tags:
  - dentagest
  - infrastructure
  - sauvegarde
  - billing
backlinks:
  - Infrastructure IT
  - 🧭 Synthèse IT
  - 🖥️ Fonctionnement IT – Mélissa
  - 💰 Billing process
---

> [!success] Ce qu’on sait déjà
>
> ### 🔧 Infrastructure technique
> - Serveur local **Windows Storage Server 2012 R2**  
> - Protégé par **onduleur APC Back-UPS CS 500**  
> - Sert de **base de données Dentagest** + hébergement de l’imagerie **Digora**  
> - **Postes clients** connectés via ce serveur (mode exact à préciser)  
> - Consigne : **serveur allumé en permanence**  
> - Accès externe parfois via **TeamViewer**  
>
> ### 💾 Sauvegardes & stockage
> - Méthode actuelle **non documentée**  
> - Documents patients dispersés (Dentagest, Digora, PC Mélissa, papier)  
> - Pas de **plan PRA** identifié  
>
> ### 💰 Facturation & flux
> - Facturation **générée via Dentagest** (patients privés, CMD, assurances, aide sociale)  
> - Voir : [[💰 Billing process]]  
> - Suivi paiements partiellement confié à CMD  
> - Flux hétérogènes (XML + papier)  
>
> ### 🔐 Accès & sécurité
> - Session **administrateur** Dentagest existante (Melissa seule)  
> - Autres sessions pour médecins / assistantes  
> - Collaborateurs RDL4 parfois accès (patients partagés)  
> - Ordinateur principal : **mot de passe non verrouillé automatiquement**, sessions partagées  

---

## 📤 Questions envoyées à Dentagest (31.07.2025)

### 1. Architecture actuelle
- Rôle exact du serveur (DB, services annexes)  
- Mode de connexion des postes clients  
- Autres services hébergés ?  

### 2. Sauvegardes
- Méthode, fréquence, emplacement  
- Procédure de restauration  
- Compatibilité sauvegarde cloud ?  

### 3. Fonctionnement continu
- Raison de la consigne “serveur toujours allumé”  
- Accès distant support ?  
- Traitements nocturnes (batch, sync) ?  

### 4. Options d’évolution
- Conditions/coûts hébergement **Cloud Dentagest**  
- Conditions/coûts **nouveau serveur physique**  
- Recommandations officielles remplacement **WSS2012R2 (EoL)**  

Mail brut
>[!Quote]
> Bonjour M. Gerber,
> 
> Dans le cadre d’une mise à niveau de l’infrastructure informatique du cabinet dentaire de Mme Behar, je souhaite comprendre précisément comment Dentagest est basé et intégré dans l’environnement informatique du cabinet.
> 
> À ce stade, j’ai identifié que Dentagest est installé sur un **serveur local** sous **Windows Storage Server 2012 R2**, protégé par un onduleur **APC Back‑UPS CS 500**. Ce serveur semble centraliser la base de données Dentagest et répondre aux requêtes des postes clients du cabinet.  
> Mme Behar m’a également indiqué avoir reçu pour consigne de _laisser cette machine allumée en permanence_.
> 
> Pour avoir une vision claire et pouvoir structurer mes actions sur les autres services IT, pourriez-vous m’indiquer :
> 
> 1. **Architecture actuelle**
>     
>     - Rôle exact du serveur dans le fonctionnement de Dentagest (base de données, services annexes)
>         
>     - Mode de connexion des postes clients
>         
>     - Si d’autres services que Dentagest y sont hébergés
>         
> 2. **Sauvegardes**
>     
>     - Méthode, fréquence et emplacement des sauvegardes
>         
>     - Procédure standard de restauration
>         
>     - Possibilité et compatibilité pour mise en place d’une sauvegarde cloud
>         
> 3. **Fonctionnement continu**
>     
>     - Raison technique exacte de la consigne “serveur toujours allumé”
>         
>     - Accès à distance par votre support technique ?
>         
>     - Traitements ou synchronisations nocturnes spécifiques ?
>         
> 4. **Options d’évolution**
>     
>     - Conditions et coûts pour un hébergement cloud Dentagest
>         
>     - Conditions et coûts pour migrer vers un nouveau serveur physique au cabinet
>         
>     - Recommandations officielles Dentagest pour le remplacement d’un serveur Windows Storage Server 2012 R2 (fin de support Microsoft depuis octobre 2023)
>         
> 
> Ces précisions me permettront d’intégrer Dentagest dans mon analyse globale de l’infrastructure et d’anticiper les évolutions possibles.
> 
> Je reste bien sûr disponible pour un échange téléphonique si cela vous semble plus efficace.
> 
>   
> 
> Bien cordialement, 
> 
>    
> 
>   
> **Cédric Bodoira**  
> Consulting  
> [c.bodoira@fiduworld.ch](mailto:c.bodoira@fiduworld.ch)  
>   
> Mobile +41 79 813 67 00



---

> [!warning] ⏳ Réponses attendues
>
> | Thème            | Réponse attendue |
> |------------------|------------------|
> | Architecture serveur | Description précise rôles/services |
> | Connexion postes clients | Méthode exacte (LAN, protocole, licences) |
> | Sauvegardes | Procédure et fréquence |
> | Restauration | Détails procédure |
> | Hébergement Cloud | Conditions + tarifs |
> | Nouveau serveur | Conditions + tarifs |
> | Recommandations officielles | Face à obsolescence 2012 R2 |

---

## ⚠️ Risques immédiats
- ❌ OS serveur obsolète (EoL Microsoft octobre 2023)  
- ❌ Dépendance au serveur Duc (pas de maîtrise interne)  
- ❌ Sauvegardes inconnues → risque perte données patientèle / facturation  
- ❌ Accès informels (TeamViewer, RDL4) → confidentialité non garantie  

---

## 🎯 Étapes prochaines
1. Attendre réponse Dentagest (mail du 31.07.2025)  
2. Compléter tableau **Réponses attendues**  
3. Audit sauvegardes + PRA  
4. Comparer scénarios **Cloud vs serveur physique**  
5. Intégrer coûts dans **plan de reprise Pestalozzi (horizon 2027)**  

---

## 🔗 Liens
- [[Infrastructure IT]]  
- [[🧭 Synthèse IT]]  
- [[🖥️ Fonctionnement IT – Mélissa]]  
- [[💰 Billing process]]