#import "../../templates/template.typ": *

#show: content => verbale(
  titoloDocumento: "Norme di progetto",
  abstract: "Documento contenente le Norme di progetto che definiscono le modalità di lavoro del gruppo.",
  responsabili: "Pietro Crotti",
  redattori: "Mirco Borella",
  verificatori: "",
  tipo: "Documento Interno",
  destinatari: "Sigma18",
  versioneAttuale: "0.4.0",
  versioni: (
    "0.4.0",
    "2025/05/03",
    "Mirco Borella",
    "",
    "TESTTEST",
    "0.3.0",
    "2025/04/29",
    "Mirco Borella",
    "",
    "Stesura sezioni da 2.3 (Sviluppo) a 3.2 (Gestione della configurazione)",
    "0.2.0",
    "2025/04/25",
    "Mirco Borella",
    "",
    "Stesura sezione 2.1 (Fornitura) e 2.2 Attività di fornitura",
    "0.1.0",
    "2025/04/22",
    "Mirco Borella",
    "",
    "Stesura iniziale documento e Introduzione",
  ),
  content: content,
)










= Introduzione
== Scopo del documento
Questo documento nasce per la necessità di definire e documentare il #glossario("Way of Working") che verrà utilizzato dal gruppo di lavoro Sigma18 durante lo svolgimento di tutte le fasi del capitolato.

Ai fini di realizzazione del _"Way of Working"_, i membri del gruppo _Sigma18_ prenderanno come riferimento lo standard #glossario("ISO/IEC 12207:1995") che definisce i processi di sviluppo del _software_ e le relative attività e compiti. In particolare, il gruppo _Sigma18_ si concentrerà sui seguenti processi:
- #link(<primari>)[*Primari*]
- #link(<supporto>)[*Di Supporto*]
- #link(<organizzativi>)[*Organizzativi*]

Questo documento verrà trattato con un approccio incrementale, ovvero verrà aggiornato e modificato in base all'evoluzione del progetto e delle esigenze del gruppo di lavoro. Pertanto, il documento non è da considerarsi definitivo ma un documento vivo che si evolve con il progetto.

I membri del gruppo di lavoro sono tenuti a rispettare le norme e le modalità di lavoro definite in questo documento.
Il gruppo _Sigma18_ s'impegna a prendere conoscenza delle eventuali modifiche e/o integrazioni di questo documento.

== Scopo del capitolato
Il capitolato *C3*, proposto dall'azienda *Var Group S.p.A.*, richiede lo sviluppo di un'applicazione che permetta di automatizzare le routine digitali tramite l'intelligenza generativa in cloud.

L'obiettivo è di creare un client per ambiente Windows e/o Mac in grado di generare queste #glossario("routine") in modo semplice attraverso il linguaggio naturale.
Il client deve essere in grado di interfacciarsi con le varie applicazioni installate sul sistema e con i servizi esposti dalle applicazioni stesse (#glossario("API")).
L'utente deve essere in grado di modificare la logica funzionale di un _workflow_ tramite un'interfaccia #glossario("drag & drop").
È prevista la possibilità di salvare i _workflow_ generati, in modo da poterli riutilizzare in un secondo momento, e di gestire più automazioni contemporaneamente.

Come dichiarato nella lettera di presentazione, il gruppo si impegna a realizzare il prodotto descritto dal capitolato C3 con un costo stimato di *€12945,00* e con termine previsto di consegna *29 Agosto 2025*.

== Utilizzo del glossario
Al fine di ottenere una lettura chiara e concisa della documentazione prodotta, è stato previsto un glossario dei termini utilizzati nei prodotti del capitolato che possano causare ambiguità o dubbi.
Per evidenziare che una parola è presente all'interno del glossario, è stata utilizzata una nomenclatura così definita:
#set align(center)
#glossario("parola")
#set align(left)
dove *parola* è il termine che si intende definire.

Il glossario verrà aggiornato ogni qualvolta verrà introdotto un nuovo termine o che verrà modificata la definizione di uno dei termini già esistenti.
All'interno dei documenti, verrà utilizzata la nomenclatura *#glossario("parola")* solamente alla prima occorrenza del termine. Tutti i seguenti richiami al termine non verranno segnalati con la nomenclatura del glossario.

== Riferimenti
=== Riferimenti normativi

- *ISO/IEC 12207:1995 - Standard internazionale per i processi di ciclo di vita del _software_* \ #link("https://www.math.unipd.it/~tullio/IS-1/2009/Approfondimenti/ISO_12207-1995.pdf")[https://www.math.unipd.it/~tullio/IS-1/2009/Approfondimenti/ISO_12207-1995.pdf]

- *ISO/IEC 12207* \ #link("https://it.wikipedia.org/wiki/ISO/IEC_12207")[https://it.wikipedia.org/wiki/ISO/IEC_12207]

- *Capitolato C3 - Automatizzare le routine digitali tramite l'intelligenza generativa* \ #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C3.pdf")[https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C3.pdf]

- *Regolamento del progetto didattico* \ #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf")[https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf]

=== Riferimenti informativi

- *Glossario* \ #link("https://sigma18unipd.github.io/documentiCompilati/2-RTB/documentidiprogetto/glossario.pdf")[https://sigma18unipd.github.io/documentiCompilati/2-RTB/documentidiprogetto/glossario.pdf]

- *Processi di ciclo di vita* \ #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T02.pdf")[https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T02.pdf]

#pagebreak()









= Processi primari <primari>
Lo standard ISO/IEC 12207:1995 è nato per fornire un modello di riferimento per la definizione dei processi di ciclo di vita del _software_ e per la gestione della qualità del _software_.

Lo standard definisce i processi primari come i processi che sono direttamente coinvolti nella realizzazione del prodotto _software_, tra cui: *acquisizione*, *fornitura*, *sviluppo*, *gestione* e *manutenzione*.

Nello specifico, ai fini del capitolato, tratteremo i seguenti processi primari:
- #link(<fornitura>)[*Fornitura*]
- #link(<sviluppo>)[*Sviluppo*]

== Fornitura <fornitura>
Lo standard ISO/IEC 12207:1995 definisce il processo di fornitura come l'insieme delle attività necessarie per garantire che il prodotto _software_ soddisfi i requisiti specificati e le aspettative del committente.

Questo processo è iniziato con uno studio di fattibilità e lo sviluppo di alcuni flussi applicativi insieme al committente, raccolti nella sessione di #glossario("design thinking") di cui è stato redatto il relativo #link("verbale esterno")[verbale esterno]. L'incontro è stato fondamentale per la definizione e la contrattazione dei requisiti del progetto.
//TODO: aggiungere il link al verbale esterno quando approvato

Il processo terminerà con la consegna del prodotto al committente e la successiva verifica della sua conformità ai requisiti specificati.

=== Strumenti a supporto
La fornitura viene supportata da strumenti di comunicazione, di gestione dei requisiti e di tracciamento delle modifiche. Il gruppo _Sigma18_ ha definito di utilizzare i seguenti strumenti:
- *Whatsapp*: per la comunicazione asincrona interna al gruppo;
- *Discord*: per svolgere le riunioni di gruppo e per la comunicazione sincrona tra i vari membri;
- *GitHub*: per la gestione del #glossario("Backlog"), e per il #glossario("sistema di ticketing"), utili per avere una panoramica del lavoro svolto e da svolgere;
- *Microsoft Excel*: per la gestione e la tracciabilità delle ore di lavoro svolte da ciascun membro del gruppo.

Gli strumenti scelti per la comunicaizone con il proponente sono:
- *Gmail*: per la comunicazione formale asincrona con il proponente, successivamente rimpiazata da:
- *Slack*: per la comunicazione con il proponente, l'invio di documenti e per il supporto allo sviluppo del prodotto.
//TODO: vedere come fare le riunioni online con il proponente

== Attività di fornitura
La fornitura è composta da un insieme di attività successivamente descritte:

- *Iniziazione*: In questa fase iniziale, il fornitore analizza le richieste avanzate dal proponente, considerando attentamente eventuali vincoli. È il momento cruciale in cui viene valutata la fattibilità tecnica ed economica del progetto, determinando quali requisiti potrebbero necessitare di ulteriore negoziazione.

- *Preparazione della risposta*: Sulla base dell'analisi effettuata, il fornitore elabora una contro-proposta per il proponente incorporando le valutazioni emerse durante la fase di iniziazione e presentando modifiche ai requisiti originali quando necessario.

- *Contratto*: Questa fase prevede un incontro con il proponente durante il quale vengono discusse le risposte precedentemente elaborate. L'obiettivo è raggiungere un accordo che soddisfi entrambe le parti.

- *Pianificazione*: Definiti i requisiti contrattuali, il fornitore procede a stabilire l'organizzazione e la metodologia di lavoro più adatte. In questa fase viene selezionato il modello di ciclo di vita del _software_, vengono identificate le risorse necessarie e le tecnologie da impiegare, e viene posta particolare attenzione all'analisi dei potenziali rischi.

- *Esecuzione e controllo*: Una volta documentata la pianificazione, il fornitore avvia l'implementazione di quanto stabilito. Durante questa fase, viene costantemente monitorata sia la qualità del prodotto in sviluppo sia l'avanzamento generale del progetto rispetto alla pianificazione iniziale.

- *Revisione e valutazione*: Parallelamente allo sviluppo, il fornitore mantiene un dialogo costante con il proponente per condividere lo stato di avanzamento e raccogliere feedback. Questo processo di revisione continua permette di valutare la conformità del lavoro svolto rispetto alle aspettative e di apportare eventuali correzioni in corso d'opera.

- *Consegna e completamento*: Al termine del progetto, il fornitore consegna il prodotto finale al proponente, garantendo il supporto post-consegna e risolvendo eventuali problematiche che potrebbero emergere nelle fasi iniziali di utilizzo. (Supporto post-consegna non previsto dal capitolato).

=== Elenco della documentazione fornita
Segue un elenco dei documenti che il gruppo _Sigma18_ fornità all'azienda proponente _Var Group S.p.A._ e ai committenti del capitolato _Prof. Tullio Vardanega_ e _Prof. Riccardo Cardin_ (in ordine alfabetico).

==== Analisi dei requisiti
//TODO: Aggiungere il link
Documento che ha lo scopo di fornire una descrizione dettagliata dei casi d'uso e dei requisiti del progetto che l'azienda proponente _Var Group S.p.A._ ha presentato.
Questo documento è pertanto di elevata importanza in quanto costituisce una solida base per lo sviluppo del prodotto finale, permettendo di avere una chiara visione delle funzionalità e dei requisiti richiesti dall'azienda proponente.

Tipo di documento: *Documento Esterno* \
Destinatari documento: *_Sigma18_, _Var Group S.p.A_, _Prof. Tullio Vardanega_, _Prof. Riccardo Cardin_*

==== Glossario
#link("https://sigma18unipd.github.io/documentiCompilati/2-RTB/documentidiprogetto/glossario.pdf")[Documento] che contiene la definizione dei termini ritenuti ambigui o non chiari utilizzati nel capitolato e nei documenti del gruppo _Sigma18_.

Tipo di documento: *Documento Interno* \
Destinatari documento: *_Sigma18_, _Prof. Tullio Vardanega_, _Prof. Riccardo Cardin_*

==== Lettera di presentazione candidatura
#link("https://sigma18unipd.github.io/documentiCompilati/1-candidatura/letteradipresentazione_1.0.1.pdf")[Lettera] con la quale il gruppo _Sigma18_ comunica formalmente la propria intenzione a candidarsi per la realizzazione del capitolato.

Tipo di documento: *Documento Esterno* \
Destinatari documento: *_Prof. Tullio Vardanega_, _Prof. Riccardo Cardin_*

==== Norme di progetto
Documento che stabilisce le modalità di lavoro, il #glossario("Way of Working") del gruppo _Sigma18_ e le norme da seguire durante lo svolgimento del progetto. Questo documento è in continuo aggiornamento e verrà modificato in base all'evoluzione del progetto e delle esigenze del gruppo di lavoro.

Tipo di documento: *Documento Interno* \
Destinatari documento: *_Sigma18_*

==== Piano di progetto
#link("https://sigma18unipd.github.io/documentiCompilati/2-RTB/documentidiprogetto/pianodiprogetto_0.3.0.pdf")[Documento] che ha l'obiettivo di definire e tenere traccia di tutte le attività eseguite e pianificate dal team durante lo sviluppo del progetto.
In particolare, il piano di progetto si concentra su: analisi dei rischi, modello di sviluppo e pianificazione delle attività.

Tipo di documento: *Documento Esterno* \
Destinatari documento: *_Sigma18_, _Var Group S.p.A_, _Prof. Tullio Vardanega_, _Prof. Riccardo Cardin_*

==== Piano di qualifica
Documento che ha lo scopo di definire le modalità di verifica e di validazione adottate dal gruppo _Sigma18_ al fine di garantire la qualità del prodotto finale.
Il documento sarà soggetto ad aggiornamenti durante il ciclo di vita del progetto per riflettere le modifiche apportate per raggiungere una migliore efficacia ed efficienza.

Tipo di documento: *Documento Esterno* \
Destinatari documento: *_Sigma18_, _Var Group S.p.A_, _Prof. Tullio Vardanega_, _Prof. Riccardo Cardin_*

==== Preventivo dei costi e dichiarazione impegni
#link("https://sigma18unipd.github.io/documentiCompilati/1-candidatura/impegnicosti_1.0.1.pdf")[Documento] che ha lo scopo di definire i ruoli, i costi preventivati e fornire una stima della data per la realizzazione del capitolato. Il documento contiene anche un'analisi dei rischi approssimativa che il gruppo _Sigma18_ ha tenuto in considerazione durante la stesura del preventivo.

Tipo di documento: *Documento Esterno* \
Destinatari documento: *_Prof. Tullio Vardanega_, _Prof. Riccardo Cardin_*

==== Valutazione dei capitolati
#link("https://sigma18unipd.github.io/documentiCompilati/1-candidatura/valutazionecapitolati_1.1.0.pdf")[Documento] che presenta le motivazioni che hanno portato il gruppo _Sigma18_ a scegliere il capitolato _C3 - Automatizzare le routine digitali tramite l'intelligenza generativa_ proposto dall'azienda _Var Group S.p.A._ e i relativi pro e contro di ogni capitolato proposto.

Tipo di documento: *Documento Esterno* \
Destinatari documento: *_Prof. Tullio Vardanega_, _Prof. Riccardo Cardin_*

==== Verbale Esterno
Documento che contiene i resoconti, le decisioni e le azioni intraprese all'ordine del giorno durante gli incontri con il proponente. Il verbale esterno è redatto dal gruppo _Sigma18_ e viene condiviso con il proponente e i committenti del capitolato.

Tipo di documento: *Documento Esterno* \
Destinatari documento: *_Var Group S.p.A_, _Prof. Tullio Vardanega_, _Prof. Riccardo Cardin_*

==== Verbale Interno
Documento che contiene i resoconti, le decisioni e le azioni intraprese all'ordine del giorno durante gli incontri e le riunioni tra i componenti del gruppo _Sigma18_. Il verbale interno è redatto dal gruppo e viene condiviso con il gruppo stesso.

Tipo di documento: *Documento Interno* \
Destinatari documento: *_Sigma18_*

== Sviluppo <sviluppo>
Per lo standard ISO/IEC 12207:1995, il processo di sviluppo è l'insieme delle attività necessarie per realizzare il prodotto _software_, a partire dalla definizione dei requisiti, passando per l'analisi dei requisiti, fino alla consegna del prodotto finale.

=== Strumenti a supporto dello sviluppo
Tutte le attività racchiuse nel processo di sviluppo sono supportate dai seguenti strumenti:
- *GitHub*: per la gestione del versionamento e per avere una panoramica del lavoro svolto e da svolgere;
- *Visual Studio Code*: per la codifica del _software_ e per la scrittura della documentazione;
- *Draw.io*: per la creazione dei #glossario("diagrammi UML");

== Attività di sviluppo
In base allo standard ISO/IEC 12207:1995, il processo di sviluppo è composto da un insieme di attività successivamente descritte:

=== Implementazione del processo
Il processo di sviluppo inizia con la definizione del modello di ciclo di vita del _software_ da adottare. Il gruppo _Sigma18_ ha deciso di adottare il modello #glossario("Agile") in quanto permette una maggiore flessibilità e adattabilità alle esigenze del progetto.
Il modello Agile prevede un approccio iterativo e incrementale, in cui il prodotto viene sviluppato in piccole parti (o _sprint_) e viene costantemente testato e migliorato.

=== Analisi dei requisiti
L'analisi dei requisiti è l'attività che ha lo scopo di definire e documentare i requisiti richiesti dal proponente del prodotto _software_. Questa attività è fondamentale per garantire che il prodotto finale soddisfi le aspettative e i vincoli del committente e degli utenti
finali.

=== Progettazione architetturale
La progettazione architetturale è l'attività che ha lo scopo di individuare e definire l'architettura del prodotto _hardware_ e _software_. L'architettura deve essere in grado di soddisfare tutte le richieste e i requisiti del sistema come da specifica del proponente.

=== Analisi dei requisiti _software_
Per ogni componente _software_, vengono stabiliti e documentati i requisiti in modo dettagliato. I requisiti rappresentano il modo in cui il _software_ soddisfa le esigenze del cliente finale. Si valutano la coerenza con i requisiti proposti dal proponente, la completezza delle caratteristiche di sicurezza, qualità e usabilità dell'interfaccia grafica.

=== Progettazione architetturale _software_
I requisiti _software_ vengono uniti in un'architettura _software_ che definisce le interazioni tra i vari componenti e le loro responsabilità condivise.

=== Progettazione del dettaglio _software_
Si utilizza un approccio #glossario("top-down") per definire le funzionalità di ogni singolo componente _software_, a partire dai componenti più generali fino ad arrivare ai dettagli delle singole unità.

=== Codifica del _software_
La codifica del _software_ è l'attività che ha lo scopo di realizzare le singole unità _software_. Questa attività viene svolta in modo incrementale e iterativo, in modo da garantire che il prodotto finale soddisfi i requisiti richiesti dal proponente.\

=== Testing del _software_
Ciascuna unità _software_ codificata viene testata per garantirne il corretto funzionamento e la conformità ai requisiti richiesti. Il testing viene svolto in modo incrementale e iterativo in parallelo all'attività di codifica.

=== Integrazione del _software_
L'integrazione del _software_ è l'attività che ha lo scopo di unire le singole unità _software_, _hardware_, alcune operazioni manuali e tutte le altre componenti necessarie in un unico prodotto finale.

=== Test di qualifica del _software_
L'intero sistema viene testato per verificarne la conformità ai requisiti richiesti dal proponente e verificarne il funzionamento complessivo.

=== Installazione del _software_
L'installazione del _software_ è l'attività che ha lo scopo di fornire il prodotto finale nell'ambiente di produzione concordato del proponente.

=== Supporto per l'approvazione del _software_
Il gruppo _Sigma18_ fornisce supporto al proponente per la verifica di aver effettivamente soddisfatto i requisiti richiesti e l'approvazione del prodotto finale.
#pagebreak()








= Processi di supporto <supporto>
I processi di supporto definiti dalla norma ISO/IEC 12207:1995 indirizzano le seguenti attività principali e di dettaglio:
- Documentazione;
- Gestione della configurazione;
- Qualità;
- Verifica;
- Validazione;
- Revisione congiunta;
- #glossario("Audit");
- Risoluzione dei problemi;
- Usabilità;
- Valutazione del prodotto;

Ai fini della natura del capitolato, il gruppo _Sigma18_ ha deciso di trattare i processi di supporto relativi alla *Documentazione*, *Gestione della configurazione*, *Qualità*, *Verifica* e *Validazione*.

== Documentazione
Il processo di "Gestione della documentazione" è una delle parti fondamentali di tutti i processi primari: garantisce lo sviluppo, la manutenzione e la registrazione delle informazioni prodotte relativamente al prodotto software.

L'obiettivo principale di questo processo è quello di garantire che la documentazione prodotta sia completa, accurata e facilmente accessibile in maniera asincrona a tutti i membri del gruppo di lavoro. Tutto il gruppo di lavoro è tenuto a rispettare le norme e le modalità di lavoro per la stesura dei documenti definite in questa sezione.

=== Strumenti a supporto della documentazione
Il gruppo _Sigma18_ ha deciso di utilizzare i seguenti strumenti per la gestione della documentazione:
- *GitHub*: per la gestione dei sorgenti della documentazione, versionamento dei documenti e sistema di ticketing con #glossario("pull request");
- *Typst*: per la scrittura della documentazione in modo semplice e veloce. Il gruppo _Sigma18_ ha deciso di utilizzare questo linguaggio di markup simile a #glossario("LaTeX") per la scrittura della documentazione in quanto permette di generare documenti di alta qualità e di gestire modelli e _template_. Inoltre utilizza costrutti simili a quelli che si trovano nei linguaggi di programmazione e permette al gruppo di generare documenti compilando i sorgenti in modo centralizzato ed automatizzato.
- *Microsoft Excel*: per la gestione e la tracciabilità delle ore di lavoro svolte da ciascun membro del gruppo.

=== Attivitá previste
Il processo di documentazione è composto da un insieme di attività successivamente descritte:
- *Produzione*: attività che ha lo scopo di definire le modalità con la quale redigere i documenti. Ulteriori informazioni nella #link(<produzionedeidocumenti>)[sezione 3.1.8].
- *Manutenzione*: attività che ha lo scopo di definire le modalità con la quale aggiornare o modificare documenti già esistenti. Ulteriori informazioni nella #link(<manutenzionedocumenti>)[sezione 3.1.9].

=== Verbali
La redazione di un verbale esterno o interno sfrutta il #link("https://github.com/Sigma18Unipd/docs/blob/main/templates/template.typ")[relativo template] ai fini di produrre documenti standardizzati e di alta qualità.

Ogni modifica al template viene discussa e approvata dal gruppo prima di essere applicata e viene testata sui documenti retroattivamente per garantire la compatibilità con i documenti già prodotti.

Un verbale contiene una pagina di copertina così composta:
- Logo del gruppo _Sigma18_ e indirizzo _email_ di contatto;
- Titolo del documento;
- Lista dei responsabili;
- Lista dei redattori;
- Lista dei verificatori;
- Versione del documento;
- Tipologia del documento;
- Destinatari del documento;
- _Abstract_ dei contenuti.

Successivamente, il verbale contiene una tabella con le versioni e la descrizione delle modifiche del documento. La definizione delle modalità di versionamento dei documenti è riportata nella #link(<versionamentodeidocumenti>)[sezione 3.1.8.2].

Segue poi l'indice del documento, che riporta i titoli delle sezioni e dei paragrafi del documento. L'indice viene generato automaticamente.

Un verbale contiene sempre le sezioni successivamente descritte.
La prima riguarda i "Riferimenti generali", che contengono le modalità di svolgimento della riunione (virtuale se svolta in videoconferenza o in presenza se svolta in loco), la data e la durata della riunione. Segue poi la lista dei partecipanti presenti.

La seconda sezione riguarda i punti all'"ordine del giorno", che contiene i punti discussi durante la riunione e le decisioni prese.

La sezione delle "Conclusioni e decisioni prese" contiene le decisioni prese durante la riunione e le azioni da intraprendere. Le attività definite "pendenti" e programmate sono disponibili nella successiva sezione "Attività programmate".
Questa sezione contiene una tabella con due colonne: la prima colonna contiene l'identificativo dell'attività (successivamente definito) e la seconda colonna contiene il titolo.

Con identificativo dell'attività si intende un numero a 5 cifre che identifica in modo univoco l'attività. Il numero dell'attività è assegnando seguendo la numerazione interna delle _issues_ e delle _pull request_ di _GitHub_. Per tanto, ad un'attività con numerazione _N_ in un verbale corrisponderà sempre la relativa _issue_ o _pull request_ su _GitHub_.

I verbali definiti come "esterni" includeranno una sezione per l'aggiunta della firma di verifica da parte dell'azienda proponente.

Ogni pagina del verbale, ad eccezione della copertina, contiene un'intestazione comprendente il logo del gruppo _Sigma18_ e il titolo del documento e un piè di pagina con il numero progressivo della pagina.

=== Glossario
La redazione del glossario sfrutta il #link("https://github.com/Sigma18Unipd/docs/blob/main/templates/templateGlossario.typ")[relativo template].

Il glossario contiene una pagina di copertina così composta:
- Logo del gruppo _Sigma18_ e indirizzo _email_ di contatto;
- Titolo del documento;
- Lista dei responsabili;
- Lista dei redattori;
- Lista dei verificatori;
- Versione del documento;
- Tipologia del documento;
- Destinatari del documento.

Successivamente, il glossario contiene una tabella con le versioni e la descrizione delle modifiche del documento. La definizione delle modalità di versionamento dei documenti è riportata nella #link(<versionamentodeidocumenti>)[sezione 3.1.8.2].

Segue poi l'indice del documento, che riporta i titoli delle sezioni e dei paragrafi del documento. L'indice viene generato automaticamente.

La prima sezione "Introduzione" contiene una breve introduzione al documento e la sua finalità, insieme alla nomenclatura utilizzata per indicare che un termine è definito nel glossario.

Segue poi la lista ordinata in ordine alfabetico dei termini e delle loro definizioni.

Ogni pagina del glossario, ad eccezione della copertina, contiene un'intestazione comprendente il logo del gruppo _Sigma18_ e il titolo del documento e un piè di pagina con il numero progressivo della pagina.

Per evidenziare che una parola è presente all'interno del glossario, è stata utilizzata una nomenclatura così definita:

#set align(center)
#glossario("parola")
#set align(left)
dove *parola* è il termine che si intende definire. La nomenclatura è stata scelta in modo da non interferire con le altre nomenclature utilizzate nel capitolato.

All'interno dei documenti, verrà utilizzata la nomenclatura *#glossario("parola")* solamente alla prima occorrenza del termine. Tutti i seguenti richiami al termine non verranno segnalati con la nomenclatura del glossario.

=== Diari di bordo
La redazione dei documenti per il diario di bordo sfrutta il #link("https://github.com/Sigma18Unipd/docs/blob/main/templates/templateSlides.typ")[relativo template].

Ogni diario di bordo contiene una pagina di copertina così composta:
- Logo del gruppo _Sigma18_ e indirizzo _email_ di contatto;
- Titolo del documento;
- Lista dei componenti del gruppo;

Seguono poi generalmente le singole sezioni di riguardo, una per ogni pagina:
- "*Progressi raggiunti e confronto (retrospettiva)*": una lista puntata con i progressi raggiunti e le attività completate;
- "*Obiettivi e attività programmate (_backlog_)*": una lista puntata con gli obiettivi e le attività programmate per il periodo successivo;
- "*Analisi delle criticità e soluzioni adottate*": una lista puntata con le criticità emerse e le soluzioni adottate per affrontarle;

Ogni pagina del glossario, ad eccezione della copertina, contiene un'intestazione comprendente il logo del gruppo _Sigma18_ e il titolo del documento e un piè di pagina con il numero progressivo della pagina.

=== Lettere di presentazione
La redazione delle lettere di presentazione sfrutta il #link("https://github.com/Sigma18Unipd/docs/blob/main/templates/templateLettera.typ")[relativo template].

Ogni lettera di presentazione contiene una pagina di copertina così composta:
- Logo del gruppo _Sigma18_ e indirizzo _email_ di contatto;
- Titolo del documento;
- Mittenti;
- Destinatari;

Segue poi il corpo della lettera.

Ogni pagina di una lettera, ad eccezione della copertina, contiene un'intestazione comprendente il logo del gruppo _Sigma18_ e il titolo del documento e un piè di pagina con il numero progressivo della pagina. In caso di riferimenti a risorse esterne, il piè di pagina conterrà anche la lista con i _link_ per esteso.

=== Altri documenti
Tutti gli altri documenti redatti dal gruppo _Sigma18_ sfruttano il #link("https://github.com/Sigma18Unipd/docs/blob/main/templates/template.typ")[relativo template].

Ogni documento non già descritto contiene una pagina di copertina così composta:
- Logo del gruppo _Sigma18_ e indirizzo _email_ di contatto;
- Titolo del documento;
- Lista dei responsabili;
- Lista dei redattori;
- Lista dei verificatori;
- Versione del documento;
- Tipologia del documento;
- Destinatari del documento.
- _Abstract_ dei contenuti.

Successivamente, ogni documento contiene una tabella con le versioni e la descrizione delle modifiche. La definizione delle modalità di versionamento dei documenti è riportata nella #link(<versionamentodeidocumenti>)[sezione 3.1.8.2].

Segue poi l'indice, che riporta i titoli delle sezioni e dei paragrafi del documento. L'indice viene generato automaticamente.

Si continua con il corpo del documento, che contiene le informazioni e i contenuti richiesti.

Ogni pagina di un documento, ad eccezione della copertina, contiene un'intestazione comprendente il logo del gruppo _Sigma18_ e il titolo del documento e un piè di pagina con il numero progressivo della pagina.

Alcuni documenti, come l'analisi dei requisiti, contentono sezioni o componenti che necessitano di essere normati al fine di garantire la qualità e la coerenza del documento stesso. Seguono quindi le sezioni che necessitano di essere normate, definite come:

#set align(center)
*TitoloDelDocumento*: *Sezione*
#set align(left)

==== Analisi dei Requisiti: Casi d'uso
Per la definizione dei casi d'uso è stata utilizzata la seguente nomenclatura:
#set align(center)
*UC[NUMERO]*
#set align(left)

dove con "*NUMERO*" s'intende il numero identificativo del caso d'uso.

==== Analisi dei Requisiti: Requisiti
Ciascun requisito è identificato da un codice univoco composto come segue:

#set align(center)
[*R[Rilevanza][Tipologia]-[ID]*]
#set align(left)

dove:
- *R* : indica che si tratta di un requisito.
- *Rilevanza* : indica la rilevanza del requisito, che può essere:
  - *O* : requisito obbligatorio, pertanto indispensabile per lo sviluppo del progetto;
  - *D* : requisito desiderabile, pertanto non necessario ma fornisce un valore aggiunto al progetto;
  - *F* : requisito facoltativo, pertanto non necessario ma può essere implementato in accordo con l'azienda se vi sono le condizioni appropriate.
- *Tipologia* : indica la tipologia del requisito, che può essere:
  - *F* : requisito funzionale, che descrive una funzionalità del sistema;
  - *Q* : requisito qualitativo, che descrive un aspetto di qualità del prodotto per soddisfare esigenze specifiche;
  - *V* : requisito di vincolo, che descrive un vincolo imposto dal proponente nel capitolato e non può essere trascurato.
- *ID* : numero progressivo del requisito, univoco all'interno della rispettiva categoria.

==== Piano di progetto: Rischi
Ogni rischio nel piano di progetto viene identificato con la seguente nomenclatura:

#set align(center)
*R + [Tipo di Rischio] + [Indice]*
#set align(left)

dove "*R*" indica il fatto che si tratti di un rischio. Il *Tipo di Rischio* si divide in due categorie:
- Rischi legati alla tecnologia utilizzata (*T*).
- Rischi legati all'organizzazione (*O*).

L'*Indice* è un numero incrementale che serve ad identificare univocamente i vari rischi per ogni tipo di Rischio.

=== Produzione dei documenti <produzionedeidocumenti>
La produzione dei documenti segue una serie di passi ben definiti e successivamente descritti:

*Creazione della _issue_ su _GitHub_*: Come primo passo viene aperta una _issue_ che conterrà come titolo una breve descrizione del documento che si intende produrre.

*Assegnazione della _issue_*: La _issue_ viene assegnata al redattore del documento, che dovrà occuparsi della sua stesura. Sarà compito del redattore creare la relativa _branch_ sul quale andare a lavorare. La branch segue la seguente nomenclatura:

#set align(center)
*Numero*-*Titolo*
#set align(left)

Dove con "Numero" si intende il numero della _issue_ e con "Titolo" si intende il titolo della _issue_ stessa, tutto in minuscolo e con gli spazi sostituiti da "\-".

Ad esempio la issue con numero 1234 e titolo "Analisi dei requisiti" avrà come branch "1234-analisi-dei-requisiti".

*Creazione del documento*: Il redattore crea il documento utilizzando il template fornito dal gruppo _Sigma18_ e lo salva con la seguente nomenclatura descritta nella #link(<versionamentodeidocumenti>)[sezione 3.1.8.2].
Il redattore segnerà il termine della stesura segnando come messaggio nel #glossario("Commit") "closes N" dove con "N" si intende il numero della _issue_ aperta con \# come suffisso. In questo modo, il sistema di gestione delle _issue_ di _GitHub_ andrà a chiudere automaticamente la _issue_ una volta che la _pull request_ sarà stata accettata e il merge effettuato.

*Verifica del documento*: Terminata la stesura, il redattore andrà ad aprire una
_pull request_ andando ad assegnare i verificatori.

I verificatori sono i membri del gruppo che si occuperanno di verificare il documento e di fornire feedback al redattore. In caso di esito negativo, i verificatori andranno a riufiutare la _pull request_ lasciando un commento e il redattore dovrà apportare le modifiche richieste. In caso di esito positivo, i verificatori andranno ad approvare la _pull request_ e il documento potrà essere considerato pronto per la pubblicazione.

*Pubblicazione del documento*: Una volta approvato il documento da parte dei verificatori, il responsabile andrà a fare il merge della _pull request_ e il documento sarà considerato pubblicato.

I documenti in fase di stesura non sono considerati pubblici e pertanto saranno accessibili solamente all'interno delle loro _branch_ di lavoro. I verbali che richiedono firme esterne, verranno pubblicati senza firma per permetterne la visione in fase di validità da parte dell'azienda proponente. A firma ottenuta, il documento verrà aggiornato e pubblicato direttamente nel #link("https://sigma18unipd.github.io/")[sito web dedicato alla documentazione].

Tutti i documenti all'interno di una _pull request_ scateneranno l'avvio di una _GitHub Action_ che andrà a verificare la presenza effettiva dei termini contrasegnati come glossario nel #link("https://sigma18unipd.github.io/documentiCompilati/2-RTB/documentidiprogetto/glossario.pdf")[glossario stesso]. In caso di errore, la _pull request_ non potrà essere accettata e il redattore dovrà provvedere a integrare il glossario con i termini mancanti.

Tutti i documenti pubblicati nella _branch_ "main" scateneranno l'avvio di una _GitHub Action_ che andrà ad effettuare la compilazione e la successiva pubblicazione dei sorgenti nel #link("https://sigma18unipd.github.io/")[sito web dedicato alla documentazione].

==== Denominazione dei documenti
Come deciso nel #link("https://sigma18unipd.github.io/documentiCompilati/1-candidatura/verbali/interni/vi_20250307_1.0.0.pdf")[verbale interno] in data 2025/03/07 i documenti seguiranno una nomenclatura ben definita, in modo tale da poter far effettuare delle azioni alle _GitHub Action_ basandosi sul nome del file.
Tutti i sorgenti della documentazione termineranno con l'estensione _Typst_ _".typ"_.

===== Verbali
I verbali seguiranno una nomenclatura così definita:
#set align(center)
*TIPO*\_*DATA*\_*VERSIONE*
#set align(left)

dove "TIPO" è una sigla e varia per "vi" in caso di un verbale interno e "ve" per un verbale esterno. \
"DATA" rappresenta la data del verbale in formato _AAAAMMGG_. \
"VERSIONE" rappresenta l'ultima versione del file con la nomenclatura descritta nella #link(<versionamentodeidocumenti>)[sezione 3.1.8.2].

===== Diari di bordo
I diari di bordo seguiranno una nomenclatura così definita:
#set align(center)
*ddb*\_*DATA*
#set align(left)

dove "DATA" rappresenta la data del verbale in formato _AAAAMMGG_.

===== Glossario
Il glossario sarà definito come "glossario"

===== Altri documenti
Gli altri documenti seguiranno una nomenclatura così definita:
#set align(center)
*TITOLOBREVE*\_*VERSIONE*
#set align(left)

dove "TITOLOBREVE" è il titolo abbreviato del documento in minuscolo e senza spazi.
"VERSIONE" rappresenta l'ultima versione del file con la nomenclatura descritta nella #link(<versionamentodeidocumenti>)[sezione 3.1.8.2].

==== Versionamento dei documenti <versionamentodeidocumenti>
Il gruppo ha optato per l'utilizzo di un sistema di versionamento così definito:


#set align(center)
*X*.*Y*.*Z*
#set align(left)

dove:
- *X*: Modifiche sostanziali e ristrutturazioni importanti
- *Y*: Aggiunta di nuovi paragrafi e correzioni concettuali
- *Z*: Correzioni sintattiche e grammaticali, modifiche minori e cambiamenti al template

==== Riferimenti e formati
===== Date
Ogni data nei documenti verrà scritta utilizzando il formato "*AAAA/MM/GG*" dove *AAAA* indica l'anno in numero a 4 cifre, *MM* indica il mese in numero a 2 cifre e *GG* indica il giorno in numero a 2 cifre.

Nel caso di date scritte per intero, si utizzerà il formato *GG MESEINLETTERE AAAA*, dove *GG* indica il giorno in numero a 2 cifre, *MESEINLETTERE* indica il mese in lette (ad esempio "Aprile") e *AAAA* indica l'anno in numero a 4 cifre.

Esempio di data: *2025/05/01* oppure *01 Maggio 2025*.

=== Manutenzione dei documenti <manutenzionedocumenti>
Con manutenzione dei documenti s'intende l'attività di modifica di un documento già pubblicato in precedenza. Questa attività differisce di poco e riprende i passaggi già descritti nella #link(<produzionedeidocumenti>)[sezione 3.1.8] con al posto della creazione di un nuovo documento, la modifica di un sorgente già esistente. I restanti passi rimangono invariati.

== Gestione della configurazione
== Accertamento della Qualità
== Verifica
== Validazione


#pagebreak()
= Processi organizzativi <organizzativi>

#pagebreak()
= Standard per la qualità

#pagebreak()
= Metriche per la qualità di processo

#pagebreak()
= Metriche per la qualitá di prodotto




