---
date: 2025-08-29
heure: 01:33
nom_du_vault: DENTAL_PESTA
tags:
  - daily_note
  - dentagest
---

## 📩 Réponses [[Dentagest]] (31.07.2025)

| Thème                      | Question                                     | Réponse Dentagest                                                                                                                                                                                                      |
| -------------------------- | -------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Architecture**           | Rôle exact du serveur (DB, services annexes) | Dentagest **n’est pas sur le serveur** WSS2012 (incompatible) mais installé sur le **poste réception**. Le serveur héberge uniquement **partages réseau (DG_Partages, Documents Cabinet)** + **radiologie numérique**. |
|                            | Mode de connexion des postes clients         | Connexion **directe via le réseau local**.                                                                                                                                                                             |
|                            | Autres services hébergés ?                   | Oui : **partages réseau** et **radiologie numérique**.                                                                                                                                                                 |
| **Sauvegardes**            | Méthode, fréquence, emplacement              | Sauvegardes **quotidiennes sur périphérique externe**. Radiologie + partages aussi sauvegardés.                                                                                                                        |
|                            | Procédure restauration                       | **Support Dentagest** doit intervenir pour restaurer DB ou documents.                                                                                                                                                  |
|                            | Sauvegarde cloud ?                           | Possible, **vivement recommandée**, mais **pas en place** chez Mme Behar.                                                                                                                                              |
| **Fonctionnement continu** | Pourquoi serveur toujours allumé ?           | Pour que postes clients aient accès en tout temps. Principe : un serveur ne doit pas être arrêté.                                                                                                                      |
|                            | Accès distant support ?                      | Oui, support Dentagest dispose d’un **accès à distance**.                                                                                                                                                              |
|                            | Batchs / sync nocturnes ?                    | Non mentionné → probablement aucun traitement particulier.                                                                                                                                                             |
| **Évolutions**             | Hébergement cloud Dentagest ?                | En **développement**, pas encore disponible.                                                                                                                                                                           |
|                            | Nouveau serveur physique                     | **Fortement recommandé** vu vétusté. Offre possible par Dentagest.                                                                                                                                                     |
|                            | Recommandations officielles remplacement     | Remplacer par un serveur sous **Windows Server 2025** (fin de support WSS2012R2 depuis 10/2023).                                                                                                                       |


**Backlinks**
- Suivi facturation via Dentagest [[🧾 Facturation – Dentagest]]
- Gestion documentaire et doublons [[🗄️ Organisation des fichiers & archivage]]
- Infrastructure serveur et accès [[💻 Infrastructure IT]]
- Communication patient (SMS/email) [[📧 Mails & Correspondance]]
- Vue d’ensemble et modules [[📑 Spécifications techniques]]
