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
- 📧 **Canaux** : adresse **info@** pour le site & échanges généraux ; **Bluewin** largement utilisée (y c. résultats & facturation) → dispersion.
- 🔒 **Sensibles par email** : **résultats médicaux** & **facturation** transitent souvent par **Bluewin** (grand public) → surface de risque élevée.
- 🗃️ **Archivage** : pratique **mixte papier + mail** pour la plupart des catégories (loyer, assurances, compta, etc.) → traçabilité et recherche perfectibles.
- 🧭 **Rôles** : envoi des factures **partiellement** par Mélissa et **avec CMD** → process partagé, peu formalisé.
- 🧾 **Génération de factures** : “**Toutes**” générées (outil clinique) → bon point, mais l’acheminement reste hétérogène.

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
> | **1–2 mois** | 1) **Standardiser les canaux** : résultats via **PDF chiffré** (+ mot de passe par SMS) ; factures via **adresse pro** du domaine, jamais Bluewin | Réduire le risque immédiat |
> |  | 2) **Gabarits d’emails** (résultats, questions, facturation) + **réponses automatiques** info@ (accusé de réception) | Cohérence & gain de temps |
> |  | 3) **Plan de classement commun** (libellés dossiers) & **règles d’archivage** (mail → dossier annuel ; papier → classeur dédié) | Traçabilité |
> | **3–6 mois** | 4) **Rôles & SOP** avec CMD (qui envoie quoi, quand, comment ; suivi des impayés) | Clarté process facturation |
> |  | 5) **Durcissement mail** : MFA, filtres anti-exfiltration de pièces, signatures DKIM/SPF/DMARC sur domaine | Sécurité communication |
> | **6–12 mois** | 6) **Canal sécurisé patients** (portail/drive chiffré temp.) pour résultats volumineux | Pérennité & UX |
> |  | 7) **Journal des envois** (Dataview/Obsidian ou tableur) : date, canal, destinataire, pièce jointe | Preuve & audit |

---

# 📎 Annexe – Questionnaire complet (questions + réponses)

> [!info] Mode d’emploi  
> Questions **numérotées** comme vues par le répondant ; **réponses** formatées, ☑️ pour choix cochés.

## 1) Adresse info@cabinet-dentaire-pestalozzi.ch
**1.1. Usage de l’adresse info@**  
*Réponses* :  
- ☑️ Liée au formulaire de contact du site  
- ☑️ Utilisée pour d'autres échanges patients/professionnels  
*Autre (préciser)* : —  

**1.2. Types de demandes reçues via info@**  
*Réponses* :  
- ☑️ Prise de rendez-vous  
- ☑️ Questions sur les traitements  
- ☑️ Facturation / paiements  
- ☑️ Résultats médicaux  
- ☑️ Informations générales  
*Autre* : —  

---

## 2) Adresse Bluewin
**2.1. Adresse exacte**  
*Réponse* : `cabinetdentairepestalozzi@bluewin.ch`  

**2.2. Qui envoie et pour quel type de correspondance ?**  
*Réponse* : Pub médicale, rapports, commandes, assurances, etc.  

**2.3. Utilisation principale (Bluewin)**  
*Réponses* :  
- ☑️ Facturation  
- ☑️ Résultats médicaux  
- ☑️ Informations générales  
*Autre* : —  

---

## 3) Résultats & documents médicaux
**3.1. Mode d’envoi des résultats/documents**  
*Réponses* :  
- ☑️ Mail  
- ☑️ Courrier papier  
- ⬜ Téléphone  
- ⬜ Remis directement au cabinet  
*Remarque* : dépend de la demande du patient  

**3.2. Si par mail, adresse utilisée**  
*Réponses* :  
- ⬜ info@cabinet-dentaire-pestalozzi.ch  
- ☑️ Adresse Bluewin  
*Remarque* : —  

---

## 4) Informations générales & suivi administratif
**4.1. Modes d’envoi**  
*Réponses* :  
- ☑️ Mail  
- ☑️ Téléphone  
- ☑️ Remis directement au cabinet  
- ⬜ Courrier papier  
*Remarque* : —  

**4.2. Si par mail, adresse utilisée**  
*Réponses* :  
- ⬜ info@cabinet-dentaire-pestalozzi.ch  
- ☑️ Adresse Bluewin  
*Remarque* : —  

---

## 5) Facturation patients privés
**5.1. Les factures sont-elles générées par Dentagest ?**  
*Réponse* : **Toutes**  

**5.2. Qui envoie les factures ?**  
*Réponse* : **Melissa partiel**  
*Autre personne (préciser)* : en collaboration avec **CMD**  

**5.3. Mode d’envoi des factures**  
*Réponses* :  
- ☑️ Mélange papier + mail  
- ⬜ Papier uniquement  
- ⬜ Mail uniquement  
*Remarque* : —  

---

## 6) Sauvegardes & documents administratifs
*(cases cochées : lieu de conservation principal)*

**6.1. Loyer & charges** — *Papier/classeur* ☑️ · *Mail* ☑️ · *Dossier ordi* ⬜ · *Autre* ⬜  
**6.2. Assurances** — *Papier/classeur* ☑️ · *Mail* ☑️ · *Dossier ordi* ⬜ · *Autre* ⬜  
**6.3. Contrats fournisseurs** — *Papier/classeur* ☑️ · *Mail* ☑️ · *Dossier ordi* ⬜ · *Autre* ⬜  
**6.4. Facturation patientèle** — *Mail* ☑️ (autres ⬜)  
**6.5. Comptabilité générale** — *Papier/classeur* ☑️ · *Mail* ☑️ · *Dossier ordi* ⬜ · *Autre* ⬜  
**6.6. Courrier administratif** — *Papier/classeur* ☑️ · *Mail* ☑️ · *Dossier ordi* ⬜ · *Autre* ⬜  
**6.7. Autres documents** — *Papier/classeur* ☑️ · *Mail* ☑️ · *Dossier ordi* ⬜ · *Autre* ⬜

## 🔗 Liens
- [[Correspondance_CDP]]
- [[🧭 Synthèse IT]]
