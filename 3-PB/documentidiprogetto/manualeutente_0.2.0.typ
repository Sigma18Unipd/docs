#import "../../templates/template.typ": *
#show: content => verbale(
  titoloDocumento: "Manuale Utente",
  abstract: "",
  responsabili: ("Pietro Crotti",),
  redattori: ("Aleena Mathew",),
  verificatori: ("Pietro Crotti",),
  tipo: "Documento Esterno",
  destinatari: ("Sigma18", "Prof. Tullio Vardanega", "Prof. Riccardo Cardin", "Var Group S.p.A."),
  versioneAttuale: "0.2.0",
  content: content,
  versioni: (
    "0.2.0",
    "2025/08/18",
    "Carmelo Russello",
    "Matteo Marangon",
    "Stesura paragrafo installazione",
    "0.1.0",
    "2025/08/14",
    "Aleena Mathew",
    "Pietro Crotti",
    "Stesura iniziale documento",
  ),
)


= Introduzione
== Scopo del documento
Questo documento ha l'obiettivo di fornire una guida dettagliata sull'utilizzo del prodotto software sviluppato dal gruppo Sigma18 richiesto dal capitolato C3 "Automatizzare le _routine_ digitali tramite l'intelligenza generativa" proposto da Var Group S.p.A.

A tal fine, verranno presentati i requisiti minimi necessari per l’avvio del prodotto, inclusi i programmi indispensabili per la sua esecuzione, le procedure di configurazione e le modalità per sfruttare al meglio tutte le funzionalità offerte dal sistema.


== Scopo del prodotto
Il prodotto fornisce un servizio che permette agli utenti di generare automazioni e #glossario("routine").
In particolare, grazie all'ausilio dell'intelligenza artificiale, l'applicativo può interpretare descrizioni di automazioni fornite in linguaggio naturale e generare flussi di lavoro a partire da esse.
Il flusso di lavoro verrà quindi visualizzato attraverso un #glossario("client") che permette all'utente di modificare l'automazione creata grazie ad un'interfaccia #glossario("drag & drop").\
Nell'interfaccia, i *blocchi* rappresentano le azioni effettuabili, mentre gli *archi* che li collegano tra loro corrispondono a relazioni tra i singoli componenti dell'automazione.


== Glossario
Per assicurare la massima chiarezza e prevenire possibili malintesi legati all'interpretazione dei termini utilizzati nei documenti, è stato redatto un glossario. #link("https://sigma18unipd.github.io/documentiCompilati/2-RTB/documentidiprogetto/glossario.pdf")[Questo] strumento raccoglie e definisce in maniera precisa tutti i termini che potrebbero risultare ambigui, tecnici o comunque soggetti a interpretazioni diverse.

All'interno dei documenti, ogni termine presente nel Glossario sarà opportunamente segnalato tramite la seguente notazione: #glossario("parola"), in modo da permettere al lettore di identificarne facilmente il significato esatto facendo riferimento al glossario stesso.

== Riferimenti
=== Riferimenti normativi

- #link("https://sigma18unipd.github.io/documentiCompilati/2-RTB/documentidiprogetto/normediprogetto_1.0.0.pdf")[Norme di progetto] [versione 1.0.0]

- #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C3.pdf")[Capitolato C3: Automatizzare le _routine_ digitali tramite l'intelligenza generativa] (*Ultimo accesso il: 16/08/2025*)

- #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf")[Regolamento progetto didattico], in particolare la _slide 23_ (*Ultimo accesso il: 16/08/2025*)

- #link("https://www.iso.org/standard/65694.html")[ISO/IEC 31000:2018] (*Ultimo accesso il: 16/07/2025*)

=== Riferimenti informativi
//TODO: link
- #link("https://sigma18unipd.github.io/documentiCompilati/2-RTB/documentidiprogetto/glossario.pdf")[Glossario] [versione 1.0.0]
- #link("")[Specifica tecnica] [versione 1.0.0]





= Requisiti
<requisiti>
Per poter utilizzare il prodotto, è necessario soddisfare i requisiti elencati di seguito.

== Requisiti hardware

//connessione??

== Requisiti software

I requisiti software indicano le dipendenze e i programmi che devono essere installati sul sistema dell’utente per consentire l’avvio e il corretto funzionamento del prodotto.

Il sistema si appoggia a #glossario("Docker") per garantire la corretta esecuzione dell’applicativo. Pertanto, è necessario che Docker sia installato sulla propria macchina prima di procedere con l’utilizzo del prodotto.

Se non è presente, è possibile installarlo seguendo le istruzioni disponibili sul #link("https://docs.docker.com/get-docker/")[sito ufficiale] [ultimo accesso il: 18/08/2025].

== Requisiti di sistema operativo
È garantito il corretto funzionamento del prodotto sui seguenti sistemi operativi:
//TODO elenco

Si raccomanda di utilizzare sistemi aggiornati per assicurare la massima stabilità e sicurezza.



== Requisiti browser
I requisiti browser definiscono le specifiche tecniche minime necessarie per assicurare la corretta visualizzazione e fruizione del software su un browser web specifico.
/*
Techminds:
 Firefox 128 ESR;
• Chromium 133.*/


= Installazione
La seguente sezione fornisce le istruzioni dettagliate per l'installazione e l'avvio dell'applicativo.


== Clonazione della repository
<repo>
Per iniziare, è necessario clonare la repository del progetto per ottenere una copia locale. \
Per farlo, è sufficiente recarsi nella #link("https://github.com/Sigma18Unipd/ProductBaseline")[pagina Github del progetto] e utilizzare _l'url di clonazione_ fornito per clonare il progetto nella cartella desiderata.

Dopo aver scelto la cartella di destinazione, è possibile clonare la repository utilizzando uno dei seguenti comandi:

#figure(
  [
    #show raw.where(block: true): set block(fill: rgb("#f6e2e2"), inset: 1em, radius: 0.3em, width: 100%)
    ```bash
    git clone https://github.com/Sigma18Unipd/ProductBaseline.git
    ```
  ],
  caption: [Clonazione tramite HTTPS],
)

#figure(
  [
    #show raw.where(block: true): set block(fill: rgb("#f6e2e2"), inset: 1em, radius: 0.3em, width: 100%)
    ```bash
    git clone git@github.com:Sigma18Unipd/ProductBaseline.git
    ```
  ],
  caption: [Clonazione tramite SSH],
)
Si consiglia di utilizzare il metodo HTTPS se non si dispone di una chiave SSH configurata su GitHub.

Prima di poter eseguire il comando di clonazione, è necessario verificare che Git sia installato sul proprio sistema. Se Git non è presente, è possibile installarlo seguendo le istruzioni disponibili sul #link("https://git-scm.com/book/en/v2/Getting-Started-Installing-Git")[sito ufficiale di Git] [ultimo accesso il: 18/08/2025].


== Istruzioni per l'avvio
Prima di procedere con l’avvio del sistema, bisogna assicurarsi di aver soddisfatto i #link(<requisiti>)[requisiti minimi] e di aver scaricato correttamente la repository seguendo le istruzioni riportate nella #link(<repo>)[sezione 3.1].

Di seguito vengono fornite le istruzioni da seguire per il corretto avvio del sistema.\
Si noti che all'interno della repository, è disponibile un file, `README.md`, che riporta le stesse istruzioni per il corretto avvio.


+ Aprire il terminale e posizionarsi nella cartella della repository precedentemente scaricata.
+ Avviare il sistema tramite Docker Compose eseguendo uno dei seguenti comandi:
  #figure(
    [
      #show raw.where(block: true): set block(fill: rgb("#f6e2e2"), inset: 1em, radius: 0.3em, width: 100%)
      ```bash
      docker compose up --build
      ```
    ],
    caption: [In caso di primo avvio],
  )
  #figure(
    [
      #show raw.where(block: true): set block(fill: rgb("#f6e2e2"), inset: 1em, radius: 0.3em, width: 100%)
      ```bash
      docker compose up
      ```
    ],
    caption: [In caso avvii successivi],
  )
+ Attendere che il sistema venga avviato completamente, monitorando i log dei vari container per verificare che non ci siano errori.
// TODO: aggiungere foto log





== Istruzioni per lo spegnimento

È necessario assicurarsi di aver aperto il terminale nella cartella della repository precedentemente clonata prima di eseguire i comandi riportati di seguito.
- Per interrompere l'esecuzione dell'ambiente precedentemente avviato:
  #figure(
    [
      #show raw.where(block: true): set block(fill: rgb("#f6e2e2"), inset: 1em, radius: 0.3em, width: 100%)
      ```bash
      docker compose down
      ```
    ],
  )
- Per riavviare il sistema:
  #figure(
    [
      #show raw.where(block: true): set block(fill: rgb("#f6e2e2"), inset: 1em, radius: 0.3em, width: 100%)
      ```bash
      docker compose up
      ```
    ],
  )




= Istruzioni all'uso
== Registrazione
== Login
== Dashboard
== Modifica flusso


