---
title: Etat IT – Processus de facturation (Cabinet Pestalozzi)
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
---
## 🔎 Diagnostic express
- 🦷 **Dentagest central** : utilisé pour les prestations, commandes, relevés CMD → bonne intégration de base.  
- 📦 **Envoi des commandes** : XML via Dentagest, mensuel → structuré, mais dépendance au logiciel.  
- 📑 **Prestations patients privés (PP)** : traitées à la fois via Dentagest & papier → duplication des supports.  
- 📮 **Factures assurances / société CMD** : acheminées de manière hétérogène, parfois papier, parfois intégré → peu standardisé.  
- 🧾 **Suivi des impayés** : confié à CMD en recouvrement, mais avec exceptions (“si créance rachetée”) → pas de règle unique.  
- ⏳ **Délais paiements** : variables, non monitorés → absence de pilotage de trésorerie.  

---

## ⚠️ Risques identifiés
> [!danger]  
> - 🔄 **Double flux** (Dentagest + papier) → erreurs et perte de cohérence.  
> - 🕳️ **Suivi impayés dépendant de CMD** → peu de maîtrise interne, risque de créances perdues.  
> - ⏳ **Délais aléatoires** non tracés → tension sur trésorerie, incapacité de prévoir encaissements.  
> - 🔓 **Envoi hétérogène** (factures assurances & CMD) → risque d’oublis, dispersion des preuves.  

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

# 📎 Annexe – Questionnaire complet

> [!info] Mode d’emploi  
> Questions **numérotées** comme vues par le répondant ; **réponses** formatées, ✅ pour choix cochés.

---

### 1. Envoi des commandes
**1.1. Mode d’envoi des commandes (CMD)**  
*Réponses* :  
- ✅ Dentagest XML  
- ⬜ Autre  

**1.2. Fréquence des envois**  
*Réponse* : Chaque mois (1x/mois)  

---

### 2. Prestations patients privés (PP)
**2.1. Méthodes de traitement**  
*Réponses* :  
- ✅ Dentagest  
- ✅ Papier  
- ⬜ Autre  

**2.2. Précisions**  
*Réponse* : Les deux  

**2.3. Envoi des PP**  
*Réponse* : ✅ Oui  

---

### 3. Commandes (CMD)
**3.1. Mode de traitement**  
*Réponses* :  
- ✅ Dentagest  
- ⬜ Autre  

**3.2. Précisions**  
*Réponse* : CMD envoie par eux  

**3.3. Envoi par le cabinet**  
*Réponse* : ❌ Non  

---

### 4. Assurances
**4.1. Mode de traitement**  
*Réponses* :  
- ✅ Papier  

**4.2. Envoi par le cabinet**  
*Réponse* : ✅ Oui  

---

### 5. Société (CMD)
**5.1. Mode de traitement**  
*Réponses* :  
- ✅ Papier  

**5.2. Envoi par le cabinet**  
*Réponse* : ✅ Oui  

---

### 6. Suivi factures & impayés
**6.1. Suivi des factures et paiements**  
*Réponses* :  
- ✅ Dentagest  
- ✅ Relevé CMD  
- ✅ Manuel  

**6.2. Suivi des impayés**  
*Réponses* :  
- ✅ Recouvrement CMD  
- ⬜ Autre  
*Précision* : dépend si créance rachetée  

---

### 7. Délais de paiements
**7.1. Délai patients privés (PP)**  
*Réponse* : 2–4 semaines  

**7.2. Délai CMD**  
*Réponse* : Variable  

**7.3. Délai assurances**  
*Réponse* : Variable  

**7.4. Délai société (CMD)**  
*Réponse* : Variable  