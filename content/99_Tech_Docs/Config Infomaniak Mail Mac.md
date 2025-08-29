---
title: "Configuration d’un compte Infomaniak sur Mail (Mac)"
author: "Procédure interne"
tags: [infomaniak, mail, macos, configuration, imap, signature]
date: 2025-08-29
---

# Configuration d’un compte Infomaniak sur Mail (Mac)

Cette procédure décrit comment configurer un compte **Infomaniak (IMAP)** dans le client **Mail sur macOS**, personnaliser l’expéditeur et ajouter une signature.

> [!warning]
> ⚠️ **Important** : la configuration du **Nom d’expéditeur** et de la **signature** doit également être faite dans le **Webmail Infomaniak**, sinon les mails envoyés depuis le webmail afficheront des informations différentes.  
> 🔗 [Accéder au Webmail Infomaniak](https://mail.infomaniak.com)

---

## 1. Configuration IMAP

👉 Suivre la documentation officielle Infomaniak :  
🔗 [Synchroniser les e-mails sur tous vos appareils (IMAP)](https://www.infomaniak.com/fr/support/faq/2427/synchroniser-les-e-mails-sur-tous-vos-appareils)

**Paramètres génériques :**
- **Type de compte** : IMAP  
- **Serveur de réception (IMAP)** : `imap.infomaniak.com` — Port 993 — SSL activé  
- **Serveur d’envoi (SMTP)** : `mail.infomaniak.com` — Port 465 — SSL activé  
- **Authentification** : identique à l’adresse email complète + mot de passe associé  

---

## 2. Création et gestion de l’expéditeur & de la signature

### 2.1 Accéder aux réglages du compte
- Ouvrir **Mail > Réglages > Comptes**  
- Sélectionner le compte **Infomaniak** concerné  

### 2.2 Modifier la description du compte
- Dans l’onglet **Informations du compte**, personnaliser le champ **Description** (utile si plusieurs comptes configurés)  

### 2.3 Modifier le nom de l’expéditeur
1. Dans l’onglet **Informations du compte**, cliquer sur le menu déroulant **Adresse e-mail**  
2. Choisir **Modifier les adresses e-mail…**  
3. Dans la fenêtre qui s’ouvre, saisir/modifier le **Nom complet** (c’est ce nom qui apparaîtra comme expéditeur chez le destinataire)  
4. Valider les modifications  

> 💡 Remarque : selon le client du destinataire, l’adresse email peut toujours s’afficher, mais la majorité verront le **Nom complet** choisi.  

### 2.4 Créer une signature
1. Toujours dans **Mail > Réglages**, aller sur l’onglet **Signatures**  
2. Cliquer sur **+** pour créer une nouvelle signature  
3. Donner un titre clair (ex. "Pro – Infomaniak")  
4. Rédiger le contenu de la signature (nom, fonction, coordonnées, disclaimer, etc.)  
5. Associer la signature au compte Infomaniak concerné  
6. Choisir la signature par défaut pour **Nouveaux messages** et **Réponses/Transferts** si souhaité  

---

## 3. Vérification

- Envoyer un mail test vers une adresse externe (ex. Gmail ou Outlook)  
- Vérifier que :  
  - le **Nom complet** apparaît correctement comme expéditeur  
  - la **signature** s’affiche correctement  

---

✅ Procédure terminée. Le compte Infomaniak est configuré sur Mail Mac avec un expéditeur personnalisé et une signature.  