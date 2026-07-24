# ☂️ Che metto oggi?

Web app meteo personale (PWA). Prende la posizione (GPS o ricerca città), mostra il meteo da Open-Meteo e dà un consiglio su cosa mettere e cosa portare oggi (ombrello, giacca, occhiali, acqua…).

## Uso
Apri `index.html`. Per i consigli scritti da un'AI (gratis) incolla una chiave [Groq](https://console.groq.com/keys) in ⚙️ Impostazioni. Senza chiave usa regole intelligenti locali.

## Online (consigliato)
La geolocalizzazione richiede **https**. Pubblica con GitHub Pages:
Settings → Pages → Source: `main` / root. Poi apri il link dal telefono e "Aggiungi a schermata Home".

## Dati
- Meteo: [Open-Meteo](https://open-meteo.com) (gratis, senza chiave)
- Geocoding posizione: BigDataCloud
- Consigli AI: Groq (opzionale)
