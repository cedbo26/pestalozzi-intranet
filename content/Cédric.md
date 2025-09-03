---
title: to-do Cédric
auteur: Cédric
categorie: IT-support
tags:
  - infomaniak
  - sécurité
  - pestalozzi
  - melissa
  - setup
  - tocheck
date: 2025-08-27
priorité: urgente
---

# ✅ To-do list – Cédric  
🎯 Objectif : Mettre en place une structure email sécurisée et unifiée autour d’Infomaniak, avec redirection propre depuis Bluewin.

---

## ⚙️ 1. Configuration Infomaniak (Mail macOS)

- [x] Vérifier le fonctionnement de l’adresse `info@cabinet-dentaire-pestalozzi.ch` (envoi + réception)
- [ ] Ajouter le compte dans **Mail.app** sur le **MacBook Pro**
- [ ] Créer un **dossier “Bluewin reçus”**
- [ ] Ajouter une **règle automatique** pour rediriger tous les mails depuis Bluewin vers ce dossier
- [ ] Créer au moins **2 gabarits de réponse Mail.app** :
  - Résultat médical simple
  - Réponse administrative / facture
- [ ] Configurer Applocker sur le Mac de Mélissa
- [ ] (Optionnel) Ajouter l’adresse sur l’appli mobile si souhaité par Melissa
- [ ] Disclaimer

>[!quote]
IMPORTANT : Les contenus de ce message et ses pièces jointes sont confidentiels.  
Ils sont destinés uniquement à leurs destinataires.  
Si vous avez reçu ce message par erreur, veuillez le signaler immédiatement à votre administrateur ou directement à son expéditeur.  
Ne faites pas de copie du message.

---

## 🧾 2. Console Infomaniak

- [x] Accéder à https://manager.infomaniak.com
- [x] Vérifier le statut du domaine `cabinet-dentaire-pestalozzi.ch`
- [ ] Activer la **double-authentification (MFA)** avec le téléphone de Melissa
- [x] Ajouter un **alias ou nouvelle adresse email** si besoin :
  - `melissa@cabinet-dentaire-pestalozzi.ch`
  - ou `admin@...`, `compta@...`, selon ses préférences

> [!info] 🔐 Sécurité email – SPF, DKIM, DMARC (Infomaniak)
> 
> **Pourquoi ?**  
> Empêcher l’usurpation d’identité (`info@...`), améliorer la délivrabilité des mails, respecter la LPD/RGPD.
> 
> ---
> 
> ✅ **SPF**  
> Autorise Infomaniak à envoyer des mails pour le domaine.  
> → Entrée DNS de type TXT :  
> ```
> Nom : @  
> Type : TXT  
> Valeur : v=spf1 include:_spf.infomaniak.ch ~all
> ```
> 
> ---
> 
> ✅ **DKIM**  
> Signe les mails pour garantir qu’ils ne sont pas falsifiés.  
> → Active automatiquement via Infomaniak :  
> ```
> Nom : default._domainkey  
> Type : TXT  
> Valeur : (clé publique fournie automatiquement)
> ```
> Activer si besoin : Manager > Emails > Domaine > Authentification DKIM
> 
> ---
> 
> ~~✅ **DMARC**~~  
> ~~Décrit quoi faire si SPF ou DKIM échoue.~~  
> ~~→ Entrée DNS de type TXT :~~  
> ~~```~~
> ~~Nom : _dmarc~~  
> ~~Type : TXT~~  
> ~~Valeur minimale :~~  
> ~~v=DMARC1; p=none; rua=mailto:dmarc@cabinet-dentaire-pestalozzi.ch~~
> ~~```~~
> ~~Autres options possibles :~~  
> ~~- `p=quarantine` → met en spam~~  
> ~~- `p=reject` → rejette directement~~
> 
> ~~---~~
> 
> ~~🛠️ **Où configurer tout ça ?**~~  
> ~~→ https://manager.infomaniak.com → Domaines → DNS → Ajouter une entrée TXT~~



---

## 🛡️ 3. Sécurité du MacBook Pro

- [ ] Installer **AppLocker** (depuis App Store)
- [ ] Configurer le **verrouillage de Mail.app**
- [ ] Vérifier si d’autres apps doivent être protégées (Notes ? Safari ?)
- [ ] Documenter cela dans une fiche sécurité Obsidian si implémenté

---

## 🖥️ 4. Sécurité du poste Windows (cabinet)

- [ ] Vérifier si Windows = édition Pro ou non
- [ ] Si Pro : proposer AppLocker ou GPO pour verrouiller Outlook/mail
- [ ] Sinon : activer **verrouillage auto après 3–5 min**
- [ ] Créer sessions distinctes (Melissa / Collaborateurs) si faisable
- [ ] Désactiver le lancement auto de session / accès libre

---

## 📁 5. Notes Obsidian à compléter

- [ ] [[📧 Gestion des emails – Cabinet Pestalozzi]]
- [ ] [[🛡️ Sécurité informatique – Plan de base]]
- [ ] [[🧾 TODO – Mélissa (transition email)]]
- [ ] Ajouter lien depuis [[🧭 Synthèse IT]] vers cette action

---

## 🧠 6. À discuter avec Melissa

- [x] Souhaite-t-elle une 2e adresse ?
- [x] Est-elle d’accord de **ne plus jamais utiliser Bluewin pour envoyer ?**
- [x] Veut-elle configurer une **réponse automatique Bluewin** ("Nouvelle adresse : info@...")
- [ ] Souhaite-t-elle un **coffre de mots de passe** (ex. Bitwarden) ?

---

## 📦 À prévoir + suite

- [ ] Préparer sauvegarde des emails (format .mbox ou IMAP Backup)
- [ ] Documenter les accès + MFA dans un fichier sécurisé ou dans Obsidian
- [ ] Suivi dans une future note `📆 Journal de bord – Transition Email`

---
