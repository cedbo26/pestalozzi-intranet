---
title: Process_forms
tags:
  - forms
  - html
  - formspree
  - cdp
  - melissa
  - maintenance
---

# 📄 Inventaire & Process – Formulaires HTML (Formspree)

> [!info] Emplacement local
> Dossier de travail :  
> `/Users/benaissa287/Desktop/PESTALOZZI_CAB/FORMS/html_forms`

## 📦 Inventaire des formulaires (actuels)

| Fichier | Titre / Objet | Endpoint Formspree | Notes |
|---|---|---|---|
| `Acces_IT_cdp.html` | Accès ordinateur principal (Mélissa / Pestalozzi) | `https://formspree.io/f/xblkqlog` | Champs accès/identifiants, sessions, Dentagest, boîtes mail, serveurs.  [oai_citation:0‡Acces_IT_cdp.html](file-service://file-NK297emhCwrsVaRdZymwx2) |
| `correspondance_cdp.html` | Correspondance CDP (emails, résultats, facturation) | `https://formspree.io/f/mdkddzoa` | Sections “info@…”, Bluewin, résultats médicaux, administratifs.  [oai_citation:1‡correspondance_cdp.html](file-service://file-Sj7YLRLUc9BfokWBfpGWyG) |
| `index.html` | Facturation – workflow & délais | `https://formspree.io/f/mjkoowwe` | Méthodes d’envoi, fréquences, suivi paiements, impayés, délais par payeur.  [oai_citation:2‡index.html](file-service://file-2fizhBLfWpHMqMFVTUt5WA) |
| `organisation_fichiers_cdp.html` | Organisation des fichiers (patients, imagerie, fiduciaire) | `https://formspree.io/f/xanbbjje` | Stockages, correspondances, numérisation/archivage, accès & classement.  [oai_citation:3‡organisation_fichiers_cdp.html](file-service://file-R41tGdCF72uWarDHk11GSD) |

> [!tip] Convention de nommage
> `form-<contexte>-<objectif>-v<semver>.html` (ex. `form-facturation-workflow-v1.0.html`)  
> Ajoute un mini changelog en commentaire HTML en tête du fichier.

---

## 🔁 Process “de A à Z”

### 1) Créer / dupliquer un formulaire
Bref : duplique un HTML existant, adapte les questions, remplace l’endpoint.
```html
<form action="https://formspree.io/f/TON_ENDPOINT" method="POST" accept-charset="UTF-8">
  <input type="hidden" name="form_name" value="nom_interne_form_vX.Y" />
  <input type="hidden" name="_redirect" value="merci.html" />
  <input type="text" name="_gotcha" style="display:none" />
  …
</form>
```

**Backlinks**
- Suivi facturation via Dentagest [[🧾 Facturation – Dentagest]]
- Gestion documentaire et doublons [[🗄️ Organisation des fichiers & archivage]]
- Infrastructure serveur et accès [[💻 Infrastructure IT]]
- Communication patient (SMS/email) [[📧 Mails & Correspondance]]
- Vue d’ensemble et modules [[📑 Spécifications techniques]]
