---
date: 18.09.2025
heure: 21:26
nom_du_vault: DENTAL_PESTA
tags: [daily_note]
---
---

# 🦷 Check-list Audit Dentagest – Cabinet Pestalozzi

> [!info] Contexte
> Dentagest reste le point bloquant.  
> - Logiciel **local**, architecture fermée.  
> - Facturation estimée ~300–400 CHF/mois + frais de support (46 CHF pour simple réponse).  
> - Aucune vision pratique encore : nécessité de **voir Dentagest à l’œuvre** pour compléter l’analyse.

---

## 1. Architecture & accès
- [ ] Poste serveur : rôle précis (DB, Digora, autres modules)  
- [ ] Postes clients : méthode de connexion (LAN, protocole, licences)  
- [ ] Sessions : admin / médecin / assistante / autre ?  
- [ ] Qui utilise quelle session ?  
- [ ] Accès externe (TeamViewer, VPN, autre) → actif ou non  

---

## 2. Sauvegardes & PRA
- [ ] Emplacement des sauvegardes (local, externe, cloud)  
- [ ] Fréquence (quotidienne, hebdo)  
- [ ] Procédure de restauration existante ?  
- [ ] Plan PRA (reprise après sinistre) documenté ?  
- [ ] Responsable désigné (Melissa, prestataire, Dentagest)  

---

## 3. Organisation documentaire
- [ ] Données patients : où stockées par défaut ?  
- [ ] Gestion des documents importés (PDF, images, scans)  
- [ ] Imagerie : Dentagest ↔ Digora (intégration directe ?)  
- [ ] Classement : patient / type / date ?  
- [ ] Recherche documentaire possible ?  
- [ ] Export : PDF global, CSV ?  

---

## 4. Facturation & paiements
- [ ] Patients privés : génération, envoi, suivi  
- [ ] CMD : export XML, validation, retour  
- [ ] Assurances / aide sociale : papier ou XML ?  
- [ ] Suivi paiements intégré ?  
- [ ] Impayés : relances internes ou CMD uniquement ?  
- [ ] Délais moyens visibles quelque part ?  

---

## 5. Communication & échanges
- [ ] Dentagest envoie-t-il des emails (SMTP) ?  
- [ ] Peut-on configurer info@ comme expéditeur ?  
- [ ] Synchronisation possible avec Bluewin / autres boîtes ?  
- [ ] Export automatique pour fiduciaire ?  

---

## 6. Sécurité
- [ ] Paramètres de sécurité internes (MFA, durée mots de passe)  
- [ ] Journalisation des actions (traçabilité)  
- [ ] Chiffrement données patients au repos ?  
- [ ] Restrictions par rôle (assistante ≠ facturation) ?  
- [ ] Comptes nominatifs pour chaque collaborateur ?  

---

## 7. Coûts & licences
- [ ] Montant exact mensuel (hors support)  
- [ ] Licences incluses ou facturées séparément ?  
- [ ] Modules séparés (Digora, facturation CMD) → coûts associés ?  
- [ ] Support : tarif intervention standard ?  

---

## 8. Évolutions possibles
- [ ] Dentagest Cloud → conditions et prix  
- [ ] Nouveau serveur local → conditions, migration, licences  
- [ ] Recommandations officielles fin de support Windows 2012 R2  
- [ ] Scénarios migration (cloud vs physique)  

---

> [!tip] Usage recommandé
> - Imprimer ou garder en note sur Obsidian.  
> - Remplir directement lors d’une **session devant Dentagest**.  
> - Ajouter captures ou remarques dans chaque section.  

---

## 🔗 Liens utiles
- [[Dentagest – Architecture & Évolutions]]  
- [[🧭 Synthèse IT]]  
- [[💰 Billing process]]  
- [[🗄️ Organisation des fichiers & archivage]]  
- [[📁 Correspondance et flux de fichiers]]  
**Backlinks**
- Suivi facturation via Dentagest [[🧾 Facturation – Dentagest]]
- Gestion documentaire et doublons [[🗄️ Organisation des fichiers & archivage]]
- Infrastructure serveur et accès [[💻 Infrastructure IT]]
- Communication patient (SMS/email) [[📧 Mails & Correspondance]]
- Vue d’ensemble et modules [[📑 Spécifications techniques]]
