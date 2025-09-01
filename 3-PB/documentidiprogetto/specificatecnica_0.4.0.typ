#import "../../templates/template.typ": *
#show: content => verbale(
  titoloDocumento: "Specifica Tecnica",
  abstract: "",
  responsabili: "Pietro Crotti",
  redattori: ("Carmelo Russello", "Aleena Mathew", "Pietro Crotti", "Mirco Borella", "Alessandro Bernardello"),
  verificatori: ("Pietro Crotti", "Carmelo Russello", "Matteo Marangon", "Marco Egidi"),
  tipo: "Documento Esterno",
  destinatari: ("Sigma18", "Prof. Tullio Vardanega", "Prof. Riccardo Cardin", "Var Group S.p.A."),
  versioneAttuale: "0.4.0",
  content: content,
  versioni: (
    "0.4.0",
    "2025/09/01",
    "Mirco Borella
Alessandro Bernardello",
    "Matteo Marangon
Marco Egidi",
    "Aggiunte e descrizione di architettura e design patterns",
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

La Specifica Tecnica fornisce una descrizione completa delle tecnologie selezionate, delle architetture software progettate e delle metodologie implementative scelte per costruire il prodotto proposto dal capitolato.


== Scopo del prodotto
Il prodotto fornisce un servizio che permette agli utenti di generare automazioni e #glossario("routine").\
In particolare, grazie all'ausilio dell'intelligenza artificiale, l'applicativo può interpretare descrizioni di automazioni fornite in linguaggio naturale e generare flussi di lavoro a partire da esse.
Il flusso di lavoro verrà quindi visualizzato attraverso un #glossario("client") che permette all'utente di modificare l'automazione creata grazie ad un'interfaccia #glossario("drag & drop").\
Nell'interfaccia, i *blocchi* rappresentano le azioni effettuabili, mentre gli *archi* che li collegano tra loro corrispondono a relazioni tra i singoli componenti dell'automazione.

== Glossario
Per assicurare la massima chiarezza e prevenire possibili malintesi legati all'interpretazione dei termini utilizzati nei documenti, è stato redatto un glossario. #link("https://sigma18unipd.github.io/documentiCompilati/3-PB/documentidiprogetto/glossario_2.0.0.pdf")[Questo] strumento raccoglie e definisce in maniera precisa tutti i termini che potrebbero risultare ambigui, tecnici o comunque soggetti a interpretazioni diverse.

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
In questa sezione si presentano le tecnologie e gli strumenti impiegati per lo sviluppo dell'applicativo, illustrandone il ruolo e le funzionalità nel sistema.

Per facilitarne la consultazione, esse sono state organizzate in base alle responsabilità che ricoprono all'interno dell'architettura.

== Infrastruttura del sistema
=== Docker

=== Configurazione di Docker

=== Servizi Docker implementati

== Linguaggi di Sviluppo
=== TypeScript
_TypeScript_ è un #glossario("superset") di _JavaScript_ che aggiunge tipizzazione statica e altre funzionalità avanzate. É stato scelto per la sua capacità di migliorare la manutenibilità del codice e ridurre gli errori durante lo sviluppo attraverso la tipizzazione.

- *Versione*: 5.8.3

- *Utilizzo nel codice*: La parte frontend è sviluppata in _TypeScript_, ad esempio nel file di bootstrap _main.tsx_, dove vengono importati moduli tipizzati e avviata l'app _React_.

- *Documentazione*: https://www.typescriptlang.org/docs/ (*Ultimo accesso il: 28/08/2025*)



=== HTML
L'HTML (HyperText Markup Language) è il linguaggio di markup utilizzato per la creazione delle pagine web, fornendo la struttura di base necessaria per organizzare e presentare i contenuti sul web.

- *Versione*: 5

- *Utilizzo nel codice*: Il punto d'ingresso dell'applicazione web è il file `index.html`, che espone un `<div id="root">` in cui React monta tutti i componenti necessari per l'interfaccia grafica e le sue funzionalità.

- *Documentazione*: https://developer.mozilla.org/en-US/docs/Web/HTML (*Ultimo accesso il: 05/08/2025*)



=== CSS
Il CSS (Cascading Style Sheets) è un linguaggio di stile utilizzato per descrivere l'aspetto e la formattazione dei documenti scritti in HTML, consentendo di definire elementi come layout, colori e tipografia e mantenendo la separazione tra struttura dei contenuti e presentazione visiva.

- *Versione*: 3

- *Utilizzo nel codice*:  Gli stili globali sono gestiti in `index.css`, che importa Tailwind e dichiara varianti personalizzate e variabili di tema per l'interfaccia.

- *Documentazione*: https://developer.mozilla.org/en-US/docs/Web/CSS (*Ultimo accesso il: 05/08/2025*)




=== Python
_Python_ è un linguaggio di programmazione interpretato ad alto livello che supporta diversi paradigmi di programmazione, come quello orientato agli oggetti (con supporto all'ereditarietà multipla), quello imperativo e quello funzionale.

- *Versione*: 3.10.6

- *Utilizzo nel codice*: Il _backend_ è implementato in _Python_; `backend.py` contiene l'inizializzazione di _Flask_ e tutte le sue routes, i collegamenti e le configurazioni iniziali dei servizi come "AWS Cognito" e il collegamento al database "MongoDB"

- *Documentazione*: https://docs.python.org/3.10/ (*Ultimo accesso il: 17/08/2025*)




== Framework e librerie
=== Tailwind CSS
_Tailwind CSS_ è un framework _CSS_ che consente di costruire interfacce utente personalizzate rapidamente utilizzando classi predefinite per la gestione del layout, dei colori, della tipografia e di altri aspetti stilistici.

- *Versione*: 3.3.4

- *Utilizzo nel codice*:  Il progetto utilizza _Tailwind CSS_ per lo styling, con configurazione in `tailwind.config.ts` e con le classi applicate direttamente nei componenti _React_ in quelli _Shadcn_.

- *Documentazione*: https://tailwindcss.com/docs (*Ultimo accesso il: 22/08/2025*)



=== React
_React_ è una libreria JavaScript dedicata allo sviluppo di interfacce utente. Si basa su un approccio a componenti riutilizzabili sviluppati in JSX (un estensione di "Javascript"), che favorisce la modularità del codice e semplifica la gestione di applicazioni web complesse.

- *Versione*: 18.3.1

- *Utilizzo nel codice*: L'interfaccia grafica e tutte le funzionalità del _client_ sono implementate in _React_: `main.tsx` crea la pagina di base caricando il router che gestisce e renderizza le singole sotto pagine in base alla route richiesta.

- *Documentazione*: https://react.dev/learn (*Ultimo accesso il: 30/09/2025*)



=== React Router
_React Router_ è una libreria per React che consente di gestire in modo dinamico ed efficiente la navigazione e il routing all'interno di applicazioni, permettendo di associare specifici percorsi a componenti dell'interfaccia utente.

- *Versione*: 7.6.0

- *Utilizzo nel codice*:  La navigazione _client-side_ è configurata con un router che mappa le varie pagine (_login_, _dashboard_, _edit_, ecc.) ai singoli componenti genitori e gestisce i _redirect_.

- *Documentazione*: https://reactrouter.com/7.6.0/home (*Ultimo accesso il: 12/08/2025*)




=== React Flow
_React Flow_ è una libreria per la creazione di diagrammi e flussi di lavoro interattivi in _React_. Fornisce una serie di componenti e strumenti per costruire interfacce utente complesse in modo semplice e intuitivo.

- *Versione*: 12.6.4

- *Utilizzo nel codice*:  L'_editor_ visuale di _workflow_ utilizza la libreria `@xyflow/react`, importata e istanziata nel componente Edit con nodi ed _edges_ (collegamenti tra blocchi) dinamici.

- *Documentazione*: https://reactflow.dev/ (*Ultimo accesso il: 21/08/2025*)



=== Shadcn/ui
_Shadcn/ui_ è una raccolta di componenti React preconfigurati con Tailwind CSS, pensata per facilitare lo sviluppo di interfacce moderne. I componenti vengono integrati direttamente nel progetto, offrendo pieno controllo sul codice e garantendo flessibilità nella personalizzazione e nella manutenzione. É sviluppato per offrire un design coerente e accessibile _out-of-the-box_, riducendo il tempo di sviluppo.

- *Versione*: 2.9.0

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
Si tratta di un design pattern strutturale che permette di estendere dinamicamente le funzionalità di un oggetto senza modificarne la struttura interna.

Nel progetto viene utilizzzato un un decorator `@protected` all'interno della classe `Backend` per proteggere le route che richiedono autenticazione. Il decorator estende il comportamento delle _route_ _Flask_ aggiungendo la logica di verifica per i token _JWT_ forniti con le richieste.
// TODO: finire spiegazione


=== Facade

Si tratta di un design Pattern strutturale che espone un'interfaccia unica e semplice ad un sottosistema complesso.

// Nel contesto del progetto, il pattern è adottato così:
// - modulo `llm/llmFacade.py` come facciata verso i servizi LLM. Espone funzioni semplificate (es. `summary_facade`) usate dai blocchi senza esporre i dettagli d'integrazione.

Il pattern viene utilizzato nella classe `llmFacade` facente parte del modulo `llm`.
La classe espone i metodi semplificati `summary_facade` e `agent_facade` che astraggono la complessità della libreria `boto3` sottostante utilizzata per interagire con i servizi di intelligenza artificiale di AWS Bedrock.


=== Iterator
Si tratta di un design Pattern comportamentale per accedere sequenzialmente agli elementi senza esporre la struttura interna.

Nel progetto viene utilizzato nella classe `FlowIterator` la quale si occupa di iterare su una lista ordinata di blocchi eseguendoli in sequenza.


// Nel contesto del progetto, il pattern è adottato così:
// - la classe `FlowIterator` in `flow/flowIterator.py`. egue in sequenza i `Block`, aggrega `ExecutionLog` e gestisce lo stato; usata da `FlowManager`.


=== Singleton

Si tratta di un design Pattern creazionale che garantisce un'unica istanza globale.

Nel progetto il pattern è adottato in:
- `Blockfactory`, facente parte del modulo `flow`. La `BlockFactory`, responsabile della creazione di oggetti di tipo `Block`, è implementata come singleton con il metodo `get_block_factory()` per evitare di dover registrare più volte i tipi di blocchi istanziabili nella classe.
- `FlaskAppSingleton`, compreso nel modulo `backend` ed implementato con il metodo `get_app()`, si occupa dell'inizializzazione di _Flask_.
- `MongoDBSingleton`, presente nel modulo `db` ed implementato con il metodo `get_db()` gestisce la connessione a _MongoDB_ e fornisce un'istanza condivisa per l'accesso al database.


=== Strategy

Lo _strategy_ è un design pattern comportamentale che consente di definire una famiglia di algoritmi, incapsularli in classi separate e rendere i loro oggetti intercambiabili.

Nel contesto del nostro progetto, il pattern è stato adottato nei seguenti casi:

// In the context class, identify an algorithm that’s prone to frequent changes. It may also be a massive conditional that selects and executes a variant of the same algorithm at runtime.

- `JsonParserStrategy`, presente nel modulo `flow` è responsabile del parsing dei dati in formato _JSON_ ricevuti dal _frontend_, identificando gli elementi di tipo `Block` da creare e ordinandoli sequenzialmente in base alle loro connessioni nel flusso di lavoro. L'utilizzo del pattern _strategy_ consente di effettuare facilmente modifiche alla logica di parsing o di ordinamento per rispecchiare possibili cambiamenti nel formato di dati utilizzato dalla libreria _React Flow_ utilizzata nel frontend senza avere impatti sul resto del sistema.


- `llmSanitizerStrategy`, utilizzato all'interno del modulo `llm`, viene impiegato per la sanitizzazione delle risposte fornite dall'agente _LLM_ per la creazione di un _workflow_. L'utilizzo dello _strategy_ consente di definire diverse strategie di sanitizzazione per i vari tipi di nodi, cosa necessaria in quanto ogni tipo di nodo presenta impostazioni differenti rendendo necessaria una logica specifica per ogni blocco.

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

Il backend è stato sviluppato in _Python_ ed eseguito in un contesto Flask avviato tramite lo _singleton_ _FlaskAppSingleton_ e containerizzabile con un dockerfile che prepara un'immagine basata su python3.13 e definisce vari target.
Le variabili d'ambiente vengono caricate e usate per configurare il client AWS Cognito e la connessione a MongoDB, quest'ultima gestita dal singleton _MongoDBSingleton_.


=== Struttura del codice
Viene riportata una panoramica della struttura delle cartelle e dei file principali riguardanti il backend:

#align(center)[
  ```
  backend
  ├── db
  │   └── ...
  ├── flow
  │   ├── blocks
  │   │   ├── aiSummarize.py
  │   │   ├── notionGetPage.py
  │   │   ├── syswait.py
  │   │   └── telegramSend.py
  │   ├── block.py
  │   ├── flowIterator.py
  │   ├── flowManager.py
  │   └── ...
  ├── llm
  │   └── ...
  ├── utils
  │   └── ...
  ├── backend.py
  ├── Dockerfile
  ├── flaskAppSingleton.py
  ├── test.py
  └── ...
  ```
]

Nella cartella `flow/blocks` sono contenute le implementazioni dei vari blocchi disponibili nel sistema, ognuno in un file separato.
Il file `block.py` definisce la classe base dei blocchi, implementando il _design pattern Visitor_ e una gerarchia di classi astratte. Questa struttura consente di gestire in modo uniforme stato, _input_, _output_ e _log_ di esecuzione per ogni blocco concreto.

I file`flowIterator.py` e `flowManager.py` lavorano inseme per implementare un sistema modulare e scalabile per l'esecuzione di flussi di lavoro. Il `FlowManager` si occupa della configurazione e dell'orchestrazione, mentre `FlowIterator` gestisce l'effettiva esecuzione dei blocchi.

Infine, `backend.py` è il punto d'ingresso dell'applicativo. Infatti esso inizializza l'app _Flask_ tramite `FlaskAppSingleton`, configura il supporto per _CORS( Cross-Origin Resource Sharing)_ e i vari servizi di _AWS_. Inoltre gestisce le _route HTTPS_ .


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

=== Struttura delle classi
==== AiSummarize
La classe 'AiSummarize' è un Block che riassume un testo sfruttando un agente Bedrock (Facade)

===== Attributi
- ```py -id: str ```: identificativo ereditato da 'Block'.
- ```py -name: str ```: nome del blocco, ereditato da 'Block'.
- ```py -status: Status ```: stato del blocco, ereditato da 'Block'.
- ```py -input: dict[str, Any] | None ```: input del blocco, ereditato da 'Block'.
- ```py -output: dict[str, Any] ```: output del blocco, ereditato da 'Block'.

===== Costruttore
- ```py +AiSummarize(...) ```: ereditato da 'Block' (nessun init personalizzato).
===== Metodi
- ```py +validate_inputs(): boolean = true```: sempre True.
- ```py +execute(): dict[str, Any] ```: prende il testo da 'properOut' o 'logOut' dell'input, invoca 'summary_facade'. scrive 'properOut' in output e ritorna stato/type/sommario.


==== Block
La classe 'Block' rappresenta il blocco astratto base per tutti i nodi eseguibili del workflow.

===== Attributi
- ```py -id: str ```: identificativo univoco del blocco.
- ```py -name: str ```: nome del blocco.
- ```py -shortname: str ```: nome breve del blocco.
- ```py -status: Status ```: stato del blocco.
- ```py -input: dict[str, Any] | None ```: input del blocco.
- ```py -settings: dict[str, Any] | None ```: impostazioni del blocco.
- ```py -output: dict[str, Any] ```: output del blocco.
- ```py -_execution_logs: list[ExecutionLog] ```: log di esecuzione del blocco.
- ```py -start_time: datetime | None ```: timestamp di inizio esecuzione del blocco.
- ```py -end_time: datetime | None ```: timestamp di fine esecuzione del blocco.

===== Costruttore
- ```py +Block(block_id: str | None = None, name: str | None = None, shortname: str | None = None, settings: dict[str, Any] | None = None) ```: costruttore della classe Block.

===== Metodi
- ```py +validate_inputs(): bool```: astratto.
- ```py +execute(): bool ```: astratto; imposta lo stato 'RUNNING' e log base (da chiamare con 'super().execute()').
- ```py +accept(visitor: BlockVisitor) : Any ```:
- ```py -_get_input(key: str, default: Any = None) : Any```:
- ```py -_get_setting(key: str, default: Any = None) : Any```:
- ```py -_set_output(key: str, value: Any) : None```:
- ```py +get_output() : dict[str, Any]```:
- ```py -_log(message: str, level: str = "INFO") : None```:
- ```py +get_logs() : list[ExecutionLog]```:
- ```py +run(input: dict[str, Any]) : dict[str, Any]```:orchestration (validazione, timing, stati, log).
- ```py +cancel() : None```:
- ```py +__str__() : str```:

==== BlockFactory
La classe 'BlockFactory' è una factory singleton thread-safe che registra e inizializza i Block per tipo.

===== Attributi
- ```py -_instance: BlockFactory | None ```
- ```py -_lock: threading.Lock ```
- ```py -_initialized: bool ```
- ```py -_imported: bool ```
- ```py -_registry: dict[str, type[Block]] ```
- ```py -_registry_lock: threading.RLock ```

===== Costruttore
- ```py +BlockFactory() ```: inizializza i registri interni.

===== Metodi
- ```py +get_block_factory() : BlockFactory ```: (classmethod):restituisce l'istanza singleton.
- ```py -_import_block_types() : None ```: auto-import dei moduli in 'flow.blocks' per notificare le registrazioni
- ```py +register_block(block_type: str, block_cls: type[Block]) : None ```: registra una classe 'Block' per un tipo.
- ```py +create_block(block_type: str, **kwargs) : Block ```:istanzia un 'Block' del registro.
- ```py +get_supported_types() : list[str] ```: elenca i tipi registrati.
- ```py +lookup_implemented(block_type: str) : bool ```: verifica se un tipo esiste nel registro.

==== FlaskAppSingleton
La classe 'FlaskAppSingleton' fornisce un'istanza unica di Flask.

===== Attributi
- ```py -_instance: FlaskAppSingleton | None ```
- ```py -app: Flask ```
===== Costruttore
- ```py +__new__() : FlaskAppSingleton ```: garantisce il singleton.
- ```py +__init__() : FlaskAppSingleton ```: inizializza 'app' se non presente.
===== Metodi
- ```py +get_app() : Flask ```: inizializza l'istanza Flask.

==== FlowIterator
La classe 'FlowIterator' esegue in sequenza i blocchi di un workflow e colleziona i log.

===== Attributi
- ```py -logs: list[ExecutionLog] ```
- ```py -blocks: list[Block] ```
- ```py -status: Status ```
- ```py -_thread: threading.Thread | None ```

===== Costruttore
- ```py +FlowIterator(blocks: list[Block]) ```
===== Metodi
- ```py -_run_blocks(input: dict[str, Any]) : None ```:esegue i blocchi, accumula output e log, gestisce errori.
- ```py +run(input: dict[str, Any]) : None ```: avvia l’esecuzione in un thread.
- ```py +get_logs() : list[ExecutionLog] ```
- ```py +get_status() : Status ```

==== FlowManager
La classe 'FlowManager' costruisce i blocchi da JSON, avvia il workflow e aggrega i log.
===== Attributi
- ```py -blocks: list[Block] ```
- ```py -factory: BlockFactory ```
- ```py -parser: JsonParserStrategy ```
- ```py -runner: FlowIterator ```

===== Costruttore
- ```py +FlowManager(json_data: dict[str, Any]) ```: parse del JSON, costruzione blocchi e FlowIterator.

===== Metodi
- ```py +parse_json(json_data: dict[str, Any]) : None ```:usa JsonParser, valida tipi, crea i blocchi via BlockFactory.
- ```py -_get_all_logs() : list[ExecutionLog] ```restituisce i log.
- ```py +start_workflow() : Any ```:avvia runner.run({}), gestisce errori.
- ```py +get_status() : Any ```:stato corrente e log.

==== JsonParser
La classe 'JsonParser' ordina i nodi per dipendenze e struttura i dati per la factory.

===== Attributi
- nessuno specifico

===== Costruttore
- ```py +JsonParser() ```

===== Metodi
- ```py +parse(json_data: dict[str, Any] | str) : dict[str, Any] ```: accetta JSON o stringa, ordina i nodi, ritorna {"nodes": [...], "node_data": {...}}.
- ```py -_order_nodes(json_data: dict[str, Any]) : list[str] ```: topological sort con 'graphlib.TopologicalSorter'.


==== MongoDBSingleton
La classe 'MongoDBSingleton' fornisce un'istanza unica di PyMongo legata all'app Flask.
===== Attributi
- ```py -_instance: MongoDBSingleton | None ```
- ```py -mongo: PyMongo | None ```

===== Costruttore
- ```py +__new__(app: Flask | None = None) : MongoDBSingleton ``` inizializza 'PyMongo(app)' la prima volta

===== Metodi
- ```py +get_db() : Any ```: restituisce l'istanza di PyMongo.

==== NotionGetPage
La classe 'NotionGetPage' è un Block che legge una pagina Notion e concatena il testo.

===== Attributi
- ```py -id: str ```: ereditato
- ```py -name: str ```: ereditato
- ```py -status: Status ```: ereditato
- ```py -input: dict[str, Any] | None ```: ereditato
- ```py -output: dict[str, Any] ```: ereditato

===== Costruttore
- ```py +NotionGetPage(...) ``` ereditato da 'Block'

===== Metodi
- ```py +validate_inputs() : bool ```: richiede 'internalIntegrationToken' e 'pageID' (in settings).
- ```py +execute() : dict[str, Any] ```: usa 'notion_client' per leggere blocchi figli, concatena 'plain_text', popola 'properOut', ritorna 'stato/type', gestisce errori.











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
  table.header([*Codice*], [*Descrizione*], [*Fonti*]),
  [ROF-1], [L'utente deve poter effettuare _login_ con il proprio account per autenticarsi nel _client_], [Soddisfatto],

  [ROF-2], [L'utente autenticato deve poter inserire la sua _e-mail_ per accedere all'applicativo], [Soddisfatto],

  [ROF-3], [L'utente deve poter inserire la sua _password_ per accedere all'applicativo], [Soddisfatto],

  [ROF-4], [L'utente deve potersi registrare con la creazione di un nuovo account], [Soddisfatto],

  [ROF-5], [L'utente non autenticato deve poter inserire la sua _e-mail_ per registrarsi nell'applicativo], [Soddisfatto],

  [ROF-6], [L'utente deve poter creare la sua _password_ per registrarsi nell'applicativo], [Soddisfatto],

  [ROF-7], [L'utente deve poter reinserire la sua password per la registrazione nell'applicativo], [Soddisfatto],

  [ROF-8], [Il sistema restituisce un errore per credenziali non valide inserite dall'utente], [Soddisfatto],

  [ROF-9], [Il sistema restituisce un errore se si tenta di eseguire il login con una mail non registrata], [Soddisfatto],

  [ROF-10], [Il sistema restituisce un errore se rileva ripetuti tentativi di accesso], [Soddisfatto],

  [ROF-11], [Il sistema restituisce un errore se si tenta di eseguire il login con una mail non verificata], [Soddisfatto],

  [ROF-12], [Il sistema restituisce un errore nel caso si riscontrino problemi], [Soddisfatto],

  [ROF-13], [Il sistema restituisce un errore se l'_e-mail_ è già in uso in fase di registrazione], [Soddisfatto],

  [ROF-14], [Il sistema restituisce un errore se si lascia il campo password vuoto], [Soddisfatto],

  [ROF-15], [L'utente deve verificare l'account creato tramite codice OTP ricevuto per _e-mail_], [Soddisfatto],

  [ROF-16],
  [Il sistema restituisce un errore se l'utente tenta di concludere la registrazione senza inserire il codice di verifica],
  [Soddisfatto],

  [ROF-17], [Il sistema restituisce un errore se le _password_ non corrispondono tra loro in fase di registrazione], [Soddisfatto],

  [ROF-18], [Il sistema restituisce un errore se la _password_ creata è inferiore a 8 caratteri in fase di registrazione], [Soddisfatto],

  [ROF-19], [Il sistema restituisce un errore se l'_e-mail_ è già in uso in fase di verifica], [Soddisfatto],

  [ROF-20], [Il sistema restituisce un errore se il codice di conferma inserito dall'utente è scaduto], [Soddisfatto],

  [ROF-21], [Il sistema restituisce un errore se il codice di conferma inserito dall'utente è errato], [Soddisfatto],

  [ROF-22], [L'utente deve poter creare una nuova _routine_], [Soddisfatto],

  [ROF-23], [L'utente deve poter modificare il nome di una _routine_], [Soddisfatto],

  [ROF-24], [Il sistema restituisce un errore se il nome del _workflow_ viene lasciato vuoto], [Soddisfatto],

  [ROF-25], [Il sistema restituisce un errore se il nome del _workflow_ ha più di 25 caratteri], [Soddisfatto],

  [ROF-26], [L'utente deve poter generare una _routine_ tramite linguaggio naturale], [Soddisfatto],

  [ROF-27],
  [Il sistema restituisce un errore se il prompt di generazione di una _routine_ tramite linguaggio naturale viene lasciato vuoto],
  [Soddisfatto],

  [ROF-28], [L'utente deve poter visualizzare i dettagli di una _routine_ esistente], [Soddisfatto],

  [ROF-29], [L'utente deve poter visualizzare il nome di una _routine_ esistente], [Soddisfatto],

  [ROF-30], [L'utente deve poter visualizzare il diagramma dei blocchi di una _routine_ esistente], [Soddisfatto],

  [ROF-31], [L'utente deve poter eliminare una _routine_ esistente], [Soddisfatto],

  [ROF-32], [Il sistema restituisce un errore se si tenta di interagire con un _workflow_ inesistente], [Soddisfatto],

  [ROF-33], [L'utente deve poter avviare una _routine_ esistente], [Soddisfatto],

  [ROF-34], [L'utente deve poter avviare una _routine_ esistente dalla dashboard], [Soddisfatto],

  [ROF-35], [L'utente deve poter avviare una _routine_ esistente dalla pagina di modifica del flusso], [Soddisfatto],

  [ROF-36], [Il sistema restituisce un errore se l'esecuzione del flusso non va a buon fine], [Soddisfatto],

  [ROF-37], [L'utente deve poter aggiungere un blocco ad una _routine_ esistente], [Soddisfatto],

  [ROF-38], [L'utente deve poter aggiungere un blocco del tipo "_Telegram_ - Send Bot Message" ad una _routine_ esistente], [Soddisfatto],

  [ROF-39], [L'utente deve poter aggiungere un blocco del tipo "_AI_ - Summarize" ad una _routine_ esistente], [Soddisfatto],

  [ROF-40], [L'utente deve poter aggiungere un blocco del tipo "_System_ - Wait Second(s)" ad una _routine_ esistente], [Soddisfatto],

  [ROF-41], [L'utente deve poter aggiungere un blocco del tipo "_Notion_ - Get Page" ad una _routine_ esistente], [Soddisfatto],

  [ROF-42], [L'utente deve poter visualizzare le impostazioni di un singolo blocco], [Soddisfatto],

  [ROF-43], [L'utente deve poter visualizzare le impostazioni di un blocco del tipo "_Telegram_ - Send Bot Message"], [Soddisfatto],

  [ROF-44], [L'utente deve poter visualizzare le impostazioni di un blocco del tipo "_System_ - Wait Second(s)"], [Soddisfatto],

  [ROF-45], [L'utente deve poter visualizzare le impostazioni di un blocco del tipo "_Notion_ - Get Page"], [Soddisfatto],

  [ROF-46], [L'utente deve poter modificare le impostazioni di un singolo blocco"], [Soddisfatto],

  [ROF-47], [L'utente deve poter modificare le impostazioni di un blocco del tipo "_Telegram_ - Send Bot Message"], [Soddisfatto],

  [ROF-48], [L'utente deve poter modificare le impostazioni di un blocco del tipo "_System_ - Wait Second(s)"], [Soddisfatto],

  [ROF-49], [L'utente deve poter modificare le impostazioni di un blocco del tipo "_Notion_ - Get Page"], [Soddisfatto],

  [ROF-50],
  [Il sistema deve salvare le modifiche apportate dall'utente alla _routine_ appena viene premuto il tasto di salvataggio],
  [Soddisfatto],

  [ROF-51], [L'utente deve potere eliminare un blocco da una _routine_ esistente ], [Soddisfatto],

  [ROF-52], [L'utente deve potere eliminare un blocco da una _routine_ esistente da tastiera], [Soddisfatto],

  [ROF-53], [L'utente deve potere eliminare un blocco da una _routine_ esistente da interfaccia grafica], [Soddisfatto],

  [ROF-54], [L'utente deve potere collegare due blocchi di una _routine_ esistente], [Soddisfatto],

  [ROF-55], [L'utente deve potere scollegare due blocchi di una _routine esistente_], [Soddisfatto],

  [RDF-56], [L'utente può impostare la modalità del client in dark mode o light mode], [Soddisfatto],

  [ROF-57], [L'utente deve poter effettuare il _logout_ dall'applicativo], [Soddisfatto],

  [ROF-58], [L'utente deve poter visualizzare la dashboard in seguito al login nell'applicativo], [Soddisfatto],

  [ROF-59], [L'utente deve poter ritornare alla dashboard dalla pagina di modifica flusso], [Soddisfatto],
)


== Grafico riassuntivo
#figure(image("../../assets/img/specificatecnica/Requisiti_funzionali_soddisfatti.svg", width: 45%), caption: [
  Grafico dei requisiti funzionali soddisfatti
])

Il gruppo ha implementato con successo i requisiti funzionali obbligatori e desiderabili, come evidenziato nel grafico sopra.
La copertura completa dei requisiti funzionali garantisce che il prodotto sia conforme alle aspettative iniziali e alle specifiche definite durante la fase di analisi.
