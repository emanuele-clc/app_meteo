# Che metto oggi?

Una piccola app meteo che, oltre a temperatura e previsioni, mi dice cosa conviene mettere e portare durante la giornata: se serve l'ombrello, una giacca, gli occhiali da sole e così via.

Prende la posizione dal GPS (oppure cerco la città a mano) e mostra il meteo attuale, l'andamento ora per ora e i sette giorni successivi. Toccando un giorno ne vedo le ore. In alto c'è il consiglio della giornata, ricavato dai dati meteo; volendo posso collegare una chiave Groq per farlo scrivere da un modello AI in modo più discorsivo, ma senza chiave funziona comunque con delle regole.

È un unico file `index.html`, con manifest, icone e service worker, quindi è anche installabile sul telefono come app e la parte statica funziona offline.

I dati meteo arrivano da Open-Meteo e il nome della città dal GPS da BigDataCloud: nessuno dei due richiede registrazione o chiavi. L'unica chiave, opzionale, è quella di Groq, e resta salvata solo sul dispositivo.
