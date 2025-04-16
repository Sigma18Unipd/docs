#import "../../../templates/template.typ": *
#show: content => verbale(
  titoloDocumento: "Seconda riunione con Var Group S.p.A.",
  abstract: "Incontro con l'azienda Var Group S.p.A. tenutasi in data 14 aprile 2025, per un iniziale design thinking.",
  responsabili: " ",
  redattori: " ",
  verificatori: " ",
  tipo: "Verbale Esterno",
  destinatari: ("Var Group S.p.A.", "Prof. Tullio Vardanega", "Prof. Riccardo Cardin"),
  versioneAttuale: "1.0.0",
  content: content,
  firmaEsterna: true,
)

= Riferimenti generali
Il seguente documento contiene il resoconto della riunione esterna del gruppo _Sigma18_ con l'azienda _Var Group S.p.A_ tenutasi presso la sede di Guizza (Padova) in data *14 aprile 2025* e dalla durata di* 3 ore*.


Nell'incontro sono stati trattati i punti descritti nella sezione _ordine del giorno_.

== Partecipanti
=== Interni
- Alessandro Bernardello
- Mirco Borella
- Pietro Crotti
- Marco Egidi
- Matteo Marangon
- Aleena Mathew
- Carmelo Russello
=== Esterni
- Michele Massaro (_Var Group S.p.A._)
- Francesco Battistella (_Var Group S.p.A._)

= Ordine del giorno

Durante l'incontro è stata svolta l'attività di _design thinking_, volta a definire lo scopo del progetto e l'utenza a cui è destinato.\
Si è giunti all'accordo di realizzare un applicativo sotto forma di webApp, utilizzando _React_ e _TypeScript_.\

In particolare sono stati approfonditi i seguenti punti:

== Target
Il gruppo ha concordato di suddividere l'utenza a cui il software è destinato in due categorie principali: *utente base* (successivamente indicato come 1) ed *utente avanzato* (successivamente indicato come 2), le due tipologie si distinguono per le conoscenze tecniche da loro possedute


== Flussi
Per ciascuna categoria di utenza sono state individuate necessità differenti.\
Il gruppo ha individuato bisogni differenti in base alla tipologia di utente.\ Basandosi su quest'ultime, si è andati a definire una lista di funzionalità previste nell'applicazione, attribuendole alle tipologie di utenza che ne trarrebbe beneficio.\
Segue la tabella che contiene i flussi individuati e la categoria di utenti a cui sono destinati.\


#align(
  center,
  table(
    align: center,
    columns: (auto, 1fr, auto),
    rows: auto,
    inset: 9pt,
    table.header([*Indice*], [*Flusso*], [*Dedicato a*]),
    [1],
    [Voglio poter accedere a funzionalità avanzate (scelta modello/ contesto/ temperatura) per ricevere un risultato migliore (o personalizzato)],
    [2],

    [2], [Voglio poter impostare dei settings generali per non doverli ripetere in ogni prompt], [1, 2],
    [3], [Voglio poter definire routine quotidiane a parole per automatizzarle e risparmiare tempo], [1, 2],
    [4], [Voglio poter impostare i flussi di automazione solo tramite linguaggio naturale per non dover imparare nuovi linguaggi/tool], [1],
    [5], [Voglio poter modificare una routine esistente per non doverla ricreare], [1, 2],
    [6], [Voglio poter cancellare una routine esistente], [1, 2],
    [7], [Voglio poter visualizzare le funzionalità di ogni blocco per sapere cosa posso o non posso fare], [2],
    [8], [Voglio poter vedere la lista delle routine presenti], [1, 2],
    [9], [Voglio poter vedere i log delle azioni completate per assicurarmi del risultato], [2],
    [10], [Voglio poter vedere degli esempi di flusso per capire come funziona la piattaforma], [1],
    [11], [Voglio poter avere più proposte di flusso per poter scegliere il migliore], [2],
    [12], [Voglio poter fissare alcuni blocchi e far rigenerare gli altri mantenendo quelli fissati per migliorare il flusso], [2],
    [13], [Voglio poter modificare il flusso tramite drag and drop], [2],
    [14], [Voglio poter dare dei feedback ai flussi per migliorarne le prestazioni future], [1, 2],
    [15], [Voglio poter accedere a tutte le funzionalità della piattaforma], [1],
    [16], [Voglio poter usare la dark mode], [1, 2],
    [17], [Voglio poter interrompere un’automazione avviata], [1, 2],
    [18], [Voglio poter creare un’automazione vuota per crearla a mano], [2],
    [19], [Voglio poter avviare un’automazione], [1, 2],
    [20], [Voglio poter fare login nei servizi che richiedono autenticazione], [1, 2],
  ),
)

Come si può notare dalla tabella, i flussi sono caratterizzati da una dicitura iniziale, _"voglio"_, che rappresenta il bisogno dell'utente, la quale ci è stato richiesto di utilizzare dall'azienda.\
Inoltre, i flussi sono stati numerati per facilitare la lettura e la comprensione della tabella che viene a seguire.\

== Pagine
Il gruppo ha delineato le possibili pagine da costruire nell'applicativo web, indicando le funzionalità che verranno fornite da ciascuna pagina.
Le pagine individuate sono le seguenti:
- *login / registrazione*: pagina di registrazione e login
- *lista flussi*: pagina principale dell'applicazione (home)
- *dettagli flusso*: pagina di dettaglio del flusso
- *impostazioni*: pagina di impostazioni generali e avanzate dell'applicazione

Segue la tabella che riporta per ciascuna pagina i flussi ad essa associati.

#align(
  center,
  table(
    align: center,
    columns: (auto, 1fr),
    rows: auto,
    inset: 9pt,
    table.header([*Pagina*], [*Flussi*]),
    [login / registrazione], [2], //molto incerta
    [lista flussi], [1, 3, 6, 8, 10, 16, 18, 19],
    [dettagli flusso], [1, 5, 6, 7, 9, 11, 12, 13, 14, 17, 19, 20],
    [impostazioni], [2], //aggiungo altri??
  ),
)
//lista delle funzionalità

== _Wireframe_
// O modello grafico
È stata prodotta una bozza della struttura grafica delle pagine dell'applicativo, rappresentata di seguito
// inserire wireframe

== Organizzazione / Comunicazione
Per favorire una comunicazione più rapida e diretta, l'azienda ha proposto di utilizzare la piattaforma _Slack_, in modo da poter comunicare in tempo reale con i membri del gruppo.\

= Conclusioni
Tutto il gruppo _Sigma18_ ringrazia l'azienda per il tempo fornito e per la loro disponibilità.\
L'azienda ha espresso la propria disponibilità nel fornire incontri di formazione su tecnologie o metodologie, sotto forma di quattro corsi con una durata compresa tra le due e le quattro ore.

