# ☂️ Che metto oggi?

Web app meteo personale (PWA). Prende la posizione (GPS o ricerca città), mostra il meteo, un **radar pioggia animato** su mappa interattiva e un **consiglio su cosa mettere e portare oggi** (ombrello, giacca, occhiali, acqua…).

## Funzioni
- Posizione automatica (GPS) o ricerca città
- Meteo attuale, prossime ore e 7 giorni
- Mappa con radar pioggia (RainViewer) play/pausa
- Consiglio del giorno: regole locali, oppure AI (Groq) se aggiungi una chiave in ⚙️
- Sfondo animato che cambia col meteo
- Installabile come app (PWA), funziona offline per la parte statica

## Provala
Doppio-click su `index.html` per un'anteprima (il GPS richiede https). Per l'uso vero sul telefono pubblicala online (sotto).

## Metterla online (GitHub Pages)
1. Doppio-click su `PRIMO-PUSH.bat` (la prima volta) — carica tutto su GitHub.
2. Sulla repo: **Settings → Pages → Source: `main` / `(root)` → Save**.
3. Dopo ~1 minuto apri `https://emanuele-clc.github.io/app_meteo/` dal telefono → "Aggiungi a schermata Home".

Per gli aggiornamenti futuri: doppio-click su `deploy.bat`.

## Farne un APK Android
La cartella è già pronta per **PWABuilder**:
1. Pubblicala online (passi sopra).
2. Vai su https://www.pwabuilder.com, incolla il link, scarica il pacchetto **Android** (`.apk`/`.aab`).

Contiene già `manifest.json`, icone (`icons/`) e `sw.js` (service worker) richiesti.

## Dati e chiavi
- Meteo: [Open-Meteo](https://open-meteo.com) — gratis, senza chiave
- Nome città da GPS: BigDataCloud — senza chiave
- Radar: [RainViewer](https://www.rainviewer.com) — senza chiave
- Mappa: Leaflet + tiles CARTO — senza chiave
- Consigli AI: [Groq](https://console.groq.com/keys) — **opzionale**, la chiave resta solo sul telefono e non è nel codice
