#import "../../templates/template.typ": *
#show: content => verbale(
  titoloDocumento: "Specifica Tecnica",
  abstract: "",
  responsabili: "Pietro Crotti",
  redattori: ("Carmelo Russello", "Aleena Mathew"),
  verificatori: ("Pietro Crotti", "Carmelo Russello"),
  tipo: "Documento Esterno",
  destinatari: ("Sigma18", "Prof. Tullio Vardanega", "Prof. Riccardo Cardin", "Var Group S.p.A."),
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
- *menubar*, *navigation-menu*, *context-menu*: componenti per la navigazione e i menù di navigazione per organizzare le azioni disponibili all’utente.

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
