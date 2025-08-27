---
title: "Dentagest – Architecture & Évolutions"
type: "IT_App"
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