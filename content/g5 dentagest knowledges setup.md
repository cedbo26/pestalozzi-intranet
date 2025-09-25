## **🔍 Ce que j’ai trouvé**

- Le site officiel de Dentagest mentionne qu’il y a des tâches « programmées » sur le serveur (ex. export de statistiques) 
    
- Il existe une offre “DentaGest Cloud” sur le site, ce qui suggère qu’ils offrent une version hébergée (cloud) en plus de l’installation locale 
    
- Le site OneDoc (service tiers) mentionne l’intégration / “connector” avec DentaGest pour synchroniser rendez-vous, facturation, dossiers patients, etc. 
    
- Dans un contexte de migration vers un autre logiciel (Denteo), on lit :
    
    > “Vous demandez d’abord à DentaGest d’exporter vos données. Denteo prendra ensuite contact avec Dentagest … importer l’export” 
    
    > Cela confirme que Dentagest fournit des exports structurés de ses données.
    

---

## **🛠 Analyse & inférences**

- Le fait qu’il y ait des “tâches programmées déléguées au serveur” indique une architecture client-serveur (logiciel local interrogeant un serveur) plutôt qu’un simple fichier local.
    
- Offre cloud suggère qu’ils ont une infrastructure capable de supporter un hébergement distant des données.
    
- Le recours à des exports pour migration (vers Denteo) indique que les données sont structurées d’une manière standard ou exportable (tableaux, CSV, XML, SQL dump, etc.).
    
- Le logiciel se qualifie lui-même comme “ERP de votre cabinet” et mentionne des “tableaux de bord exportables”   — ce sont des indicateurs classiques de systèmes avec bases relationnelles.
    

---

## **🧩 Ce qu’il reste à confirmer (questions à poser)**

1. Quel **moteur de base de données** utilisez-vous (Microsoft SQL Server, PostgreSQL, MySQL, SQLite, etc.) ?
    
2. Les “documents de tous types” sont-ils stockés comme **blobs dans la base** ou comme fichiers externes référencés (sur disque, NAS, partage réseau) ?
    
3. Quel est le **format d’export** des données (dump SQL, CSV, XML, JSON) ?
    
4. Quelle architecture serveur-client : les clients (postes de travail) accèdent-ils à la base directement via réseau, ou via une couche application web / API ?
    
5. Dans la version cloud, comment sont hébergées les données (base relationnelle, stockage objet, etc.) ?
    
6. Existe-t-il des composants middleware ou des services de synchronisation (caches, API) ?