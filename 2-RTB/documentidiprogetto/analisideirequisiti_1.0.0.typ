#import "../../templates/template.typ": *
#show: content => verbale(
  titoloDocumento: "Analisi dei Requisiti",
  abstract: "",
  responsabili: "",
  redattori: "Pietro Crotti",
  verificatori: "",
  tipo: "Documento d'uso Esterno",
  destinatari: ("Sigma18", "Prof. Tullio Vardanega", "Prof. Riccardo Cardin", "Var Group S.p.A."),
  versioneAttuale: "1.0.0",
  content: content,
  versioni: (
    "1.0.0",
    "2025/04/16",
    "Pietro Crotti",
    "",
    "Stesura iniziale documento",
  ),
)

= Introduzione
== Scopo del documento
Il seguente documento ha lo scopo di fornire un descrizione dettagliata dei *casi d'uso* e dei *requisiti* del progetto che l'azienda proponente _Var Group S.p.A._ ha presentato, grazie a uno studio approfondito del capitolato e una riunione in presenza effettuata nella sede di Padova in Via Salboro 22/B 35124 il giorno lunedi 16 Aprile 2025.\
Quindi tale documento è di elevata importanza in quanto chiarisce ogni dubbio che il gruppo aveva e costituisce una solida base per lo sviluppo del prodotto finale in quanto permette di avere una chiara visione delle *funzionalità* e dei *requisiti* richiesti dall'azienda proponente.
== Scopo del prodotto
Lo scopo del prodotto è quello di fornire un servizio che permette agli utenti di risparmiare tempo e semplificare le routine digitali che se no dovrebbero fare a mano.\
In particolare, grazie all'ausilio delle #glossario("API") esposte dagli #glossario("agenti"), l'applicativo interpreta la descrizione dell'automazione fornita dall'utente e genera il flusso di lavoro desiderato.\
Il flusso di lavoro verra quindi visualizzato attraverso un #glossario("client") che permette all'utente di modificare l'automazione creata grazie ad un interfaccia #glossario("drag & drop").\
Nell'interfaccia, i *blocchi* rappresentano le azioni effettuabili, mentre gli *archi* che li collegano tra loro corrispondono a relazioni tra i singoli componenti dell'automazione.
== Glossario
Per assicurare la massima chiarezza e prevenire qualsiasi possibile malinteso legato all'interpretazione dei termini utilizzati nei documenti, è stato predisposto un glossario dedicato. Questo strumento raccoglie e definisce in maniera precisa tutti i termini che potrebbero risultare ambigui, tecnici o comunque soggetti a interpretazioni diverse.\
All'interno dei documenti, ogni termine presente nel Glossario sarà opportunamente segnalato tramite la seguente notazione: #glossario("parola"), in modo da permettere al lettore di identificarne facilmente il significato esatto facendo riferimento al glossario stesso.
== Riferimenti
=== Riferimenti normativi

- #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C3.pdf")[Capitolato C3: Automatizzare le routine digitali tramite l'intelligenza generativa]

- #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf")[Regolamento progetto didattico]

- #link("https://www.iso.org/standard/65694.html")[ISO/IEC 31000:2018]

=== Riferimenti informativi

- #link("https://sigma18unipd.github.io/documentiCompilati/2-RTB/documentidiprogetto/glossario.pdf")[Glossario]

- #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T05.pdf")[Dispensa T05: Analisi dei requisiti]

- #link("https://www.math.unipd.it/~rcardin/swea/2022/Diagrammi%20Use%20Case.pdf")[Diagrammi Dei Casi d'Uso]

#pagebreak()
= Descrizione del prodotto
== Obbiettivi del prodotto
L'obbiettivo del prodotto è quello di far risparmiare tempo ai nostri utenti automatizzando routine digitali ,che altrimenti dovrebbero essere svolte manualmente, tramite l'uso delle #glossario("API") esposte dagli #glossario("agenti").\
== Utenti
Il prodotto è destinato a due tipologie di utenti: utente base e utente avanzato.\
=== Utente base
L'utente base è colui che utilizza il prodotto per la prima volta e ha bisogno di un'interfaccia semplice e intuitiva per poter utilizzare il prodotto senza difficoltà.\
=== Utente avanzato
L'utente avanzato è colui che possiede una formazione tale da comprendere il funzionamento di una #glossario("LLM") e che, pertanto, è in grado di sfruttare impostazioni avanzate per un'esperienza d'uso più personalizzata.
== Funzionalità e vincoli
= Casi d'uso
= Requisiti

