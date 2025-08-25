---
title: "Processus de facturation"
form_id: facturation_cdp
category: analyse_questionnaire
date_reception: 2025-07-30
consultant: Cedric
respondant: Melissa
source: Formspree
tags:
  - IT
  - facturation
  - dentagest
  - pestalozzi
backlinks:
  - Facturation_1
  - 🧭 Synthèse IT – Cabinet Pestalozzi
---

## 🔎 Diagnostic express
- 🦷 **Dentagest central** : utilisé pour les prestations, commandes, relevés CMD 
  *→ bonne intégration de base.*  
- 📦 **Envoi des commandes** : XML via Dentagest, mensuel 
  *→ structuré, mais dépendance au logiciel.*  
- 📑 **Prestations patients privés (PP)** : traitées à la fois via Dentagest & papier 
  *→ duplication des supports.*  
- 📮 **Factures assurances / société CMD** : acheminées de manière hétérogène, parfois papier, parfois intégré 
  *→ peu standardisé.*  
- 🧾 **Suivi des impayés** : confié à CMD en recouvrement, mais avec exceptions (“si créance rachetée”) 
  *→ pas de règle unique.*  
- ⏳ **Délais paiements** : variables, non monitorés 
  *→ absence de pilotage de trésorerie.*  

---

## ⚠️ Risques identifiés
> [!danger]  
> - 🔄 **Double flux** (Dentagest + papier) 
>   → erreurs et perte de cohérence.  
> - 🕳️ **Suivi impayés dépendant de CMD** 
>   *→ peu de maîtrise interne, risque de créances perdues.*  
> - ⏳ **Délais aléatoires** non tracés 
>   *→ tension sur trésorerie, incapacité de prévoir encaissements.*  
> - 🔓 **Envoi hétérogène** (factures assurances & CMD) 
>   *→ risque d’oublis, dispersion des preuves.*  

---

## 🎯 Plan d’action
> [!tip]  
> | Horizon | ✅ Actions clés | 🎯 Objectif |
> |---------|----------------|-------------|
> | **1–2 mois** | 1) **Standardiser envois** (factures PP et CMD → toujours Dentagest XML + PDF) | Cohérence |
> |  | 2) **Journal de facturation** : note/Excel listant factures envoyées, dates, canaux | Traçabilité |
> | **3–6 mois** | 3) **Procédure impayés interne** avant transfert à CMD (relance simple par cabinet) | Réduire pertes |
> |  | 4) **Monitoring délais** (Dataview/Obsidian ou tableur) → moyenne paiements PP/assurances | Pilotage cash |
> | **6–12 mois** | 5) **Contrat-cadre avec CMD** précisant responsabilités & délais | Sécuriser process |
> |  | 6) **Automatisation Dentagest** (exports CSV/XML réguliers) | Pérennité & gain de temps |

---

> [!info] Références
> - Questionnaire source : [[Facturation_1]]
> - Synthèse globale : [[🧭 Synthèse IT]]
> - Autres questionnaires :
>   - [[Acces_IT_CDP]]
>   - [[Organisation_Fichiers_CDP]]
>   - [[Correspondance_CDP]]
