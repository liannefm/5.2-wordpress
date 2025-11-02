# 📘 Lianne's WordPress Website

## 🧩 Overzicht
Dit project is een **volledige WordPress-installatie** die gebruikmaakt van diverse optimalisatie- en beveiligingsplugins om prestaties, gebruiksgemak en veiligheid te verbeteren.  
De website kan eenvoudig worden hersteld via een **All-in-One WP Migration-back-upbestand (.wpress)**.

**Let op:** het back-upbestand moet eerst worden gedownload van:  
[https://files.tomtiedemann.com/share/w-qwqwS-](https://files.tomtiedemann.com/share/w-qwqwS-)

---

## ⚙️ Installatie-instructies

### 1. Systeemvereisten
Zorg dat de server of lokale omgeving het volgende ondersteunt:
- **PHP** 7.4 of hoger  
- **MySQL** 5.7+ of **MariaDB** 10+  
- **Apache** of **Nginx** webserver  
- **WordPress** (schone installatie)  

---

### 2. Installatieprocedure

1. **Installeer WordPress**
   - Download via [wordpress.org](https://wordpress.org/download/).  
   - Installeer WordPress op je lokale server of hostingomgeving.

2. **Installeer All-in-One WP Migration**
   - Log in op je WordPress-dashboard.  
   - Ga naar **Plugins → Nieuwe plugin → Zoeken op “All-in-One WP Migration and Backup”**.  
   - Klik op **Installeren** en daarna op **Activeren**.

3. **Download en importeer de back-up**
   - Download het back-upbestand vanaf:  
     [https://files.tomtiedemann.com/share/w-qwqwS-](https://files.tomtiedemann.com/share/w-qwqwS-)

   - Upload het bestand:
     ```
     backupfile.wpress
     ```
   - Navigeer naar **All-in-One WP Migration → Importeren** en kies het bestand.  
   - Klik op **Doorgaan** wanneer de plugin vraagt om bestaande data te overschrijven.

4. **Login**
    ```
    Gebruikersnaam: admin
    Wachtwoord: admin
    Login URL: http://localhost/wp-admin of het domein van je hosting.
    ```

5. **Klaar!**
- De site, inclusief alle thema’s, plugins, media en instellingen, is volledig hersteld.

---

## 🔐 Gebruikte plugins en hun functie

### 1. 🧳 All-in-One WP Migration and Backup
**Functie:** Back-ups, migratie en herstel van volledige WordPress-installaties.  
**Impact:**  
- Maakt overdracht van de site uiterst eenvoudig.  
- Inclusief database, uploads, thema’s en plugins.  
**Waarom gekozen:** All-in-One is de meest gebruiksvriendelijke oplossing, werkt zonder technische kennis en heeft een hoge compatibiliteit met hostingproviders.

---

### 2. ⚡ Autoptimize
**Functie:** Optimaliseert HTML, CSS en JavaScript om laadtijden te verkorten.  
**Impact:**  
- Betere **PageSpeed-score** en snellere laadtijd.  
- Combineert en minificeert bestanden.  
**Waarom gekozen:** Autoptimize is stabiel, lichtgewicht en werkt goed met cachingplugins zoals WP Super Cache.

---

### 3. 🔒 Secure Custom Fields
**Functie:** Biedt een veilige manier om extra velden (custom fields) toe te voegen aan berichten, pagina’s en custom post types, vergelijkbaar met Advanced Custom Fields (ACF), maar met ingebouwde beveiligingslagen.  
**Impact:**  
- Maakt het mogelijk om dynamische contentstructuren te bouwen zonder code te schrijven. 
- Verhoogt de beveiliging door gevoelige velddata te versleutelen in de database.
- Vermindert risico’s op datalekken of onbedoelde blootstelling van gevoelige gegevens in de adminomgeving.  
**Waarom gekozen:** Deze plugin biedt de flexibiliteit van Advanced Custom Fields om aangepaste contentvelden eenvoudig te beheren en weer te geven. Hierdoor kunnen ontwikkelaars en contentmanagers veilig dynamische contentstructuren opbouwen zonder complexe code, wat de productiviteit verhoogt en het risico op datalekken vermindert.

---

### 4. 🛡️ Wordfence Security
**Functie:** Firewall, malware-scanner en loginbescherming.  
**Impact:**  
- Beschermt tegen brute-force aanvallen en injecties.  
- Detecteert verdachte bestanden of wijzigingen.  
**Waarom gekozen:** Wordfence combineert firewall + malware-detectie in één pakket met een uitstekende reputatie voor betrouwbaarheid.

---

### 5. 🚀 WP Super Cache
**Functie:** Zet dynamische WordPress-pagina’s om in statische HTML-bestanden.  
**Impact:**  
- Vermindert serverload aanzienlijk.  
- Versnelt de website voor bezoekers en zoekmachines.   
**Waarom gekozen:** WP Super Cache is eenvoudig te configureren, stabiel en compatibel met de meeste hostingomgevingen.

---

## 🧠 Analyse van alternatieven

| Functie | Gekozen Plugin | Reden van keuze |
|----------|----------------|----------------|
| Migratie & Backup | All-in-One WP Migration | Gebruiksgemak en betrouwbaarheid bij herstel |
| Optimalisatie | Autoptimize | Minder complex, stabieler samen met WP Super Cache |
| Beveiliging | Wordfence Security | Wordfence biedt betere realtime bescherming |
| Gevoelige data | Secure Custom Fields | Lichter en direct gericht op encryptie |
| Caching | WP Super Cache | Betere compatibiliteit zonder specifieke serververeisten |
