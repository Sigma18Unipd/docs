#import "../../../templates/template.typ": *
#show: content => verbale(
  titoloDocumento: "Incontri di formazione con Var Group S.p.A.",
  abstract: "Resoconto degli incontri di formazione con l'azienda Var Group S.p.A. svolti in data 06 maggio 2025, 08 maggio 2025, 13 maggio 2025, 19 maggio 2025 e 20 maggio 2025.",
  responsabili: "Matteo Marangon",
  redattori: "Carmelo Russello",
  verificatori: "Marco Egidi",
  tipo: "Verbale Esterno",
  destinatari: ("Var Group S.p.A.", "Prof. Tullio Vardanega", "Prof. Riccardo Cardin"),
  versioneAttuale: "1.0.1",
  content: content,
  firmaEsterna: true,
)

= Riferimenti generali
Il seguente documento contiene il resoconto degli incontri di formazione del gruppo _Sigma18_ proposti dall'azienda _Var Group S.p.A_ sulle tecnologie #glossario("AWS"), #glossario("Backend"), #glossario("Frontend") e #glossario("Gen AI")\
Le sessioni sono state svolte in modalità mista, con incontri in presenza e incontri remoti.\

- Presso la sede di Guizza (Padova) rispettivamente nelle date:

  - *6 maggio 2025*
  - *8 maggio 2025*
  - *13 maggio 2025*
della durata di *12 ore* totali.\

- In modalità remota sulle tecnologie di modalità nelle date:

  - *19 maggio 2025*
  - *20 maggio 2025*
della durata di *6 ore* totali.\

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
- Alessandro Baldissera (_Var Group S.p.A._)
- Alessandro Dindinelli (_Var Group S.p.A._)
- Francesco Battistella (_Var Group S.p.A._)
- Stefano Sommariva (_Var Group S.p.A._)
- Vittorio Corrizzato (_Var Group S.p.A._)

#pagebreak()
= Ordine del giorno
Durante gli incontri di formazione i dipendenti di _Var Group S.p.A._ sopracitati hanno presentato le tecnologie che l'azienda utilizza per lo sviluppo software, con particolare attenzione a ciò che può trovare applicazione nel progetto del gruppo _Sigma18_. Le spiegazioni sono state corredate da slide presentative ed esempi pratici, mostrando l'interfaccia web di alcuni applicativi o esempi di codice.

Le sessioni di formazione sono state organizzate in modo da coprire le seguenti aree tematiche:

== _AWS_
La sessione di formazione su _AWS_, svoltasi il *6 maggio 2025* e tenuta dal referente aziendale Alessandro Dindinelli (Var Group S.p.A.), ha affrontato i seguenti argomenti:

=== Introduzione a _AWS_
È stata presentata una panoramica di _AWS_ (Amazon Web Services), la piattaforma di servizi cloud di _Amazon_, che offre una vasta gamma di servizi per l'elaborazione, l'archiviazione, il networking e altro ancora.\
Nello specifico si é discusso delle *_Regions and Availability Zones_*, aree geografiche isolate in cui sono distribuiti i data center di _AWS_ progettati per fornire alta disponibilità e ridurre la latenza in ogni parte del mondo e del concetto di *_Identity and Access Management (IAM)_*, servizio base che consente di gestire gli accessi e le autorizzazioni degli utenti e dei servizi all'interno dell'ambiente _AWS_.


=== Panoramica dei servizi di _AWS_
È stata in seguito presentata una panoramica dei principali servizi di _AWS_, tra cui:

==== _Amazon EC2 (Elastic Compute Cloud)_
Un servizio di cloud computing che permette di avviare e gestire server virtuali, chiamati istanze, nel cloud.\
Il servizio permette di affittare macchine virtuali sulle cui é possibile eseguire applicazioni, servizi web o altri carichi di lavoro.
In base alle esigenze dell'utente è possibile scegliere le risorse di calcolo, memoria e _storage_ necessarie per le varie istanze.

==== _Amazon DynamoDB_
Un servizio di database _NoSQL serverless_ che consente di sviluppare applicazioni moderne su qualsiasi scala.
Le caratteristiche messe in evidenza dall'azienda proponente sono la sua natura _on demand_, che consente di pagare solo per le risorse effettivamente utilizzate, l'ampia gamma di controlli di sicurezza che offre e la sua integrazione con altri servizi di _AWS_.


==== _Amazon S3_
Servizio di archiviazione di oggetti che consente di archiviare e recuperare qualsiasi quantità di dati in modo semplice e scalabile.\
Il servizio è stato presentato come una soluzione ideale per l'archiviazione dei dati in modo scalabile e per le sue opzioni di sicurezza come il _backup_ e la gestione dei disastri che garantiscono la protezione dei dati in caso di guasti o errori umani.\
Per l'archiviazione dei dati (oggetti) nel cloud é necessaria la creazione di _bucket_ (contenitori), con nome univoco per ogni regione di _AWS_.

==== _AWS Lambda_
Un servizio di calcolo _serverless_ che consente agli sviluppatori di eseguire codice in risposta a eventi senza dover gestire l'infrastruttura sottostante.\
La sua natura _on demand_, la sua semplicità di utilizzo e la sua integrazione con altri servizi di _AWS_ sono state evidenziate come caratteristiche principali.\
Un inconveniente messo in evidenza dal referente è il suo tempo di esecuzione limitato (15 minuti), che può essere un problema per alcune applicazioni che richiedono un'elaborazione prolungata.


== _Backend_
La sessione di formazione sul _Backend_, svoltasi l'*8 maggio 2025* e tenuta dal referente aziendale Alessandro Baldissera (Var Group S.p.A.), ha affrontato i seguenti argomenti:

=== _Container_ e _Docker_
È stata presentata una panoramica dei *container*, un metodo per impacchettare un'applicazione e le sue dipendenze in un'unità standardizzata che può essere eseguita in qualsiasi ambiente.\
I container sono isolati l'uno dall'altro e dal sistema operativo sottostante, inoltre possono essere costruiti in modo ripetibile per eseguire qualsiasi _software_.\

È stato introdotto il concetto di *_Docker_*, una piattaforma _open source_ che consente agli sviluppatori di creare, implementare, eseguire, aggiornare e gestire i container.\
I container _Docker_ vengono descritti dichiarando un file di configurazione chiamato *_Dockerfile_* che contiene le istruzioni per costruire l'ambiente in cui verrà eseguita l'applicazione.\

=== _Rest_
*_Rest_* è uno stile architetturale per la progettazione di servizi web che definisce le modalità di interazione tra client e server per lo scambio di informazioni.
È impiegato principalmente per la realizzazione di #glossario("API (Application Programming Interface)").\

_Rest_ è stato consigliato dalla azienda proponente per la sua semplicità, scalabilità, flessibilità (supporta vari formati di dati), performance e, soprattutto, per la sua ampia diffusione, che facilita l'accesso a risorse e supporto tecnico.\

=== _Environment Management_
È stato illustrato il concetto di *_Environment Management_*, un approccio che consente di gestire gli ambienti di sviluppo tramite dei parametri tramite un file di configurazione _.env_ che contiene le variabili di ambiente necessarie per l'esecuzione dell'applicazione.\
È stato spiegato che le variabili di ambiente possono essere utilizzate per configurare l'applicazione in modo dinamico, ad esempio per specificare le credenziali di accesso al database o le chiavi API.\

=== #glossario("NestJS")
*_NestJS_* è un _framework_ per lo sviluppo di applicazioni _Node.js_ basato su _Typescript_ utilizzato soprattutto per realizzare _API_ e per la costruzione di applicazioni complesse che richiedono un'architettura scalabile e manutenibile.\

È stato presentato come un _framework_ dotato di una vasta _community_ e di un ampio ecosistema, che facilitano la ricerca di risorse per approfondire le proprie conoscenze sull'argomento.\

Il referente ha reso il gruppo consapevole che, nell'utilizzo di _NestJS_, é necessaria una conoscenza estesa di altri strumenti e librerie; inoltre, ha evidenziato come la sua configurazione possa diventare complessa su larga scala.

=== _MongoDB_
*_MongoDB_* è un database _NoSQL_ (non relazionale) orientato ai documenti e facilmente scalabile.\

È stato spiegato come un database in _MongoDB_ segue tre concetti principali:
- *_Database_*: un contenitore per uno o più collezioni.
- *_Collezione_*: Un insieme di documenti
- *_Documento_*: Un insieme di coppie chiave-valore identificati da una proprietà speciale _id_, simile a un oggetto _JSON_.

_MongoDB_ è stato consigliato dalla azienda proponente per il suo ricco linguaggio di _query_, la sua scalabilità e per la sua flessibilità nella definizione della struttura dei documenti.\

== _Frontend_
La sessione di formazione sul _Frontend_, svoltasi il *13 maggio 2025* e tenuta dal referente aziendale Vittorio Corrizzato (Var Group S.p.A.), ha affrontato i seguenti argomenti:

=== Introduzione a #glossario("React")

È stato presentata una panoramica della libreria *_React_*, una libreria _JavaScript_ creata dall'azienda _Meta_ per lo sviluppo di interfacce utente.\
Sono stati inoltre illustrati i prerequisiti utili per l'utilizzo di _React_, come una conoscenza di base di progettazione di pagine _web_ (_HTML_ e _CSS_) e una familiarità con _Typescript_, un linguaggio che estende la sintassi di _JavaScript_ .

=== Concetti chiave di _React_

Sono stati presentati i concetti chiave di _React_, tra cui:

==== _DOM_
*_DOM_ (_Document Object Model_)*, un'_API_ per i documenti _HTML_ e _XML_, definisce la struttura logica dei documenti e di come possono essere manipolati.\

il principale problema relativo al _DOM_ consiste nel fatto che la maggior parte dei framework _JavaScript_ tendono ad aggiornarlo più del necessario, con conseguente rallentamento delle prestazioni delle applicazioni web.

È stato introdotto il concetto di *_Virtual DOM_*, una rappresentazione in memoria del _DOM_ che _React_ utilizza ogni volta che viene renderizzato un elemento _JavaScript_ comparandolo con il _DOM_ reale per applicare solo le modifiche necessarie, migliorando così le prestazioni in modo significativo.

==== _JSX_ e Componenti
Il referente ha introdotto *_JSX_*, un'estensione della sintassi _JavaScript_ usata per descrivere l'aspetto dell'interfaccia utente\

Per evitare di dividere in modo artificiale il codice vengono creati degli elementi debolmente accoppiati chiamati *componenti*, degli elementi _JavaScript_ riutilizzabili che accettano dati in input e ritornano elementi _React_ che descrivono ciò che dovrebbe apparire a schermo.\

È stato spiegato che i componenti possono essere di due tipi: le classi componente e le funzioni componente.\
- Le *classi componente* sono definiti come classi _JavaScript_, possono gestire uno stato interno (_stateful_), reagire agli eventi del ciclo di vita e non supportano l'uso degli _hooks_.\
- Le *funzioni componente* sono funzioni _JavaScript_ che non hanno uno stato (_stateless_), accettano tutti i tipi di dato restituendo elementi _HTML_ e supportano gli _hooks_.\


il modo migliore per scrivere componenti in _React_ è utilizzare _JSX_, che permette di scrivere codice simile a _HTML_ all'interno del codice in _JavaScript_.\


=== Hooks in _React_
L'ultimo argomento presentato in questa sessione è stato quello degli _hooks_, funzioni speciali che permettono di “ancorarsi” allo stato e al ciclo di vita dei componenti _React_ e di utilizzare lo stato e altre funzionalità di _React_ senza dover scrivere una classe.\
Gli _hooks_ hanno le seguenti caratteristiche:

- Gli hooks sono retrocompatibili e permettono di:

  - Riutilizzare logica _stateful_ senza dover cambiare la gerarchia dei componenti

  - Dividere un componente in funzioni più piccole basate sui pezzi che sono correlati

  - Utilizzare più funzioni di _React_ senza dover ricorrere alle classi

- Gli _hooks_ seguono delle regole generali:

  - Gli hooks vanno richiamati al livello più alto. Non possono essere richiamati all'interno di cicli, condizioni o funzioni nidificate

  - Gli hooks possono essere richiamati solo da funzioni componente di React

== _Gen AI_
Le sessioni di formazione su _Gen AI_, svolte negli incontri del *19 maggio 2025* e *20 maggio 2025*, tenute dal referente aziendale Stefano Sommariva (_Var Group S.p.A._), hanno affrontato i seguenti argomenti:

=== Introduzione a _Gen AI_
La sessione di formazione su _Gen AI_ é iniziata con una introduzione generale sull'intelligenza artificiale generativa, concentrandosi su due concetti chiave:
==== Reti neurali
Sono modelli di intelligenza artificiale ispirati al funzionamento del cervello umano tramite dei nodi interconnessi fra di loro.\
Il referente ha spiegato come le reti neurali sono composte da tre strati:

- *Strato di _input_*: ogni nodo corrisponde a una e una sola caratteristica dell'input

- *Strati nascosti*: ogni nodo rappresenta una combinazione di caratteristiche provenienti dallo strato precedente

- *Strato di _output_*: il numero di nodi corrisponde al numero di possibili valori di output per la rete

==== #glossario("LLM (Large Language Model)")
Le applicazioni di intelligenza artificiale generativa si fondano sul concetto di _LLM_, dei modelli neurali avanzati che riescono a generare e comprendere il linguaggio naturale.
I _LLM_ sono addestrati su quantità enormi di dati, il che li rende estremamente efficaci ma anche molto costosi dal punto di vista computazionale.\

È stato illustrato il funzionamento dell'architettura _Transformer_, architettura su cui si basano i _LLM_, che si basa su due componenti principali:

- *_Encoder_*: una rete neurale che converte le parole in linguaggio naturale in rappresentazioni numeriche, permettendo al modello di elaborarle.

- *_Decoder_*: una rete neurale che utilizza le rappresentazioni numeriche fornite dall'_encoder_ per generare nuove parole in linguaggio naturale.

=== _OpenAI_
Il gruppo ha ricevuto una breve introduzione a _OpenAI_, in particolare sui modelli della famiglia _GPT_.

Particolare attenzione é stata posta sui modelli specializzati per diverse applicazioni come _Dall-E_ per la generazione di immagini e _Whisper_ per la trascrizione automatica del parlato.

La sezione di _OpenAI_ si é conclusa con una panoramica sulla partnership con _Microsoft_, che ha portato all'integrazione dei modelli di _OpenAI_ in prodotti come _Azure OpenAI_ e _Copilot_.

=== _Azure OpenAI_
È stato presentato il servizio _Azure OpenAI_, una piattaforma che consente di accedere ai modelli di intelligenza artificiale generativa di _OpenAI_ tramite l'infrastruttura cloud di _Microsoft Azure_.\

L'azienda ha elencato alcuni concetti chiave di _Azure OpenAI_:

=== _Tokens_
I *_tokens_* sono sequenze comuni di caratteri con i quali i modelli di _Azure OpenAI_ leggono e interpretano il testo.\

I token possono essere singoli caratteri, una parola o una parte di una parola, il ruolo dei modelli di _Azure OpenAI_ è quello di imparare le relazioni statistiche tra i diversi _tokens_ per generare il _token_ successivo in sequenza.\

=== _Prompts_
I *_prompts_* rappresentano le richieste effettuate in _input_ al modello.

È stato puntualizzato come la loro progettazione sia fondamentale per ottenere risposte precise e pertinenti;
questo processo di progettazione é detto ingegneria del _prompt_ caratterizzato da un attento studio delle istruzioni e del contesto fornito al modello per ottenere risposte ottimali.\

=== _Endpoints_
Gli _endpoints_ consentono di interagire con i modelli di _OpenAI_, permettendo di ricevere un prompt in input e di ottenere in output una risposta generata dal modello.\
È stato mostrata l'esistenza di tre tipologie di _endpoints_:
- *_Completions_*: utilizzati per generare testo in risposta a un prompt.
- *_ChatCompletion_*: utilizzati per gestire conversazioni in linguaggio naturale, consentendo interazioni più complesse e contestualizzate.
- *_Embeddings_*: utilizzati per generare rappresentazioni numeriche di testo, utili per compiti come la ricerca semantica e la classificazione del testo.


= Conclusioni
Tutto il gruppo _Sigma18_ ringrazia l'azienda per il tempo fornito e per la loro disponibilità.\
L'azienda si è resa disponibile a fornire supporto e chiarimenti in caso di necessità.
