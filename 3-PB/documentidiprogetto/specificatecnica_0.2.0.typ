#import "../../templates/template.typ": *
#show: content => verbale(
  titoloDocumento: "Specifica Tecnica",
  abstract: "",
  responsabili: "Pietro Crotti",
  redattori: ("Carmelo Russello", "Aleena Mathew"),
  verificatori: ("Pietro Crotti", "Carmelo Russello"),
  tipo: "Documento Esterno",
  destinatari: ("Sigma\8", "Prof. Tullio Vardanega", "Prof. Riccardo Cardin", "Var Group S.p.A."),
  versioneAttuale: "0.2.0",
  content: content,
  versioni: (
    "0.2.0",
    "2025/08/22",
    "Aleena Mathew",
    "Carmelo Russello",
    "Stesura iniziale del paragrafo 3",
    "0.1.0",
    "2025/08/13",
    "Carmelo Russello",
    "Pietro Crotti",
    "Stesura iniziale documento",
  ),
)


= Introduzione
== Scopo del documento
Questo documento ha l'obiettivo di illustrare in modo approfondito le decisioni tecniche e le soluzioni tecnologiche adottate dal team per lo sviluppo del prodotto richiesto dal capitolato C3 "Automatizzare le _routine_ digitali tramite l'intelligenza generativa" proposto da Var Group S.p.A.\

La Specifica Tecnica fornisce una descrizione completa delle tecnologie selezionate, delle architetture software progettate e delle metodologie implementative scelte per costruire il sistema informatico dedicato all'automazione delle routine digitali.


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

- #link("https://sigma18unipd.github.io/documentiCompilati/2-RTB/documentidiprogetto/normediprogetto_1.0.0.pdf")[Norme di progetto (1.0.0)]

- #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C3.pdf")[Capitolato C3: Automatizzare le _routine_ digitali tramite l'intelligenza generativa] (*Ultimo accesso il: 16/07/2025*)

- #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf")[Regolamento progetto didattico] (*Ultimo accesso il: 16/07/2025*)

- #link("https://www.iso.org/standard/65694.html")[ISO/IEC 31000:2018] (*Ultimo accesso il: 16/07/2025*)

=== Riferimenti informativi
- #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C3.pdf")[Capitolato C3: Automatizzare le _routine_ digitali tramite l'intelligenza generativa] (*Ultimo accesso il: 16/07/2025*)

- #link("https://sigma18unipd.github.io/documentiCompilati/2-RTB/documentidiprogetto/glossario.pdf")[Glossario (0.11.0)]





= Tecnologie
== Linguaggi utilizzati
=== TypeScript
TypeScript è un superset di JavaScript che aggiunge tipizzazione statica e altre funzionalità avanzate scelto per la sua capacità di migliorare la manutenibilità del codice e ridurre gli errori durante lo sviluppo.

- *Versione*: 5.8.3

- *Utilizzo nel codice*: lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.

- *Documentazione*: https://www.typescriptlang.org/docs/ (*Ultimo accesso il: XX/0X/2025*)

=== HTML

Linguaggio di markup utilizzato per la creazione di pagine web fornendo la struttura di base per il contenuto web.

- *Versione*: 5

- *Utilizzo nel codice*: lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.

- *Documentazione*: https://developer.mozilla.org/en-US/docs/Web/HTML (*Ultimo accesso il: XX/0X/2025*)

=== CSS

Un linguaggio di stile utilizzato per descrivere l'aspetto e la formattazione di un documento scritto in HTML.

- *Versione*: 3

- *Utilizzo nel codice*: lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.

- *Documentazione*: https://developer.mozilla.org/en-US/docs/Web/CSS (*Ultimo accesso il: XX/0X/2025*)

=== Python
Python è un linguaggio di programmazione interpretato ad alto livello che
supporta diversi paradigmi di programmazione, come quello orientato agli oggetti (con supporto all'ereditarietà multipla), quello imperativo e quello funzionale.

- *Versione*: X.X.X

- *Utilizzo nel codice*: lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.

- *Documentazione*: https://docs.python.org/3/ (*Ultimo accesso il: XX/0X/2025*)

== Framework e librerie

=== React

React è una libreria JavaScript per la creazione di interfacce utente. Semplifica lo sviluppo di applicazioni web complesse attraverso un approccio basato sui componenti.

- *Versione*: 19.1.2

- *Utilizzo nel codice*: lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.

- *Documentazione*: https://react.dev/learn (*Ultimo accesso il: XX/0X/2025*)

=== React Router

React Router è una libreria per la gestione della navigazione in applicazioni React.

- *Versione*: 7.6.0

- *Utilizzo nel codice*: lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.

- *Documentazione*: https://reactrouter.com/7.6.0/home (*Ultimo accesso il: XX/0X/2025*)

=== React Flow

React Flow è una libreria per la creazione di diagrammi e flussi di lavoro interattivi in React. Fornisce una serie di componenti e strumenti per costruire interfacce utente complesse in modo semplice e intuitivo.

- *Versione*: 12.6.4

- *Utilizzo nel codice*: lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.

- *Documentazione*: https://reactflow.dev/ (*Ultimo accesso il: XX/0X/2025*)

=== Shadcn

Shadcn è una libreria per la creazione di interfacce utente in React.

- *Versione*: 2.10.0

- *Utilizzo nel codice*: lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.

- *Documentazione*: https://ui.shadcn.com/docs (*Ultimo accesso il: XX/0X/2025*)

=== Flask

Flask è un framework per Python progettato per facilitare lo sviluppo di applicazioni web.

- *Versione*: X.X.X

- *Utilizzo nel codice*: lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.


- *Documentazione*: https://flask.palletsprojects.com/en/stable/# \ (*Ultimo accesso il: XX/0X/2025*)

=== Boto3

Boto3 è la libreria Amazon Web Services (AWS) SDK per Python, che consente di interagire con i servizi AWS.

- *Versione*: X.X.X

- *Utilizzo nel codice*: lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.

- *Documentazione*: https://boto3.amazonaws.com/v1/documentation/api/latest/index.html\ (*Ultimo accesso il: XX/0X/2025*)

== _Database_

=== MongoDB
MongoDB è un database NoSQL orientato ai documenti che utilizza un modello di dati flessibile e scalabile.

- *Versione*: X.X.X

- *Utilizzo nel codice*: lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.

- *Documentazione*: https://docs.mongodb.com/ (*Ultimo accesso il: XX/0X/2025*)

= Architettura

== Architettura di deployment
L'architettura di deployment del sistema è composta da tre componenti principali: il _frontend_, il _backend_ e il _database_.

//TODO inserire immagine struttura

Il _frontend_ è l'interfaccia grafica sviluppata in React che consente agli utenti di visualizzare, creare e modificare i workflow.

Tutte le interazioni dell'utente vengono gestite dal _backend_, realizzato in Python, che si occupa di elaborare le richieste, orchestrare la logica applicativa e comunicare con l'agente per l'esecuzione delle automazioni.

Il _database_ MongoDB memorizza in modo sicuro i dati relativi ai workflow e agli utenti, garantendo persistenza e integrità.


L'intera infrastruttura si appoggia a Docker, per garantire portabilità, isolamento e semplicità di gestione.

L'architettura di deployment prevede tre container principali: frontend, backend e database. Per ciascun servizio è stato predisposto un Dockerfile che installa le dipendenze necessarie e copia il codice sorgente all'interno del container. Ogni servizio espone una porta specifica:
- _frontend_: 5173;
- _backend_: 5000;
- _database_: 27017.

La configurazione e l'orchestrazione dei container sono gestite tramite un file `compose.yaml`, che definisce le variabili d'ambiente necessarie per permettere la comunicazione tra i container.
Per avviare l'intera infrastruttura è sufficiente eseguire il comando `docker compose up`, che provvede automaticamente alla creazione e all'avvio dei container secondo la configurazione stabilita.

== Architettura logica
//TO DO maybe da mettere sopra

== Design pattern

=== Singleton

Si tratta di un design pattern creazionale che assicura che una classe abbia una sola istanza e fornisce un punto di accesso globale a tale istanza.\
Alcune componenti del sistema devono mantenere la propria integrità per tutta la durata dell'esecuzione del prodotto, evitando la creazione di istanze multiple. Questo pattern garantisce che, ovunque venga richiesto il componente, venga sempre restituita la stessa istanza.


//TODO finish
Nel contesto del nostro progetto, il pattern è stato adottato per  GetDB, FlaskAPP: Singleton

=== Decorator
Si tratta di un design pattern strutturale che permette di estendere dinamicamente le funzionalità di un oggetto, senza modificarne la struttura interna.\
Ciò è possibile grazie al _decoratore_, ovvero un oggetto che implementa la stessa interfaccia dell'oggetto originale aggiungendo nuovi comportamenti in modo trasparente e modulare.
In questo modo, è possibile comporre più decoratori per arricchire progressivamente le funzionalità, favorendo la flessibilità e la riusabilità del codice.



//TODO finish
Nel contesto del nostro progetto, il pattern è stato adottato per

ProtectedRoute: Decorator

=== Facade

Si tratta di un design pattern strutturale che fornisce un'interfaccia semplificata per un insieme di interfacce in un sottosistema, facilitando l'interazione con esso.
Questo pattern è particolarmente utile quando si desidera nascondere la complessità di un sistema e offrire un punto di accesso unico e intuitivo per l'utente.


//TODO finish

Nel contesto del nostro progetto, il pattern è stato adottato per

CognitoAuth, LLMQuery: Facade

=== Template

Si tratta di un design pattern comportamentale che definisce la struttura di un algoritmo in una classe base, delegando l'implementazione di alcuni passi alle sottoclassi.
\ Questo fa sì che la logica generale dell'algoritmo rimanga invariata, mentre le sottoclassi possono implementare specifici passaggi secondo le proprie esigenze.\
Viene favorita la riusabilità e la flessibilità del codice, consentendo di estendere il comportamento senza modificarne la struttura complessiva.

//TODO finish
Nel contesto del nostro progetto, il pattern è stato adottato per

Data Saving -> DTO: Template


=== Iterator / Visitor
Running Blocks: Iterator or Visitor


=== Object Adapter //cambia se si tratta di class

Si tratta di un design pattern strutturale che permette la collaborazione tra oggetti con interfacce incompatibili tra loro.

In particolare, il client interagisce con l'interfaccia _target_, implementata dall'_adapter_. Quest'ultimo, tramite composizione, contiene l'oggetto _adaptee_ e si occupa di tradurre le richieste provenienti dal client in operazioni compatibili con l'interfaccia dell'_adaptee_. In questo modo, l'adapter funge da ponte tra le due interfacce, garantendo l'integrazione senza modificare il codice originale degli oggetti coinvolti.

Di seguito sono elencati i componenti principali dell'Object Adapter:

- _Target_: interfaccia che il client si aspetta di utilizzare;
- _Adaptee_: oggetto con l'interfaccia incompatibile;
- _Adapter_: implementa l'interfaccia _target_ e mantiene un riferimento all'_adaptee_.

//TODO: inserire info corrette

Nel contesto del nostro progetto, l'Object Adapter è stato impiegato per la gestione dei blocchi all'interno del sistema di automazione. Ogni blocco rappresenta una classe che può essere estesa con tipologie specifiche, consentendo una maggiore flessibilità e riusabilità del codice.


// Blocks -> A block is a class that gets extended with specific types. Converting response to blocks: Adapter


