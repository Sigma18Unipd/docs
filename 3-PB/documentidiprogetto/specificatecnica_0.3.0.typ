#import "../../templates/template.typ": *
#show: content => verbale(
  titoloDocumento: "Specifica Tecnica",
  abstract: "",
  responsabili: "Pietro Crotti",
  redattori: ("Carmelo Russello", "Aleena Mathew", "Pietro Crotti"),
  verificatori: ("Pietro Crotti", "Carmelo Russello", "Matteo Marangon"),
  tipo: "Documento Esterno",
  destinatari: ("Sigma18", "Prof. Tullio Vardanega", "Prof. Riccardo Cardin", "Var Group S.p.A."),
  versioneAttuale: "0.3.0",
  content: content,
  versioni: (
    "0.3.0",
    "2025/08/28",
    "Pietro Crotti",
    "Matteo Marangon",
    "Aggiunti dettagli su sezione Tecnologie",
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
_TypeScript_ è un superset di _JavaScript_ che aggiunge tipizzazione statica e altre funzionalità avanzate scelto per la sua capacità di migliorare la manutenibilità del codice e ridurre gli errori durante lo sviluppo.

- *Versione*: 5.8.3

- *Utilizzo nel codice*: La parte frontend è sviluppata in _TypeScript_, ad esempio nel file di bootstrap _main.tsx_, dove vengono importati moduli tipizzati e avviata l'app _React_.

- *Documentazione*: https://www.typescriptlang.org/docs/ (*Ultimo accesso il: XX/0X/2025*)

=== HTML

Linguaggio di markup utilizzato per la creazione di pagine web fornendo la struttura di base per il contenuto web.

- *Versione*: 5

- *Utilizzo nel codice*: Il punto d'ingresso dell'applicazione web è il file `index.html`, che espone un `<div id="root">` in cui React monta l'interfaccia.



- *Documentazione*: https://developer.mozilla.org/en-US/docs/Web/HTML (*Ultimo accesso il: XX/0X/2025*)

=== CSS

Un linguaggio di stile utilizzato per descrivere l'aspetto e la formattazione di un documento scritto in _HTML_.

- *Versione*: 3

- *Utilizzo nel codice*:  Gli stili globali sono gestiti in `index.css`, che importa Tailwind e dichiara varianti personalizzate e variabili di tema per l'interfaccia.

- *Documentazione*: https://developer.mozilla.org/en-US/docs/Web/CSS (*Ultimo accesso il: XX/0X/2025*)

=== Python
_Python_ è un linguaggio di programmazione interpretato ad alto livello che
supporta diversi paradigmi di programmazione, come quello orientato agli oggetti (con supporto all'ereditarietà multipla), quello imperativo e quello funzionale.

- *Versione*: X.X.X

- *Utilizzo nel codice*:  Il _backend_ è implementato in _Python_; `backend.py` contiene l'inizializzazione dei servizi e le rotte _HTTP_ del _server_.

- *Documentazione*: https://docs.python.org/3/ (*Ultimo accesso il: XX/0X/2025*)

== Framework e librerie

=== React

_React_ è una libreria _JavaScript_ per la creazione di interfacce utente. Semplifica lo sviluppo di applicazioni web complesse attraverso un approccio basato sui componenti.

- *Versione*: 19.1.2

- *Utilizzo nel codice*: L'interfaccia _client_ è realizzata con _React_: `main.tsx` importa i componenti principali e renderizza il router tramite _createRoot_.

- *Documentazione*: https://react.dev/learn (*Ultimo accesso il: XX/0X/2025*)

=== React Router

_React_ Router è una libreria per la gestione della navigazione in applicazioni _React_.

- *Versione*: 7.6.0

- *Utilizzo nel codice*:  La navigazione _client-side_ è configurata con _createBrowserRouter_, che mappa le varie pagine (_login_, _dashboard_, _edit_, ecc.) e gestisce i _redirect_.

- *Documentazione*: https://reactrouter.com/7.6.0/home (*Ultimo accesso il: XX/0X/2025*)

=== React Flow

_React Flow_ è una libreria per la creazione di diagrammi e flussi di lavoro interattivi in _React_. Fornisce una serie di componenti e strumenti per costruire interfacce utente complesse in modo semplice e intuitivo.

- *Versione*: 12.6.4

- *Utilizzo nel codice*:  L'_editor_ visuale di _workflow_ utilizza la libreria `@xyflow/react`, importata e istanziata nel componente Edit con nodi ed _edge_ dinamici.

- *Documentazione*: https://reactflow.dev/ (*Ultimo accesso il: XX/0X/2025*)

=== Shadcn

_Shadcn_ è una libreria per la creazione di interfacce utente in _React_.

- *Versione*: 2.10.0

- *Utilizzo nel codice*:  I componenti _UI_ sono generati secondo lo schema _shadcn_ (`components.json`) e implementati con _Radix_ e _class-variance-authority_, come nel pulsante riutilizzabile _Button_.

- *Documentazione*: https://ui.shadcn.com/docs (*Ultimo accesso il: XX/0X/2025*)

=== Flask

_Flask_ è un _framework_ per _Python_ progettato per facilitare lo sviluppo di applicazioni web.

- *Versione*: X.X.X

- *Utilizzo nel codice*: Il _server web_ è basato su _Flask_; l'applicazione viene creata tramite _FlaskAppSingleton_, con _CORS_ abilitato e definizione di route per _login_ e gestione dei _workflow_.


- *Documentazione*: https://flask.palletsprojects.com/en/stable/# \ (*Ultimo accesso il: XX/0X/2025*)

=== Boto3

_Boto3_ è la libreria _Amazon Web Services (AWS) SDK_ per _Python_, che consente di interagire con i servizi _AWS_.

- *Versione*: X.X.X

- *Utilizzo nel codice*:  L'autenticazione sfrutta _AWS Cognito_ tramite il _client boto3 cognito-idp_, configurato con le credenziali e la regione _AWS_ specificata.

- *Documentazione*: https://boto3.amazonaws.com/v1/documentation/api/latest/index.html\ (*Ultimo accesso il: XX/0X/2025*)

== _Database_

=== MongoDB
_MongoDB_ è un database _NoSQL_ orientato ai documenti che utilizza un modello di dati flessibile e scalabile.

- *Versione*: X.X.X

- *Utilizzo nel codice*: La persistenza dei dati avviene in _MongoDB_, con connessione gestita da _MongoDBSingleton_ (basato su _flask_pymongo_) e utilizzo del _database_ nelle rotte dell'app.

- *Documentazione*: https://docs.mongodb.com/ (*Ultimo accesso il: XX/0X/2025*)

= Architettura

== Architettura di deployment
L'architettura di deployment del sistema è composta da tre componenti principali: il _frontend_, il _backend_ e il _database_.

//TODO inserire immagine struttura

Il _frontend_ è l'interfaccia grafica sviluppata in React che consente agli utenti di visualizzare, creare e modificare i workflow.

Tutte le interazioni dell'utente vengono gestite dal _backend_, realizzato in Python, che si occupa di elaborare le richieste, orchestrare la logica applicativa e comunicare con l'agente per l'esecuzione delle automazioni.

Il _database_ MongoDB memorizza in modo sicuro i dati relativi ai workflow e agli utenti, garantendo persistenza e integrità.

//TO DO check
L'intera infrastruttura si appoggia a AWS, che fornisce i servizi di hosting, gestione del database e scalabilità necessari per garantire un funzionamento efficiente e affidabile del sistema.
Si può accedere al servizio dal link http://54.78.223.77:5173/
== Architettura logica
//TO DO maybe da mettere sopra

== Design pattern

=== Decorator
Si tratta di un design pattern strutturale che permette di estendere dinamicamente le funzionalità di un oggetto, senza modificarne la struttura interna.\
Ciò è possibile grazie al _decoratore_, ovvero un oggetto che implementa la stessa interfaccia dell'oggetto originale aggiungendo nuovi comportamenti in modo modulare.
In questo modo, è possibile comporre più decoratori per arricchire progressivamente le funzionalità, favorendo la flessibilità e la riusabilità del codice.



//TODO check
Nel contesto del nostro progetto, il pattern è stato adottato nella seguente classe:
- *_ProtectedDecorator_*: si tratta di una classe che implementa l'interfaccia _ProtectedDecoratorInterface_ per fornire un sistema di autenticazione e autorizzazione basato su JWT (JSON Web Token).




=== Facade

Si tratta di un design pattern strutturale che fornisce un'interfaccia unica e semplice per un sottosistema complesso, nascondendo la complessità sottostante e facilitando l'interazione con esso fornendo un punto di accesso unico e intuitivo per l'utente.


//TODO finish

Nel contesto del nostro progetto, il pattern è stato adottato nel seguente caso:
- *_LLMFacade_*: fornisce un'interfaccia semplificata per l'interazione con i servizi di LLM. La classe offre metodi come _generate_workflow(_) e _summarize()_.




=== Iterator
Si tratta di un design pattern comportamentale che consente di accedere agli elementi di una collezione in modo sequenziale senza esporre la struttura interna della collezione stessa.\

Nel contesto del nostro progetto, il pattern è stato adottato nel seguente caso:
- *_FlowIterator_*: fornisce un'implementazione dell'interfaccia _FlowIteratorInterface_ per consentire l'accesso sequenziale ai blocchi di un workflow.


=== Singleton

Si tratta di un design pattern creazionale che assicura che una classe abbia una sola istanza e fornisce un punto di accesso globale a tale istanza.\
Alcune componenti del sistema devono mantenere la propria integrità per tutta la durata dell'esecuzione del prodotto, evitando la creazione di istanze multiple. Questo pattern garantisce che, ovunque venga richiesto il componente, venga sempre restituita la stessa istanza.


//TODO controlla FlaskApp
Nel contesto del nostro progetto, il pattern è stato adottato nei seguenti casi:
- *_BlockFactorySingleton_*: si tratta di una classe che garantisce che esista una sola istanza globale della _factory_ di blocchi all'interno dell'applicazione.\

- *_FlaskAppSingleton_*: si tratta di una classe che garantisce che esista una sola istanza globale dell'applicazione Flask all'interno del sistema. Questo assicura che tutti i componenti dell'architettura facciano riferimento alla stessa istanza dell'applicazione web, evitando conflitti di configurazione e garantendo coerenza nell'handling delle richieste HTTP.

=== Strategy

Si tratta di un design pattern comportamentale che consente di definire una famiglia di algoritmi, rendendoli intercambiabili.

Nel contesto del nostro progetto, il pattern è stato adottato nei seguenti casi:
- *_JsonParserStrategy_*: fornisce un'interfaccia per la definizione di diverse strategie di parsing dei documenti JSON, consentendo di selezionare l'algoritmo più appropriato in base al contesto.
- *_SanitizationStrategy_*: fornisce un'interfaccia per la definizione di diverse strategie di sanitizzazione dei dati, consentendo di selezionare l'algoritmo più appropriato in base al contesto.
