---
title: Synthèse IT – Cabinet Pestalozzi
category: synthese_globale
date: 2025-08-25
scope: Cabinet Pestalozzi
consultant: Cedric
tags:
  - IT
  - synthese
  - pestalozzi
backlinks:
  - 🖥️ Fonctionnement IT – Mélissa
  - 🗄️ Organisation des fichiers & archivage
  - 📁 Correspondance et flux de fichiers
  - 💰 Billing process
  - Acces_IT_CDP
  - Organisation_Fichiers_CDP
  - Correspondance_CDP
  - Facturation_1
---
## 🔎 Diagnostic global
- 🔐 **Sécurité & accès** : sessions partagées, pas de verrouillage → ❌ mais **existence d’une session admin protégée** → ✅  
- 📧 **Mails & correspondance** : 
  ✅  bonne adoption d’**info@ pour le site et RDV**

  ❌ usage Bluewin pour résultats 
- 🗄️ **Organisation & archivage** : docs dispersés ❌, mais **Dentagest est déjà la base centrale** → ✅  
- 💰 **Facturation** : flux hétérogènes ❌, mais **Dentagest intégré avec CMD** → ✅  

---

## 1. 🔐 Sécurité & Accès
### Constats
- Mot de passe session partagé ❌  
- Pas de verrouillage automatique ❌  
- Accès physique large ⚠️  
- ✅ Point positif : session administrateur existe et reste protégée par Mélissa seule  

### Risques
> [!danger]  
> - Fuites données patients  
> - Intrusions physiques non contrôlées  
> - Traçabilité inexistante  

### Opportunités
> [!success]  
> - Mettre en valeur la session admin existante comme base de gouvernance IT  
> - Potentiel de scission claire entre usage pro et perso  

### Actions
- **Court terme** : Sessions individuelles + verrouillage automatique  
- **Intermédiaire** : Inventaire identifiants + clarification mots de passe  
- **Structurant** : Restreindre et formaliser l’accès physique (badge/clé, registre)  

---
## 2. 📧 Mails & Correspondance
### Constats
- Adresse info@ pour le site & échanges ✅  
- Bluewin utilisée pour résultats médicaux ❌  
- Archivage dispersé ⚠️  

### Risques
> [!danger]  
> - Non-conformité LPD/RGPD  
> - Perte de traçabilité administrative  

### Opportunités
> [!info]  
> - Possibilité d’**automatiser info@** (accusés de réception)  
> - Déjà un usage actif des mails par les patients → bonne adoption  

### Actions
- **Court terme** : Standardiser → résultats par PDF chiffré + SMS mot de passe  
- **Intermédiaire** : Gabarits d’emails, plan de classement partagé  
- **Structurant** : Mise en place d’un canal sécurisé patient (portail/drive temporaire)  

---

## 3. 🗄️ Organisation & Archivage
### Constats
- Dentagest central ✅  
- Imagerie aussi sur Digora ⚠️  
- Numérisation partielle ❌  
- Absence de plan d’archivage  

### Risques
> [!danger]  
> - Confidentialité compromise (docs sur ordi non protégé)  
> - Dépendance à Melissa  

### Opportunités
> [!success]  
> - Dentagest déjà intégré → base solide pour centralisation  
> - Motivation exprimée pour améliorer numérisation  

### Actions
- **Court terme** : Centraliser tout dans Dentagest  
- **Intermédiaire** : Étendre numérisation, définir plan de classement simple  
- **Structurant** : Plan d’archivage hybride (papier + numérique sécurisé) + formation équipe  

---

## 4. 💰 Facturation & Paiements
### Constats
- Dentagest utilisé ✅  
- Flux papier + XML en parallèle ❌  
- CMD gère recouvrement ⚠️  

### Risques
> [!danger]  
> - Erreurs et incohérences  
> - Créances perdues faute de suivi  

### Opportunités
> [!info]  
> - Dentagest déjà paramétré pour échanges CMD  
> - Relevés CMD disponibles comme base de contrôle croisé  

### Actions
- **Court terme** : Uniformiser les flux (tout XML + PDF via Dentagest)  
- **Intermédiaire** : Journal de facturation (Excel/Dataview)  
- **Structurant** : Contrat-cadre avec CMD + automatisation Dentagest  

---

## 📊 Tableau récapitulatif global

| Domaine | Constats clés | Risques | Opportunités | Priorité |
|---------|---------------|---------|--------------|----------|
| 🔐 Sécurité | Sessions partagées, pas de verrouillage | Données patients exposées | Session admin protégée | 🚨 Haute |
| 📧 Mails | Bluewin utilisé pour résultats | Secret médical violable | Info@ bien implanté | 🚨 Haute |
| 🗄️ Organisation | Multi-supports, numérisation partielle | Dépendance Melissa | Dentagest central déjà | ⚠️ Moyenne |
| 💰 Facturation | Double flux, dépendance CMD | Créances perdues | Dentagest + CMD intégrés | ⚠️ Moyenne |

---

## 🎯 Feuille de route globale
1. **Court terme** → sécurité PC, standardisation mails sensibles, centralisation Dentagest.  
2. **Intermédiaire** → archivage structuré, audit accès Dentagest, suivi factures.  
3. **Structurant** → externalisation IT, canal sécurisé patient, contrat CMD.

## 🔗 Liens
- [[🖥️ Fonctionnement IT – Mélissa]]
- [[🗄️ Organisation des fichiers & archivage]]
- [[📁 Correspondance et flux de fichiers]]
- [[💰 Billing process]]
- [[Acces_IT_CDP]]
- [[Organisation_Fichiers_CDP]]
- [[Correspondance_CDP]]
- [[Facturation_1]]
