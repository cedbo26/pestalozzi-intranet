---
title: "Correspondance & flux documentaires"
form_id: correspondance_cdp
category: analyse_questionnaire
date_reception: 2025-07-31
consultant: Cedric
respondant: Melissa
source: Formspree
tags:
  - IT
  - correspondance
  - securite
  - dentagest
  - pestalozzi
backlinks:
  - Correspondance_CDP
  - 🧭 Synthèse IT – Cabinet Pestalozzi
---

## 🔎 Diagnostic express

- 📧 **Canaux**  
  Adresse **info@** bien utilisée pour le site & échanges généraux  
  Mais **Bluewin** reste largement utilisée (résultats, facturation)  
  *→ Dispersion des canaux*

- 🔒 **Sensibles par email**  
  **Résultats médicaux** & **facturation** transitent encore par **Bluewin** (grand public)  
  *→ Surface de risque élevée*

- 🗃️ **Archivage**  
  Pratique **mixte papier + mail** pour la plupart des catégories (loyer, assurances, compta, etc.)  
  *→ Traçabilité et recherche perfectibles*

- 🧭 **Rôles**  
  Factures envoyées **partiellement par Mélissa** et **via CMD**  
  *→ Process partagé, peu formalisé*

- 🧾 **Génération de factures**  
  “**Toutes**” générées via l’outil clinique  
  *→ Bon point, mais l’acheminement reste hétérogène*

---

## ⚠️ Risques identifiés
> [!danger]
> - 🔓 **Confidentialité** : résultats médicaux et pièces de facturation envoyés par mail non durci (Bluewin) → risque de violation de secret médical / LPD.
> - 🧩 **Fragmentation** : multiplicité des canaux (site, Bluewin, téléphone, remis au cabinet) sans règles d’orientation → pertes, doublons, délais.
> - 🧾 **Probatoire** : archivage **papier + mail** sans plan de classement commun → difficile de prouver l’historique (litige/assurance).
> - 🧑‍🤝‍🧑 **Responsabilités** : partage d’envoi des factures (Melissa/CMD) sans SOP claire → erreurs d’acheminement, confusions patient.

---

## 🎯 Plan d’action priorisé
> [!tip]
> | Horizon | ✅ Actions clés | 🎯 Objectif |
> |---|---|---|
> | **1–2 mois** | 1) **Standardiser les canaux** : résultats ~~via **PDF chiffré** (+ mot de passe par SMS)~~ ; factures via **adresse pro** du domaine, jamais Bluewin | Réduire le risque immédiat |
> |  | 2) **Gabarits d’emails** (résultats, questions, facturation) + **réponses automatiques** info@ (accusé de réception) | Cohérence & gain de temps |
> |  | 3) **Plan de classement commun** (libellés dossiers) & **règles d’archivage** (mail → dossier annuel ; papier → classeur dédié) | Traçabilité |
> | **3–6 mois** | 4) **Rôles & SOP** avec CMD (qui envoie quoi, quand, comment ; suivi des impayés) | Clarté process facturation |
> |  | 5) **Durcissement mail** : MFA, filtres anti-exfiltration de pièces, signatures DKIM/SPF/DMARC sur domaine | Sécurité communication |
> | **6–12 mois** | 6) **Canal sécurisé patients** (portail/drive chiffré temp.) pour résultats volumineux | Pérennité & UX |
> |  | 7) **Journal des envois** (Dataview/Obsidian ou tableur) : date, canal, destinataire, pièce jointe | Preuve & audit |

---


> [!info] Références
> - Questionnaire source : [[Correspondance_CDP]]
> - Synthèse globale : [[🧭 Synthèse IT]]
> - Autres questionnaires :
>   - [[Acces_IT_CDP]]
>   - [[Organisation_Fichiers_CDP]]
>   - [[Facturation_1]]
