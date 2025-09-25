## 📌 Rôle général
Dentagest est le logiciel de gestion central du cabinet. Il couvre :
- Dossiers patients (anamnèse, actes, plans de traitement).
- Facturation (devis, factures XML, assurances, aide sociale).
- Agenda multi-utilisateurs avec rappels SMS/email.
- Intégration imagerie (Digora via TWAIN/DICOM).
- Gestion documentaire (ordonnances, consentements, courriers).
- Communication avec les patients.
- Statistiques et tableaux de bord.
- Traçabilité (instruments stérilisés, accès utilisateurs).

## 🖥️ Infrastructure
- Hébergé sur **serveur Windows Storage Server 2012 R2** (⚠️ obsolète).
- Serveur héberge aussi l’imagerie **Digora**.
- Sessions :
  - **Admin (Melissa)** : accès complet.
  - **Dentistes et assistantes** : saisie prestations.
- Connexions via **TeamViewer** → risques de confidentialité.
- Pas de PRA documenté, sauvegardes incertaines.

## 💰 Facturation
- Patients privés : factures XML/PDF générées par Dentagest.
- CMD : export XML mensuel, suivi paiements délégué.
- Assurances complémentaires : envoi papier.
- Aide sociale : envoi papier.
- Délais de paiement : 2–4 semaines (patients privés), variables pour assurances.
- Suivi des impayés confié à CMD (sans procédure formalisée).

## 🗄️ Archivage et organisation
- Documents patients dispersés entre :
  - Dentagest (partiel),
  - Digora (radiologie),
  - PC Melissa,
  - Dossiers papier.
- Numérisation non systématique.
- Risque de doublons et perte de traçabilité.

## 📧 Communication
- Dentagest envoie rappels RDV (SMS/email).
- Utilisé pour correspondance automatisée patient.

## 🚀 Évolutions Dentagest (2025+)
- **Mises à jour automatiques** (plus besoin d’intervention manuelle).
- **Gestion multi-sites et à distance** (groupes, chaînes).
- **Interopérabilité renforcée** (laboratoires, imagerie).
- **Modules avancés** (suivi stérilisation, automatisation administrative).
- **Communication enrichie** (rappels, notifications).

## ⚠️ Problèmes identifiés
- OS serveur obsolète → migration nécessaire.
- Dépendance au serveur du Dr Duc.
- Sauvegardes non documentées.
- Archivage éclaté et peu fiable.
- Confidentialité des accès non garantie.

---

## **Backlinks**
- Suivi facturation via Dentagest [[🧾 Facturation – Dentagest]]
- Gestion documentaire et doublons [[🗄️ Organisation des fichiers & archivage]]
- Infrastructure serveur et accès [[💻 Infrastructure IT]]
- Communication patient (SMS/email) [[📧 Mails & Correspondance]]
- Vue d’ensemble et modules [[📑 Spécifications techniques]]
- Processus formulaires [[99_Tech_Docs/Process formulaires]]
- Correspondance et flux [[Synthèses/📁 Correspondance et flux de fichiers]]
- Fonctionnement IT – Mélissa [[Synthèses/🖥️ Fonctionnement IT – Mélissa]]
- Billing process [[Synthèses/💰 Billing process]]
- Synthèse IT [[Synthèses/🧭 Synthèse IT]]
- Notes quotidiennes liées : [[25_0826]], [[25_0829Rep_Dentagest]], [[25_0904_medina_maternité]], [[25_0918_audit_dentagest]], [[Rapport intermédiaire – État des lieux organisationnel]], [[25_0824_IT UPDATE]], [[Workflows/Formulaire nouveau patient]]