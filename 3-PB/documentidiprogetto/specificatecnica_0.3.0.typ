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

- *Utilizzo nel codice*:  Il _backend_ è implementato in _Python_; `backend.py` contiene l'inizializzazione dei servizi e le _route_ _HTTP_ del _server_.

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

- *Utilizzo nel codice*: La persistenza dei dati avviene in _MongoDB_, con connessione gestita da _MongoDBSingleton_ (basato su _flask_pymongo_) e utilizzo del _database_ nelle _route_ dell'app.

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
In questa sezione vengono descritti i design pattern adottati e il loro utilizzo.

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


#pagebreak()

== Architettura Frontend

Per lo sviluppo del frontend, è stata adottata un'architettura modulare e scalabile basata su componenti riutilizzabili.
Questa scelta permette di aggiungere facilimente nuove _feature_ o componenti senza compromettere il resto.
Viene quindi facilitata la manutenzione e l'estendibilità.

Per il suo sviluppo sono stati utlizzati React, Vite e TypeScript.

=== Struttura del codice
Viene riportata una panoramica della struttura delle cartelle e dei file principali riguardanti il frontend:

#align(center)[
  ```
  frontend
    ├── node_modules
    │   └── ....
    ├── src
    │   └── components
    │   │   └── ui
    │   └── features
    │   │   └── auth
    │   │     └── ....
    │   │   └── dashboard
    │   │     └── ....
    │   │   └── edit
    │   │     └── nodes
    │   └── lib
    │   │   └── utils
    │   └── main.tsx
    ├── vite.config.ts
    ├── index.html
    └── ...
  ```
]


Nella cartella `src` è contenuto il codice sorgente dell'applicazione.
Al suo interno troviamo:
- `main.tsx`: punto di ingresso dell'applicazione.
- `components`: cartella contente le sotto-cartelle come `ui` e `magicui`. La prima contiene componenti di interfaccia utente generici come i bottoni e le card, la seconda invece componenti con effetti grafici come i bottoni arcobaleno.
- `features`: contiene le funzionalità principali suddivise per nel seguente modo:
  - `auth`: gestisce l'autenticazione (login, registrazione, conferma).
  - `dashboard`: gestisce la dashboard utente.
  - `edit`: gestisce a modifica di contenuti, con una sottocartella `nodes` per i vari tipi di nodi (es. `telegramSendBotMessage.tsx`).
- `lib`: contiene utility e funzioni di supporto (`utils.ts`).

I file di configurazione, come `vite.config.ts`, `tsconfig.json`, gestiscono la build, i tipi TypeScript e le dipendenze. Invece file come `index.html` e `index.css` gestiscono la struttura e lo stile globale.


=== Componenti

In questa sezione vengono descritte i vari componenti di interfaccia utente presenti nella cartella `components`.


Di seguito vengono elencati i principali componenti presenti:
- *alert-dialog*: componente per mostrare finestre di dialogo di avviso/conferma.
- *button*: bottone personalizzato con varianti di stile e gestione degli stati.
- *card*: contenitore visivo per raggruppare contenuti con struttura flessibile.
- *input*, *textarea*, *input-otp*, *form*, *label*: gestiscono form e campi di input.
- *menubar*, *navigation-menu*, *context-menu*: componenti per la navigazione e i menù di navigazione per organizzare le azioni disponibili all'  utente.

=== Composizione
Avendo adoperato un'architettura modulare, i componenti
seguono un pattern di composizione modulare permettendo di combinare più elementi. Questo approccio favorisce la riusabilità e la manutenibilità del codice.

Viene riportato un esempio di codice che mostra come viene composto un _dialog_ per la creazione di un nuovo workflow utilizzando vari componenti riutilizzabili:


```tsx
          <Dialog>
            <DialogTrigger asChild>
              <Button>Create a Workflow</Button>
            </DialogTrigger>
            <DialogContent className='sm:max-w-[500px]'>
              <DialogHeader>
                <DialogTitle>Create a new workflow</DialogTitle>
              </DialogHeader>
              <div className='grid gap-4'>
                <div className='grid gap-2'>
                  <Label htmlFor='name-1'>Name</Label>
                  <Input
                    onChange={e => setNewWorkflowName(e.target.value)}
                    type='text'
                    placeholder='Enter the name of your workflow'
                    className='resize-none'
                  />
                </div>
              </div>
              <DialogFooter>
                <DialogClose asChild>
                  <Button variant='outline'>Cancel</Button>
                </DialogClose>
                <Button type='submit' onClick={() =>  createNewWorkflow(newWorkflowName)}>
                  Create
                </Button>
              </DialogFooter>
            </DialogContent>
          </Dialog>
```

== Architettura Backend

Il backend è stato sviluppato in _Python_ ed eseguito in un contesto Flask avviato tramite lo _singleton_ _FlasjkAppSingleton_ e containerizzabile con un dockerfile che prepara un'immagine basata su python3.13 e definisce vari target.
Le variabili d'ambiente vengono caricate e usate per configurare il client AWS Cognito e la connessione a MongoDB, quest'ultima gestita dal singleton _MongoDBSingleton_.

=== Gestione dell'autenticazione delle _Route_

Il file `backend.py` costituisce il nucleo applicativo del sistema, occupandosi sia della definizione delle principali _route_ _REST_ sia della gestione dei meccanismi di autenticazione basati su _JWT_ e _AWS Cognito_.

Le _route_ pubbliche, come `/login`, `/register` e `/confirm`, consentono l'interazione con _Cognito_ per la registrazione e l'accesso degli utenti. In tale contesto, i _token JWT_ vengono generati e successivamente verificati mediante le funzioni disponibili in `jwtUtils.py`, che implementano la logica di creazione, decodifica e validazione.

Un ruolo centrale è ricoperto dal decoratore di autenticazione `protected`, definito all'interno dello stesso `backend.py`. Esso utilizza la direttiva `@wraps` per mantenere i metadati della funzione decorata e incapsula la logica di verifica dei _token_. In particolare:

- recupera dalla richiesta il _cookie_ `jwtToken`;

- lo valida attraverso la funzione `verifyJwt`, che decodifica il _token_ utilizzando la chiave segreta configurata e restituisce None in caso di firma scaduta o non valida;

- se il _token_ è assente o non valido, effettua un _redirect_ automatico alla pagina di login (`/login`, `HTTP 302`);

- se la validazione ha successo, associa l'indirizzo e-mail dell'utente autenticato al contesto globale di _Flask_ (`g.email`), permettendo così di identificarlo nelle successive elaborazioni.

Tutte le _API_ che richiedono autenticazione sono annotate con il decoratore `@protected`, posto immediatamente sotto la definizione della rotta (`@app.route`). Tra queste rientrano la _dashboard_ e le _route_ relative alla gestione dei _workflow_ - creazione (`/api/new`), recupero, salvataggio, cancellazione ed esecuzione (`/api/flows/<id>`) - nonché le _API_ per l'elaborazione dei prompt verso l'_LLM_ (`/api/prompt`) e le operazioni di _logout_.

Grazie a questa architettura, la logica di validazione dei _JWT_ viene centralizzata e riutilizzata in maniera uniforme, semplificando lo sviluppo e garantendo al contempo un livello di sicurezza costante su tutte le _route_ protette.


=== Processo di generazione dei workflow

Il processo di generazione dei workflow avviene in diverse fasi:

1. *Invocazione dell'agente LLM* - La generazione parte da `agent_facade`, che invia il _prompt_ a un agente _AWS Bedrock_ e concatena i _chunk_ di risposta in una stringa _JSON_.

2. *Parsing e sanitizzazione preliminare* - `process_prompt` usa `agent_facade`, prova a deserializzare il _JSON_ e passa il risultato a `sanitize_response`, che prepara l'albero di nodi per l'uso interno.

3. *Ordinamento topologico dei nodi* - `JsonParser` applica un _TopologicalSorter_ per ricostruire l'ordine di esecuzione basandosi sulle dipendenze tra nodi (edge → source/target), restituendo sia la sequenza ordinata sia i metadati dei nodi.

4. *Istanziazione dei blocchi* - `FlowManager` scorre i nodi ordinati e, per ciascuno, chiede a `BlockFactory` di creare l'istanza corretta. La _factory_ importa dinamicamente tutte le implementazioni disponibili (`flow.blocks`) e registra ogni tipo di blocco. Se un tipo non è supportato, viene sollevato un errore esplicativo.

5. *Esecuzione sequenziale e logging* - I blocchi vengono eseguiti da `FlowIterator`, che avvia un _thread_, passa l'output del blocco precedente come input al successivo e accumula gli `ExecutionLog`. Ogni blocco deriva da `Block`, che gestisce _status_, _timing_ e _log_ e solleva eccezioni in caso di validazione fallita.

=== Processo di sanitizzazione dei workflow

Il processo di sanitizzazione dei _workflow_ ha 3 principali fasi:

1. *Strategia base e campi comuni* - `BasicFieldsStrategy` garantisce la presenza dei campi obbligatori (id, type, data, position). Gli ID vengono generati progressivamente e le posizioni sono assegnate in griglia 400x400 per facilitare il _rendering_ grafico.

2. *Strategie specifiche per tipo di nodo* - Strategie dedicate completano i dati caratteristici dei vari blocchi: ad esempio, per `telegramSendBotMessage` si aggiungono _botToken_, _chatId_ e _message_; per `systemWaitSeconds` si imposta il campo _seconds_ con _default_ a 5.

3. *Registry ed estensibilità* - `SanitizationStrategyRegistry` applica prima la strategia base, poi seleziona quella specifica in base al tipo di nodo; se assente, usa una `DefaultNodeStrategy`. Il _registry_ è estendibile tramite `register_node_strategy`, consentendo di supportare nuovi tipi senza toccare il _core_.

=== Diagramma delle classi
//TODO inserire immagine diagramma classi




= Limiti e criticità




= Stato dei requisiti funzionali
Nella seguente sezione permette di avere una panoramica sullo stato di avanzamento dei requisiti funzionali individuati durante la fase di analisi, è possibile trovare una spiegazione più approfondita sul documento #link("https://sigma18unipd.github.io/documentiCompilati/3-PB/documentidiprogetto/analisideirequisiti_1.2.0.pdf")[Analisi dei Requisiti v2.0.0.].

== Tracciamento dei requisiti funzionali

Nella tabella sottostante vengono riportati il codice univoco di ciascun requisito, la sua descrizione, lo stato di avanzamento che può essere soddisfatto o meno.

In particolare, il codice univoco è composto come segue:
#align(center)[*R[Rilevanza][Tipologia]-[ID]*]
dove:
- *R*: indica che si tratta di un requisito.

- *Rilevanza*: indica la rilevanza del requisito, che può essere:

  - *O*: requisito obbligatorio;

  - *D*: requisito desiderabile;

  - *F*: requisito facoltativo.

- *Tipologia*: indica la tipologia del requisito, che può essere:

  - *F*: requisito funzionale;

  - *Q*: requisito qualitativo;

  - *V*: requisito di vincolo.

- *ID*: numero progressivo del requisito, univoco all'interno della rispettiva categoria.


#table(
  columns: (1fr, 5fr, 2.5fr),
  rows: auto,
  inset: 6pt,
  table.header([*Codice*], [*Descrizione*], [*Stato*]),
  [ROF-1], [L'utente deve poter effettuare _login_ con il proprio account per autenticarsi nel _client_], [Soddisfatto],

  [ROF-2], [L'utente autenticato deve poter inserire la sua _e-mail_ per accedere all'applicativo], [Soddisfatto],

  [ROF-3], [L'utente deve poter inserire la sua _password_ per accedere all'applicativo], [Soddisfatto],

  [ROF-4], [L'utente deve potersi registrare con la creazione di un nuovo account], [Soddisfatto],

  [ROF-5], [L'utente non autenticato deve poter inserire la sua _e-mail_ per registrarsi nell'applicativo], [Soddisfatto],

  [ROF-6], [L'utente deve poter creare la sua _password_ per registrarsi nell'applicativo], [Soddisfatto],

  [ROF-7], [L'utente deve poter reinserire la sua password per la registrazione nell'applicativo], [Soddisfatto],

  [ROF-8], [Il sistema restituisce un errore per credenziali non valide inserite dall'utente], [Soddisfatto],

  [ROF-9], [Il sistema restituisce un errore nel caso si riscontrino problemi], [Soddisfatto],

  [ROF-10], [Il sistema deve restituire un errore se l'_e-mail_ è già in uso in fase di registrazione], [Soddisfatto],

  [ROF-11],
  [Il sistema deve restituire un errore se la _password_ non adempie ai requisiti di sicurezza o le _password_ non coincidono tra loro in fase di registrazione],
  [Soddisfatto],

  [ROF-12], [L'utente deve poter creare una nuova _routine_ ], [Soddisfatto],
  [ROF-13], [Il sistema deve restituire un errore se il nome della _routine_ da creare o modificare è già in uso], [Non soddisfatto],

  [ROF-14], [L'utente deve poter generare una _routine_ tramite linguaggio naturale], [Soddisfatto],

  [ROF-17], [Il sistema deve restituire un errore se non è possibile generare il flusso], [Soddisfatto],

  [ROF-18], [L'utente deve poter visualizzare i dettagli di una _routine_ esistente], [Soddisfatto],
  [ROF-19], [L'utente deve poter visualizzare il nome di una _routine_ esistente], [Soddisfatto],
  [ROF-20], [L'utente deve poter visualizzare il diagramma dei blocchi di una _routine_ esistente], [Soddisfatto],

  [ROF-21], [L'utente deve poter eliminare una _routine_ esistente], [Soddisfatto],
  [ROF-22], [L'utente deve poter avviare una routine esistente], [Soddisfatto],
  [ROF-23], [L'utente deve poter avviare una routine esistente dalla dashboard], [Soddisfatto],
  [ROF-24], [L'utente deve poter avviare una routine esistente dalla pagina di modifica del flusso], [Soddisfatto],

  [ROF-29], [L'utente deve poter aggiungere un blocco ad una _routine_ esistente], [Soddisfatto ],
  [ROF-30], [L'utente deve poter aggiungere un blocco del tipo "_Telegram_ - Send Bot Message" ad una _routine_ esistente], [Soddisfatto],

  [ROF-32], [L'utente deve poter aggiungere un blocco del tipo "_AI_ - Summarize" ad una _routine_ esistente], [Soddisfatto],

  [ROF-33], [L'utente deve poter aggiungere un blocco del tipo "_System_ - Wait Second(s)" ad una _routine_ esistente], [Soddisfatto],

  [ROF-34], [L'utente deve poter aggiungere un blocco del tipo "_Notion_ - Get Page" ad una _routine_ esistente], [Soddisfatto],

  [ROF-35], [L'utente deve poter visualizzare le impostazioni di un singolo blocco], [Soddisfatto],
  [ROF-36], [L'utente deve poter visualizzare le impostazioni di un blocco del tipo "_Telegram_ - Send Bot Message"], [Soddisfatto],

  [ROF-38], [L'utente deve poter visualizzare le impostazioni di un blocco del tipo "_System_ - Wait Second(s)"], [Soddisfatto],

  [ROF-39], [L'utente deve poter visualizzare le impostazioni di un blocco del tipo "_Notion_ - Get Page"], [Soddisfatto],

  [ROF-40], [L'utente deve poter modificare le impostazioni di un singolo blocco], [Soddisfatto],
  [ROF-41], [L'utente deve poter modificare le impostazioni di un blocco del tipo "_Telegram_ - Send Bot Message"], [Soddisfatto],

  [ROF-43], [L'utente deve poter modificare le impostazioni di un blocco del tipo "_System_ - Wait Second(s)"], [Soddisfatto],

  [ROF-44], [L'utente deve poter modificare le impostazioni di un blocco del tipo "_Notion_ - Get Page"], [Soddisfatto],

  [ROF-46],
  [Il sistema deve salvare le modifiche apportate dall'utente alla _routine_ appena viene premuto il tasto di salvataggio],
  [Soddisfatto],

  [ROF-48], [L'utente deve potere eliminare un blocco da una _routine_ esistente ], [Soddisfatto],

  [ROF-49], [L'utente deve potere eliminare un blocco da una _routine_ esistente da tastiera], [Soddisfatto],

  [ROF-50], [L'utente deve potere eliminare un blocco da una _routine_ esistente da interfaccia grafica], [Soddisfatto],

  [ROF-51], [L'utente deve potere collegare due blocchi di una _routine_ esistente], [Soddisfatto],
  [ROF-52], [L'utente deve potere scollegare due blocchi di una _routine esistente_], [Soddisfatto],
  [RDF-54], [L’utente può impostare la modalità del client in dark mode o light mode], [Soddisfatto],
  [ROF-55], [L'utente deve poter effettuare il _logout_ dall'applicativo], [Soddisfatto],
  [ROF-56], [L'utente deve poter visualizzare la dashboard in seguito al login nell'applicativo], [Soddisfatto],

  [ROF-57], [L'utente deve poter ritornare alla dashboard dalla pagina di modifica flusso], [Soddisfatto],
  [ROF-58], [L'utente deve poter modificare il nome di una _routine_ esistente], [Soddisfatto],
)

== Grafici riassuntivi
