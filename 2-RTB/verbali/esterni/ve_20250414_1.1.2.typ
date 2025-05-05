#import "../../../templates/template.typ": *
#show: content => verbale(
  titoloDocumento: "Seconda riunione con Var Group S.p.A.",
  abstract: "Incontro con l'azienda Var Group S.p.A. tenutasi in data 14 aprile 2025, per un iniziale design thinking.",
  responsabili: "Matteo Marangon",
  redattori: "Aleena Mathew",
  verificatori: "Alessandro Bernardello",
  tipo: "Verbale Esterno",
  destinatari: ("Var Group S.p.A.", "Prof. Tullio Vardanega", "Prof. Riccardo Cardin"),
  versioneAttuale: "1.1.2",
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
Durante l'incontro è stata svolta l'attività di #glossario("design thinking"), volta a definire lo scopo del progetto e l'utenza a cui è destinato.
Il gruppo ha inizialmente discusso e selezionato le tecnologie per lo sviluppo dell'interfaccia grafica, decidendo di realizzare una #glossario("webApp") basata su _React_ e _TypeScript_.

Si sono poi andati ad approfondire i seguenti punti:

== Target
Il gruppo ha concordato di suddividere l'utenza a cui il software è destinato in due categorie principali: *utente base* e *utente avanzato*, di seguito indicate rispettivamente come 1 e 2. \
Queste due categorie si distinguono in base alle competenze tecniche possedute dai rispettivi utenti.
== Flussi
Il gruppo ha individuato bisogni differenti a seconda della tipologia di utente. Sulla base di questi, è stata definita una lista di funzionalità previste nell'applicazione, assegnandole alle categorie di utenza che ne trarrebbero beneficio.

Queste funzionalità, denominate _flussi_, sono riportate nella tabella seguente, ciascuna associata alle relative categoria di utenza.

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

    [2], [Voglio poter impostare dei settings generali per non doverli ripetere in ogni #glossario("prompt")], [1, 2],
    [3], [Voglio poter definire routine quotidiane a parole per automatizzarle e risparmiare tempo], [1, 2],
    [4], [Voglio poter impostare i flussi di automazione solo tramite linguaggio naturale per non dover imparare nuovi linguaggi/tool], [1],
    [5], [Voglio poter modificare una #glossario("routine") esistente per non doverla ricreare], [1, 2],
    [6], [Voglio poter cancellare una routine esistente], [1, 2],
    [7], [Voglio poter visualizzare le funzionalità di ogni blocco per sapere cosa posso o non posso fare], [2],
    [8], [Voglio poter vedere la lista delle routine presenti], [1, 2],
    [9], [Voglio poter vedere i #glossario("log") delle azioni completate per assicurarmi del risultato], [2],
    [10], [Voglio poter vedere degli esempi di flusso per capire come funziona la piattaforma], [1],
    [11], [Voglio poter avere più proposte di flusso per poter scegliere il migliore], [2],
    [12], [Voglio poter fissare alcuni blocchi e far rigenerare gli altri mantenendo quelli fissati per migliorare il flusso], [2],
    [13], [Voglio poter modificare il flusso tramite #glossario("drag and drop")], [2],
    [14], [Voglio poter dare dei #glossario("feedback") ai flussi per migliorarne le prestazioni future], [1, 2],
    [15], [Voglio poter accedere a tutte le funzionalità della piattaforma], [1],
    [16], [Voglio poter usare la dark mode], [1, 2],
    [17], [Voglio poter interrompere un’automazione avviata], [1, 2],
    [18], [Voglio poter creare un’automazione vuota per crearla a mano], [2],
    [19], [Voglio poter avviare un’automazione], [1, 2],
    [20], [Voglio poter fare login nei servizi che richiedono autenticazione], [1, 2],
  ),
)

== Pagine
Il gruppo ha delineato le possibili pagine da costruire nell'applicativo web, indicando le funzionalità che verranno fornite da ciascuna pagina.
Le pagine individuate sono le seguenti:
- *login / registrazione*: pagina di registrazione e login
- *lista automazioni*: pagina principale dell'applicazione (home)
- *dettagli automazione*: pagina che mostra i dettagli di un'automazione
- *impostazioni*: pagina di impostazioni generali ed avanzate dell'applicazione

Segue la tabella che riporta per ciascuna pagina i flussi ad essa associati.

#align(
  center,
  table(
    align: center,
    columns: (auto, 1fr),
    rows: auto,
    inset: 9pt,
    table.header([*Pagina*], [*Flussi*]),
    [login / registrazione], [2],
    [lista automazioni], [1, 3, 6, 8, 10, 16, 18, 19],
    [dettagli automazione], [1, 5, 6, 7, 9, 11, 12, 13, 14, 17, 19, 20],
    [impostazioni], [2],
  ),
)
#pagebreak()
== _Wireframe_
Il gruppo ha prodotto bozze della struttura grafica delle pagine dell'applicativo, denominate #glossario("wireframe").\
Questi modelli grafici sono stati realizzati per avere uno schema generale dell'interfaccia utente e delle funzionalità previste ma non sono da considerarsi definitivi.\

I wireframe realizzati sono riportati di seguito:
#figure(image("../../../assets/img/wireframe/Login.png", width: 80%), caption: [Modello grafico della pagina _login_])

#figure(image("../../../assets/img/wireframe/List.png", width: 80%), caption: [Modello grafico della pagina _lista automazioni_])

#figure(image("../../../assets/img/wireframe/MAINUI.png", width: 80%), caption: [Modello grafico della pagina _dettagli automazione_])



== Organizzazione / Comunicazione
Per favorire una comunicazione più rapida e diretta, l'azienda ha proposto di utilizzare la piattaforma #glossario("Slack"), in modo da poter comunicare in tempo reale con i membri del gruppo.\

= Conclusioni
Tutto il gruppo _Sigma18_ ringrazia l'azienda per il tempo fornito e per la loro disponibilità.\
L'azienda ha espresso la propria disponibilità nel fornire incontri di formazione su tecnologie o metodologie, sotto forma di quattro corsi con una durata compresa tra le due e le quattro ore.

