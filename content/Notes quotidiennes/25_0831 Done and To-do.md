---
date: 31.08.2025
heure: 23:04
nom_du_vault: DENTAL_PESTA
tags:
  - daily_note
  - infomaniak
  - cédric
  - mail
  - email
  - bluewin
---
# 📓 Journal du jour — 31.08.2025

## ✅ Actions effectuées
- Mise en place de la **déviation Bluewin** vers `contact@cabinet-dentaire-pestalozzi.ch`.
- Création et déploiement opérationnel de l’adresse **`contact@...`** sur Infomaniak.
- Stabilisation de la boîte **Bluewin** (accès + installation iOS OK).
- Création d’un **alias web** `cdpestalozzi.ch` → `cabinet-dentaire-pestalozzi.ch`.
- ~~Vérification et export complet des **DNS** des deux domaines.~~

---

## 🔍 Analyse comparative DNS

### Points cohérents
- Les deux domaines pointent bien vers **Infomaniak**.
- MX identiques → `mta-gw.infomaniak.ch.` ✅
- Autoconfig / Autodiscover présents.
- NS corrects (variantes Infomaniak).

### Divergences notées
1. **SPF**
   - `cdpestalozzi.ch` → `-all` (strict) ✅  
   - `cabinet-dentaire-pestalozzi.ch` → `~all` (tolérant) ⚠️  
   → Harmoniser en `-all`.

2. **DMARC**
   - `cdpestalozzi.ch` → `p=reject;` ✅  
   - `cabinet-dentaire-pestalozzi.ch` → ❌ manquant  
   → Ajouter un `_dmarc` strict.

3. **TXT redirection Web**
   - Présent sur `cdpestalozzi.ch` uniquement (normal).

4. **IP Web**
   - `cdpestalozzi.ch` → `84.16.66.164`  
   - `cabinet-dentaire-pestalozzi.ch` → `84.16.76.196`  
   → Pas problématique (infrastructure Infomaniak).

---

## 📧 Alias mail à mettre en place

### Ce qui est déjà OK
- Les deux domaines sont bien configurés côté MX.
- Les mails envoyés vers `@cdpestalozzi.ch` pourraient déjà fonctionner si créés manuellement.

### Étape à faire sur Infomaniak
1. Se rendre dans **Manager → Mail → Domaines**.
2. Sélectionner `cabinet-dentaire-pestalozzi.ch`.
3. Activer l’option **Alias de domaine**.
4. Ajouter `cdpestalozzi.ch`.
5. Résultat : toutes les adresses existantes seront disponibles automatiquement avec les deux suffixes.

---

## 📌 Étapes restantes
- [ ] Ajouter un enregistrement **DMARC** au domaine principal :  _dmarc  3600  IN TXT  “v=DMARC1; p=reject;
- [ ] Harmoniser le SPF sur `cabinet-dentaire-pestalozzi.ch` → `-all`.
- [ ] Activer l’**alias de domaine mail** sur Infomaniak.
- [ ] Définir la signature **standardisée** (mise en page pro + avertissement sur l’abandon progressif de Bluewin).
- [ ] Vérifier réception des tests (`contact@cabinet-dentaire-pestalozzi.ch` et `contact@cdpestalozzi.ch`).
- [ ] Documenter la procédure dans le coffre **Facilo Rapido**.

---

## 🚀 Conclusion
- La consolidation des mails est **quasi terminée** : Bluewin redirige, `contact@...` est opérationnel, et le web alias est en place.  
- Il reste une harmonisation DNS et l’activation officielle de l’alias mail sur Infomaniak pour finaliser la bascule.  
- Une fois les signatures uniformisées et le DMARC ajouté, le système sera **propre, sécurisé et standardisé**.