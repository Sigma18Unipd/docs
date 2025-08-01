#import "../../templates/template.typ": *

#show: content => verbale(
  titoloDocumento: "Norme di progetto",
  abstract: "Documento contenente le Norme di progetto che definiscono le modalità di lavoro del gruppo.",
  responsabili: ("Pietro Crotti", "Marco Egidi", "Matteo Marangon"),
  redattori: ("Mirco Borella", "Alessandro Bernardello", "Aleena Mathew", "Matteo Marangon", "Marco Egidi"),
  verificatori: ("Mirco Borella", "Carmelo Russello", "Matteo Marangon", "Alessandro Bernardello", "Aleena Mathew", "Pietro Crotti"),
  tipo: "Documento Interno",
  destinatari: "Sigma18",
  versioneAttuale: "1.0.0",
  versioni: (
    "1.0.0",
    "2025/07/23",
    "Matteo Marangon",
    "Aleena Mathew",
    "Migliorie impostazione del documento e aggiornamento link",
    "0.7.3",
    "2025/06/27",
    "Aleena Mathew",
    "Matteo Marangon",
    "Correzioni lessicali e grammaticali",
    "0.7.2",
    "2025/06/06",
    "Aleena Mathew",
    "Matteo Marangon",
    "Correzione di una metrica",
    "0.7.1",
    "2025/06/02",
    "Matteo Marangon",
    "Carmelo Russello",
    "Correzioni lessicali e grammaticali, integrazione link",
    "0.7.0",
    "2025/05/27",
    "Aleena Mathew",
    "Pietro Crotti",
    "Aggiunte metriche di qualità",
    "0.6.0",
    "2025/05/13",
    "Alessandro Bernardello",
    "Mirco Borella",
    "Stesura sezioni da 4.2 (Infrastructure) a 4.4 (Training)",
    "0.5.0",
    "2025/05/08",
    "Mirco Borella",
    "Alessandro Bernardello",
    "Norme analisi dei requisiti e continuazione stesura documento",
    "0.4.0",
    "2025/05/04",
    "Mirco Borella",
    "Carmelo Russello",
    "Aggiunta sezione 3.1.9 (Manutenzione documenti)",
    "0.3.0",
    "2025/04/30",
    "Mirco Borella",
    "Aleena Mathew",
    "Stesura sezioni da 2.3 (Sviluppo) a 3.2 (Gestione della configurazione)",
    "0.2.0",
    "2025/04/26",
    "Marco Egidi",
    "Matteo Marangon",
    "Stesura sezione 2.1 (Fornitura) e 2.2 Attività di fornitura",
    "0.1.0",
    "2025/04/22",
    "Mirco Borella",
    "Alessandro Bernardello",
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

- *ISO/IEC 12207:1995 - Standard internazionale per i processi di ciclo di vita del _software_* [ultimo accesso il: 17/07/2025]\ #link("https://www.math.unipd.it/~tullio/IS-1/2009/Approfondimenti/ISO_12207-1995.pdf")[https://www.math.unipd.it/~tullio/IS-1/2009/Approfondimenti/ISO_12207-1995.pdf]

- *ISO/IEC 12207* [ultimo accesso il: 17/07/2025] \ #link("https://it.wikipedia.org/wiki/ISO/IEC_12207")[https://it.wikipedia.org/wiki/ISO/IEC_12207]

- *Capitolato C3 - Automatizzare le routine digitali tramite l'intelligenza generativa* [ultimo accesso il:  17/07/2025] \ #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C3.pdf")[https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C3.pdf]

- *Regolamento del progetto didattico* [ultimo accesso il: 17/07/2025]\ #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf")[https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf]

=== Riferimenti informativi

- *Glossario*[versione 1.0.0] \ #link("https://sigma18unipd.github.io/documentiCompilati/2-RTB/documentidiprogetto/glossario.pdf")[https://sigma18unipd.github.io/documentiCompilati/2-RTB/documentidiprogetto/glossario.pdf]

- *Processi di ciclo di vita* [ultimo accesso il:  17/07/2025]\ #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T02.pdf")[https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T02.pdf]

#pagebreak()









= Processi primari <primari>
Lo standard ISO/IEC 12207:1995 è nato per fornire un modello di riferimento per la definizione dei processi di ciclo di vita del _software_ e per la gestione della qualità del _software_.

Lo standard definisce i processi primari come i processi che sono direttamente coinvolti nella realizzazione del prodotto _software_, tra cui: *acquisizione*, *fornitura*, *sviluppo*, *gestione* e *manutenzione*.

Nello specifico, ai fini del capitolato, tratteremo i seguenti processi primari:
- #link(<fornitura>)[*Fornitura*]

- #link(<sviluppo>)[*Sviluppo*]

== Fornitura <fornitura>
Lo standard ISO/IEC 12207:1995 definisce il processo di fornitura come l'insieme delle attività necessarie per garantire che il prodotto _software_ soddisfi i requisiti specificati e le aspettative del proponente.

Questo processo è iniziato con uno studio di fattibilità e lo sviluppo di alcuni flussi applicativi insieme al proponente, raccolti nella sessione di #glossario("design thinking") di cui è stato redatto il relativo #link("https://sigma18unipd.github.io/documentiCompilati/2-RTB/verbali/esterni/ve_20250414_1.1.4.pdf")[verbale esterno] [versione 1.1.4]. L'incontro è stato fondamentale per la definizione e la contrattazione dei requisiti del progetto.

Il processo terminerà con la consegna del prodotto al proponente e la successiva verifica della sua conformità ai requisiti specificati.

=== Strumenti a supporto
La fornitura viene supportata da strumenti di comunicazione, di gestione dei requisiti e di tracciamento delle modifiche. Il gruppo _Sigma18_ ha definito di utilizzare i seguenti strumenti:

- *Whatsapp*: per la comunicazione asincrona interna al gruppo;

- *Discord*: per svolgere le riunioni di gruppo e per la comunicazione sincrona tra i vari membri;

- *GitHub*: per la gestione del #glossario("Backlog"), e per il #glossario("sistema di ticketing"), utili per avere una panoramica del lavoro svolto e da svolgere;

- *Microsoft Excel*: per la gestione e la tracciabilità delle ore di lavoro svolte da ciascun membro del gruppo.

Gli strumenti scelti per la comunicazione con il proponente sono:
- *Gmail*: per la comunicazione formale asincrona con il proponente, successivamente rimpiazzata da:

- *Slack*: per la comunicazione con il proponente, l'invio di documenti e per il supporto allo sviluppo del prodotto.

- *Microsoft Teams*: per le riunioni online con il proponente.

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
Segue un elenco dei documenti che il gruppo _Sigma18_ fornirà all'azienda proponente _Var Group S.p.A._ e ai committenti del capitolato _Prof. Riccardo Cardin_ e _Prof. Tullio Vardanega_  (in ordine alfabetico).

==== Analisi dei requisiti
#link("https://sigma18unipd.github.io/documentiCompilati/2-RTB/documentidiprogetto/analisideirequisiti_1.2.0.pdf")[Documento] [versione 1.2.0] che ha lo scopo di fornire una descrizione dettagliata dei casi d'uso e dei requisiti del progetto che l'azienda proponente _Var Group S.p.A._ ha presentato.
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
#link("https://sigma18unipd.github.io/documentiCompilati/2-RTB/documentidiprogetto/pianodiprogetto_1.1.0.pdf")[Documento] [versione 1.1.0] che ha l'obiettivo di definire e tenere traccia di tutte le attività eseguite e pianificate dal team durante lo sviluppo del progetto.
In particolare, il piano di progetto si concentra su: analisi dei rischi, modello di sviluppo e pianificazione delle attività.

Tipo di documento: *Documento Esterno* \
Destinatari documento: *_Sigma18_, _Var Group S.p.A_, _Prof. Tullio Vardanega_, _Prof. Riccardo Cardin_*

==== Piano di qualifica
Documento che ha lo scopo di definire le modalità di verifica e di validazione adottate dal gruppo _Sigma18_ al fine di garantire la qualità del prodotto finale.
Il documento sarà soggetto ad aggiornamenti durante il ciclo di vita del progetto per riflettere le modifiche apportate per raggiungere una migliore efficacia ed efficienza.

Tipo di documento: *Documento Esterno* \
Destinatari documento: *_Sigma18_, _Var Group S.p.A_, _Prof. Tullio Vardanega_, _Prof. Riccardo Cardin_*

==== Preventivo dei costi e dichiarazione impegni
#link("https://sigma18unipd.github.io/documentiCompilati/1-candidatura/impegnicosti_1.0.1.pdf")[Documento] [versione 1.0.1] che ha lo scopo di definire i ruoli, i costi preventivati e fornire una stima della data per la realizzazione del capitolato. Il documento contiene anche un'analisi dei rischi approssimativa che il gruppo _Sigma18_ ha tenuto in considerazione durante la stesura del preventivo.

Tipo di documento: *Documento Esterno* \
Destinatari documento: *_Prof. Tullio Vardanega_, _Prof. Riccardo Cardin_*

==== Valutazione dei capitolati
#link("https://sigma18unipd.github.io/documentiCompilati/1-candidatura/valutazionecapitolati_1.1.0.pdf")[Documento] [versione 1.1.0] che presenta le motivazioni che hanno portato il gruppo _Sigma18_ a scegliere il capitolato _C3 - Automatizzare le routine digitali tramite l'intelligenza generativa_ proposto dall'azienda _Var Group S.p.A._ e i relativi pro e contro di ogni capitolato proposto.

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

- *StarUML* e *Draw.io*: per la creazione dei #glossario("diagrammi UML");

== Attività di sviluppo
In base allo standard ISO/IEC 12207:1995, il processo di sviluppo è composto da un insieme di attività successivamente descritte:

=== Implementazione del processo <implementazione>
Il processo di sviluppo inizia con la definizione del modello di ciclo di vita del _software_ da adottare. Il gruppo _Sigma18_ ha deciso di adottare il modello #glossario("Agile") in quanto permette una maggiore flessibilità e adattabilità alle esigenze del progetto.
Il modello Agile prevede un approccio iterativo e incrementale, in cui il prodotto viene sviluppato in piccole parti (o _sprint_) e viene costantemente testato e migliorato.

=== Analisi dei requisiti
L'analisi dei requisiti è l'attività che ha lo scopo di definire e documentare i requisiti richiesti dal proponente del prodotto _software_. Questa attività è fondamentale per garantire che il prodotto finale soddisfi le aspettative e i vincoli del proponente e degli utenti
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

- *Documentazione*;
- *Gestione della configurazione*;
- *Qualità*;
- *Verifica*;
- *Validazione*;
- *Revisione congiunta*;
- *Audit*;
- *Risoluzione dei problemi*;
- *Usabilità*;
- *Valutazione del prodotto*;

Ai fini della natura del capitolato, il gruppo _Sigma18_ ha deciso di trattare i processi di supporto relativi alla *Documentazione*, *Gestione della configurazione*, *Qualità*, *Verifica* e *Validazione*.

== Documentazione <documentazione>
Il processo di "Gestione della documentazione" è una delle parti fondamentali di tutti i processi primari: garantisce lo sviluppo, la manutenzione e la registrazione delle informazioni prodotte relativamente al prodotto software.

L'obiettivo principale di questo processo è quello di garantire che la documentazione prodotta sia completa, accurata e facilmente accessibile in maniera asincrona a tutti i membri del gruppo di lavoro. Tutto il gruppo di lavoro è tenuto a rispettare le norme e le modalità di lavoro per la stesura dei documenti definite in questa sezione.

=== Strumenti a supporto della documentazione
Il gruppo _Sigma18_ ha deciso di utilizzare i seguenti strumenti per la gestione della documentazione:

- *GitHub*: per la gestione dei sorgenti della documentazione, versionamento dei documenti e sistema di ticketing con #glossario("pull request");

- *Typst*: per la scrittura della documentazione in modo semplice e veloce. Il gruppo _Sigma18_ ha deciso di utilizzare questo linguaggio di markup simile a #glossario("LaTeX") per la scrittura della documentazione in quanto permette di generare documenti di alta qualità e di gestire modelli e _template_. Inoltre utilizza costrutti simili a quelli che si trovano nei linguaggi di programmazione e permette al gruppo di generare documenti compilando i sorgenti in modo centralizzato ed automatizzato.

- *Microsoft Excel*: per la gestione e la tracciabilità delle ore di lavoro svolte da ciascun membro del gruppo.

=== Attività previste
Il processo di documentazione è composto da un insieme di attività successivamente descritte:
- *Produzione*: attività che ha lo scopo di definire le modalità con la quale redigere i documenti. Ulteriori informazioni nella #link(<produzionedeidocumenti>)[sezione 3.1.8].

- *Manutenzione*: attività che ha lo scopo di definire le modalità con la quale aggiornare o modificare documenti già esistenti. Ulteriori informazioni nella #link(<manutenzionedocumenti>)[sezione 3.1.9].

=== Verbali
La redazione di un verbale esterno o interno sfrutta il #link("https://github.com/Sigma18Unipd/docs/blob/main/templates/template.typ")[relativo template] ai fini di produrre documenti standardizzati e di alta qualità.

Ogni modifica al template viene discussa e approvata dal gruppo prima di essere applicata e viene testata sui documenti retroattivamente per garantire la compatibilità con i documenti già prodotti.

Un verbale contiene una pagina di copertina così composta:
- *Logo del gruppo _Sigma18_ e indirizzo _email_ di contatto*;

- *Titolo del documento*;

- *Lista dei responsabili*;

- *Lista dei redattori*;

- *Lista dei verificatori*;

- *Versione del documento*;

- *Tipologia del documento*;

- *Destinatari del documento*;

- *Abstract dei contenuti*.

Successivamente, il verbale contiene una tabella con le versioni e la descrizione delle modifiche del documento. La definizione delle modalità di versionamento dei documenti è riportata nella #link(<versionamentodeidocumenti>)[sezione 3.1.8.2].

Segue poi l'indice del documento, che riporta i titoli delle sezioni e dei paragrafi del documento. L'indice viene generato automaticamente.

Un verbale contiene sempre le sezioni successivamente descritte.
La prima riguarda i "Riferimenti generali", che contengono le modalità di svolgimento della riunione (virtuale se svolta in videoconferenza o in presenza se svolta in loco), la data e la durata della riunione. Segue poi la lista dei partecipanti presenti.

La seconda sezione riguarda i punti all'"ordine del giorno", che contiene i punti discussi durante la riunione e le decisioni prese.

La sezione delle "Conclusioni e decisioni prese" contiene le decisioni prese durante la riunione e le azioni da intraprendere. Le attività definite "pendenti" e programmate sono disponibili nella successiva sezione "Attività programmate".
Questa sezione contiene una tabella con due colonne: la prima colonna contiene l'identificativo dell'attività (successivamente definito) e la seconda colonna contiene il titolo.

Con identificativo dell'attività si intende un numero a 5 cifre che identifica in modo univoco l'attività. Il numero dell'attività è assegnando seguendo la numerazione interna delle #glossario("issue") e delle #glossario("pull request") di _GitHub_. Pertanto, ad un'attività con numerazione _N_ in un verbale corrisponderà sempre la relativa _issue_ o _pull request_ su _GitHub_.

I verbali definiti come "esterni" includeranno una sezione per l'aggiunta della firma di verifica da parte dell'azienda proponente.

Ogni pagina del verbale, ad eccezione della copertina, contiene un'intestazione comprendente il logo del gruppo _Sigma18_ e il titolo del documento e un piè di pagina con il numero progressivo della pagina.

=== Glossario
La redazione del glossario sfrutta il #link("https://github.com/Sigma18Unipd/docs/blob/main/templates/templateGlossario.typ")[relativo template].

Il glossario contiene una pagina di copertina così composta:

- *Logo del gruppo _Sigma18_ e indirizzo _email_ di contatto*;

- *Titolo del documento*;

- *Lista dei responsabili*;

- *Lista dei redattori*;

- *Lista dei verificatori*;

- *Versione del documento*;

- *Tipologia del documento*;

- *Destinatari del documento*.


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
- *Logo del gruppo _Sigma18_ e indirizzo _email_ di contatto*;

- *Titolo del documento*;

- *Lista dei componenti del gruppo*;

Seguono poi generalmente le singole sezioni di riguardo, una per ogni pagina:
- "*Progressi raggiunti e confronto (retrospettiva)*": una lista puntata con i progressi raggiunti e le attività completate;

- "*Obiettivi e attività programmate (_backlog_)*": una lista puntata con gli obiettivi e le attività programmate per il periodo successivo;

- "*Analisi delle criticità e soluzioni adottate*": una lista puntata con le criticità emerse e le soluzioni adottate per affrontarle;

Ogni pagina del glossario, ad eccezione della copertina, contiene un'intestazione comprendente il logo del gruppo _Sigma18_ e il titolo del documento e un piè di pagina con il numero progressivo della pagina.

=== Lettere di presentazione
La redazione delle lettere di presentazione sfrutta il #link("https://github.com/Sigma18Unipd/docs/blob/main/templates/templateLettera.typ")[relativo template].

Ogni lettera di presentazione contiene una pagina di copertina così composta:
- *Logo del gruppo _Sigma18_ e indirizzo _email_ di contatto*;

- *Titolo del documento*;

- *Mittenti*;

- *Destinatari*;


Segue poi il corpo della lettera.

Ogni pagina di una lettera, ad eccezione della copertina, contiene un'intestazione comprendente il logo del gruppo _Sigma18_ e il titolo del documento e un piè di pagina con il numero progressivo della pagina. In caso di riferimenti a risorse esterne, il piè di pagina conterrà anche la lista con i _link_ per esteso.

=== Altri documenti
Tutti gli altri documenti redatti dal gruppo _Sigma18_ sfruttano il #link("https://github.com/Sigma18Unipd/docs/blob/main/templates/template.typ")[relativo template].

Ogni documento non già descritto contiene una pagina di copertina così composta:

- *Logo del gruppo _Sigma18_ e indirizzo _email_ di contatto*;

- *Titolo del documento*;

- *Lista dei responsabili*;

- *Lista dei redattori*;

- *Lista dei verificatori*;

- *Versione del documento*;

- *Tipologia del documento*;

- *Destinatari del documento*.

- *Abstract dei contenuti*.


Successivamente, ogni documento contiene una tabella con le versioni e la descrizione delle modifiche. La definizione delle modalità di versionamento dei documenti è riportata nella #link(<versionamentodeidocumenti>)[sezione 3.1.8.2].

Segue poi l'indice, che riporta i titoli delle sezioni e dei paragrafi del documento. L'indice viene generato automaticamente.

Si continua con il corpo del documento, che contiene le informazioni e i contenuti richiesti.

Ogni pagina di un documento, ad eccezione della copertina, contiene un'intestazione comprendente il logo del gruppo _Sigma18_ e il titolo del documento e un piè di pagina con il numero progressivo della pagina.

Alcuni documenti, come l'analisi dei requisiti, contengono sezioni o componenti che necessitano di essere normati al fine di garantire la qualità e la coerenza del documento stesso. Seguono quindi le sezioni che necessitano di essere normate, definite come:

#set align(center)
*TitoloDelDocumento*: *Sezione*
#set align(left)

==== Analisi dei Requisiti: Casi d'uso
Per la definizione dei casi d'uso è stata utilizzata la seguente nomenclatura:
#set align(center)
*UC[NUMERO]:TITOLO*
#set align(left)

dove con "*NUMERO*" s'intende il numero identificativo del caso d'uso, e con "*TITOLO*" s'intende un breve titolo che descrive il caso d'uso.

Ogni caso d'uso è composto da una serie di sezioni che ne descrivono il funzionamento e i scenari principali. Generalmente le sezioni sono le seguenti:

- *Attore principale*: descrive l'attore protagonista del caso d'uso.

- *Pre-condizioni*: rappresentano le condizioni che devono essere vere prima che il caso d'uso possa iniziare ad essere eseguito.

- *Post-condizioni*: specificano le proprietà che devono essere garantite al termine dell'esecuzione del caso d'uso.

- *Scenario principale*: descrive il percorso più comune e desiderato per un utente (attore) nel completare un obiettivo specifico interagendo con il sistema.

Nel caso in cui il caso d'uso preveda più scenari, questi vengono descritti in modo analogo allo scenario principale.

Nel caso in cui il caso d'uso preveda delle estensioni, queste verranno elencate in una sezione "*Estensioni*" indicando i relativi casi d'uso collegati.


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

*Assegnazione della _issue_*: La _issue_ viene assegnata al redattore del documento, che dovrà occuparsi della sua stesura. Sarà compito del redattore creare la relativa #glossario("branch") sul quale andare a lavorare. La _branch_ segue la seguente nomenclatura:

#set align(center)
*Numero*-*Titolo*
#set align(left)

Dove con "Numero" si intende il numero della _issue_ e con "Titolo" si intende il titolo della _issue_ stessa, tutto in minuscolo e con gli spazi sostituiti da "\-".

Ad esempio la _issue_ con numero 1234 e titolo "Analisi dei requisiti" avrà come branch "1234-analisi-dei-requisiti".

*Creazione del documento*: Il redattore crea il documento utilizzando il template fornito dal gruppo _Sigma18_ e lo salva con la seguente nomenclatura descritta nella #link(<versionamentodeidocumenti>)[sezione 3.1.8.2].
Il redattore segnerà il termine della stesura segnando come messaggio nel #glossario("Commit") "closes N" dove con "N" si intende il numero della _issue_ aperta con \# come suffisso. In questo modo, il sistema di gestione delle _issue_ di _GitHub_ andrà a chiudere automaticamente la _issue_ una volta che la _pull request_ sarà stata accettata e il #glossario("merge") effettuato.

*Verifica del documento*: Terminata la stesura, il redattore andrà ad aprire una
_pull request_ andando ad assegnare i verificatori.

I verificatori sono i membri del gruppo che si occuperanno di verificare il documento e di fornire feedback al redattore. In caso di esito negativo, i verificatori andranno a rifiutare la _pull request_ lasciando un commento e il redattore dovrà apportare le modifiche richieste. In caso di esito positivo, i verificatori andranno ad approvare la _pull request_ e il documento potrà essere considerato pronto per la pubblicazione.

*Pubblicazione del documento*: Una volta approvato il documento da parte dei verificatori, il responsabile andrà a fare il merge della _pull request_ e il documento sarà considerato pubblicato.

I documenti in fase di stesura non sono considerati pubblici e pertanto saranno accessibili solamente all'interno delle loro _branch_ di lavoro. I verbali che richiedono firme esterne, verranno pubblicati senza firma per permetterne la visione in fase di validità da parte dell'azienda proponente. A firma ottenuta, il documento verrà aggiornato e pubblicato direttamente nel #link("https://sigma18unipd.github.io/")[sito web dedicato alla documentazione].

Tutti i documenti all'interno di una _pull request_ scateneranno l'avvio di una _GitHub Action_ che andrà a verificare la presenza effettiva dei termini contrassegnati come glossario nel #link("https://sigma18unipd.github.io/documentiCompilati/2-RTB/documentidiprogetto/glossario.pdf")[glossario stesso]. In caso di errore, la _pull request_ non potrà essere accettata e il redattore dovrà provvedere a integrare il glossario con i termini mancanti.

Tutti i documenti pubblicati nella _branch_ "main" scateneranno l'avvio di una _GitHub Action_ che andrà ad effettuare la compilazione e la successiva pubblicazione dei sorgenti nel #link("https://sigma18unipd.github.io/")[sito web dedicato alla documentazione].

==== Denominazione dei documenti
Come deciso nel #link("https://sigma18unipd.github.io/documentiCompilati/1-candidatura/verbali/interni/vi_20250307_1.0.0.pdf")[verbale interno] [versione 1.0.0] in data 2025/03/07 i documenti seguiranno una nomenclatura ben definita, in modo tale da poter far effettuare delle azioni alle _GitHub Action_ basandosi sul nome del file.
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
Ogni data nei documenti verrà scritta utilizzando il formato "*AAAA/MM/GG*" derivante dallo standard _ISO 8601_ dove *AAAA* indica l'anno in numero a 4 cifre, *MM* indica il mese in numero a 2 cifre e *GG* indica il giorno in numero a 2 cifre, come stabilito nel #link("https://sigma18unipd.github.io/documentiCompilati/1-candidatura/verbali/interni/vi_20250307_1.0.0.pdf")[verbale interno del 2025/03/07] [versione 1.0.0].

Nel caso di date scritte per intero, si utilizzerà il formato *GG MESEINLETTERE AAAA*, dove *GG* indica il giorno in numero a 2 cifre, *MESEINLETTERE* indica il mese in lettere (ad esempio "Aprile") e *AAAA* indica l'anno in numero a 4 cifre.

Esempio di data: *2025/05/01* oppure *01 Maggio 2025*.

=== Manutenzione dei documenti <manutenzionedocumenti>
Con manutenzione dei documenti s'intende l'attività di modifica di un documento già pubblicato in precedenza. Questa attività differisce di poco e riprende i passaggi già descritti nella #link(<produzionedeidocumenti>)[sezione 3.1.8] con al posto della creazione di un nuovo documento, la modifica di un sorgente già esistente. I restanti passi rimangono invariati.

== Gestione della configurazione
Per lo standard ISO/IEC 12207:1995, la gestione della configurazione è l'insieme delle attività che hanno lo scopo di identificare e controllare le modifiche apportate al prodotto _software_ e alla documentazione associata.

=== Strumenti a supporto della gestione della configurazione
Il gruppo _Sigma18_ ha deciso di utilizzare i seguenti strumenti per la gestione della configurazione:
- *GitHub*: per la gestione del versionamento, del ticketing e per avere una panoramica del lavoro svolto e da svolgere;

- *GitHub Actions*: per l'automazione di alcune attività di gestione della configurazione, come la compilazione automatica della documentazione.

=== Attività previste
Il processo di gestione della configurazione è composto da un insieme di attività così descritte:

- *Identificazione della configurazione*: attività che ha lo scopo di identificare e definire gli elementi di configurazione del prodotto _software_ e della documentazione associata.

- *Controllo della configurazione*: attività che ha lo scopo di controllare le modifiche apportate agli elementi di configurazione e garantire la tracciabilità delle modifiche.

- *Registrazione della configurazione*: attività che ha lo scopo di registrare e documentare le modifiche apportate.

- *Valutazione della configurazione*: attività che ha lo scopo di valutare la conformità degli elementi di configurazione agli standard e alle specifiche richieste dal proponente.

=== Identificazione della configurazione
Data la natura del capitolato, il gruppo _Sigma18_ ha deciso di identificare la documentazione prodotta in 4 categorie, definite da:
#set align(center)
*N-NOMEFASE*
#set align(left)
dove la coppia *N-NOMEFASE* rappresenta una delle 4 fasi del capitolato:

- _0-diaridibordo_

- _1-candidatura_

- _2-RTB_

- _3-PB_

Anche se non parte integrante per il proponente, è presente una cartella "*0-diaridibordo*" che contiene le presentazioni per i diari di bordo prodotti dal gruppo.

Ogni fase viene rappresentata da una cartella nella #glossario("root directory") del repository della documentazione. All'interno di ogni cartella, sono presenti le sottocartelle i relativi documenti prodotti dal gruppo.

Esempio di struttura del repository della documentazione come definita nel #link("https://sigma18unipd.github.io/documentiCompilati/1-candidatura/verbali/interni/vi_20250307_1.0.0.pdf")[verbale interno del 2025/03/07] [versione 1.0.0]:

#align(center)[
  ```
  docs
    ├── assets
    │   └── img
    │       ├── LogoSlim.svg
    │       └── Logo.svg
    ├── readme.md
    ├── templates
    │   └── template.typ
    ├── 0-diaridibordo
    │   └── ...
    ├── 1-candidatura
    │   ├── ...
    │   └── verbali
    │       ├── interni
    │       │     └── vi_20250305_1.0.0.typ
    │       └── ...
    ├── 2-RTB
    │   └── ...
    └── ...
  ```
]

=== Controllo della configurazione
Il controllo della configurazione è l'attività che ha lo scopo di controllare le modifiche apportate agli elementi di configurazione e garantire la tracciabilità delle modifiche.
Il gruppo _Sigma18_ ha deciso di utilizzare il sistema di gestione delle _branch_, delle _issue_ e delle _pull request_ di _GitHub_ per garantire la tracciabilità delle modifiche apportate alla documentazione e al codice sorgente del prodotto _software_.

Come descritto nella #link(<produzionedeidocumenti>)[sezione 3.1.8], ogni modifica o aggiunta di file inizia con la creazione di una _issue_ dedicata.

Ogni issue contiene:
- *Titolo*: che descrive brevemente il contenuto della _issue_;

- *Descrizione*: che descrive il contenuto e le motivazioni della _issue_;

- *Assegnatari*: che sono i membri del gruppo che si occuperanno della _issue_;

- *Labels (dall'inglese: etichette)*: che permettono di categorizzare le _issue_ in base al tipo di attività da svolgere;

- *Tipo*: _non utilizzato_;

- *Progetto*: _non utilizzato_;

- *_Milestone_*: che permette di raggruppare le _issue_ in base alla fase del capitolato a cui appartengono;

Inoltre, per ogni _issue_ o _pull request_ creata, _GitHub_ crea automaticamente un numero identificativo univoco (*ID*) all'interno del repository.

Successivamente alla creazione di una _issue_, l'assegnatario dovrà creare la relativa _branch_ di sviluppo. La nomenclatura delle _branch_ è definita nella #link(<produzionedeidocumenti>)[sezione 3.1.8].

Ogni modifica apportata ai file presenti nella _branch_ dovrà essere documentata tramite un #glossario("commit") che descrive brevemente la modifica apportata. In caso di risoluzione di una _issue_, il messaggio di _commit_ dovrà contenere la dicitura "closes \#N" dove con "N" si intende il numero della _issue_ aperta. In questo modo, il sistema di gestione delle _issue_ di _GitHub_ andrà a chiudere automaticamente la _issue_ una volta che la _pull request_ sarà stata accettata e il _merge_ effettuato.

Al termine del lavoro sulla _branch_, l'assegnatario dovrà creare una _pull request_ per richiedere l'integrazione delle modifiche nella _branch_ principale "main".
La _pull request_ dovrà contenere:

- *Titolo*: che descrive brevemente il contenuto della _pull request_;

- *Descrizione*: che descrive il contenuto e le motivazioni della _pull request_;

- *Verificatori* : che sono i membri del gruppo che si occuperanno della verifica della _pull request_;

- *Assegnatari*: che sono i membri del gruppo che hanno lavorato sulla _branch_;

- *Etichette*: che permettono di categorizzare le _pull request_ in base al tipo di attività svolta;

I verificatori designati dovranno esaminare le modifiche apportate e fornire feedback. In caso di esito negativo, i verificatori andranno a rifiutare la _pull request_ lasciando un commento specifico sulle problematiche riscontrate. L'assegnatario dovrà quindi apportare le modifiche richieste. In caso di esito positivo, i verificatori approveranno la _pull request_ e il contenuto sarà pronto per l'integrazione.

Grazie al sistema di _GitHub Actions_, alla creazione di una _pull request_ vengono attivati automaticamente dei controlli sulla validità della documentazione, tra cui la verifica della presenza dei termini del glossario.

Il gruppo _Sigma18_ ha anche configurato un sistema di protezione del _branch "main"_ che impedisce il _merge_ di una _pull request_ se non sono stati soddisfatti i requisiti di verifica e approvazione, e il _commit_ diretto di modifiche di file senza passare per una _pull request_.

=== Registrazione della configurazione
Per soddisfare la necessità di registrare e tracciare i cambiamenti apportati alla documentazione, il gruppo _Sigma18_ ha deciso di utilizzare un sistema di nomenclatura dei file e di versionamento dei documenti definito nella #link(<versionamentodeidocumenti>)[sezione 3.1.8.2 (Versionamento dei documenti)].

=== Valutazione della configurazione
La valutazione della configurazione è l'attività che ha lo scopo di valutare la conformità degli elementi di configurazione agli standard e alle specifiche richieste dal proponente.

Il gruppo _Sigma18_ s'impegna a raggiungere in modo efficace ed efficiente gli obiettivi di qualità definiti nel capitolato e a garantire la conformità del prodotto _software_ agli standard e alle specifiche richieste dal proponente.

== Accertamento della qualità
Il processo di accertamento della qualità è l'insieme delle attività che hanno lo scopo di garantire la qualità del prodotto _software_ e della documentazione associata seguendo gli obiettivi fissati dal proponente.

=== Strumenti a supporto della qualità
Il gruppo _Sigma18_ ha deciso di utilizzare delle metriche oggettive per la valutazione della qualità del prodotto _software_ e della documentazione associata. Le metriche utilizzate sono descritte in dettaglio nel #link("https://sigma18unipd.github.io/documentiCompilati/2-RTB/documentidiprogetto/pianodiqualifica_1.1.0.pdf")[piano di qualifica] [versione 1.1.0].

=== Attività previste
Secondo lo standard ISO/IEC 12207:1995, il processo di accertamento della qualità è composto da un insieme di attività così descritte:
- *Implementazione del processo*: attività che ha lo scopo di implementare il processo di raccoglimento dei dati da valutare e l'individuazione degli standard di qualità insieme al proponente;

- *Accertamento della qualità del prodotto*: attività che ha lo scopo di valutare il prodotto _software_ e la documentazione associata;

- *Accertamento della qualità del processo*: attività che ha lo scopo di valutare i processo del gruppo _Sigma18_ e la loro conformità agli standard e alle specifiche richieste dal proponente.

== Verifica
Il processo di verifica è l'insieme delle attività che hanno lo scopo di garantire la conformità e la correttezza del prodotto _software_ e della documentazione associata agli standard e alle specifiche richieste dal proponente.

In altre parole risponde alla domanda: "Costruiamo il prodotto correttamente?".

A partire dai primi verbali prodotti in fase di candidatura, il gruppo _Sigma18_ si è avvalso del meccanismo di verifica delle _pull request_ di _GitHub_ dove attraverso il controllo dei verificatori, viene garantita la correttezza grammaticale, sintattica e del contenuto della documentazione prodotta.

In caso di modifiche corpose ai documenti, vengono assegnati verificatori aggiuntivi di supporto.

Tutte le attività di verifica riguardanti il prodotto _software_ sono registrate nel #link("https://sigma18unipd.github.io/documentiCompilati/2-RTB/documentidiprogetto/pianodiqualifica_1.1.0.pdf")[piano di qualifica] [versione 1.1.0] e riguarderanno principalmente lo sviluppo nella terza fase del capitolato (_3-PB, Product Baseline_).

In generale, il processo di verifica è composto da un insieme di due attività successivamente descritte.

=== Analisi statica
L'analisi statica è l'attività che ha lo scopo di analizzare il prodotto _software_ senza eseguirne il codice sorgente. Questa attività viene svolta in modo automatico tramite strumenti di analisi del codice.
In altre parole l'analisi statica si concentra nella verifica della correttezza sintattica e semantica del codice sorgente.

Per realizzare ciò, l'analisi statica si può effettuare in due tipologie:
- *Metodi formali*: metodi matematici che permettono di dimostrare la correttezza del codice sorgente. Questi metodi sono molto complessi e richiedono una conoscenza approfondita della teoria dei linguaggi.

- *Metodi di lettura*, a loro volta suddivisi in:
  - *_Walkthrough_*: metodi di lettura del codice sorgente che prevede l'esistenza di un problema, e attraverso un analisi rigorosa di tutto il prodotto si va alla ricerca di errori. Non sapendo a priori di che cosa e dove si tratta l'errore, il _walkthrough_ diventa un metodo molto costoso, poco efficace e non applicabile al nostro caso d'uso.

  - *_Inspection_*: metodi di lettura del codice sorgente basata in una _checklist_ (lista di controllo) dove, in base alla conoscenza pregressa degli errori più probabili, va ad analizzarli in modo lineare. In caso di errori non presenti e previsti nella _checklist_, essa verrà aggiornata e il codice sorgente verrà analizzato nuovamente. Questo metodo è molto efficace e soprattutto automatizzabile basandosi nella lista di controllo.

Il gruppo _Sigma18_ ha deciso di utilizzare il metodo di analisi statica basato su _inspection_ in quanto stimiamo di riuscire con buona probabilità a creare una lista di controllo efficace e completa per il nostro prodotto.

=== Analisi dinamica
L'analisi dinamica è l'attività che ha lo scopo di analizzare il prodotto _software_ eseguendo il codice sorgente e analizzando il comportamento in esecuzione. Lo scopo dell'analisi dinamica è quello di verificare il comportamento del prodotto _software_ in fase di esecuzione e di individuare eventuali errori o anomalie di funzionamento non previste.

Per fare ciò, l'analisi dinamica fa uso dei #glossario("Test") che devono essere ripetibili, in quanto devono essere eseguiti più volte (ad esempio una volta per riscontrare un errore, e una seconda volta per verificare che l'errore sia stato corretto) e automatizzabili, in quanto verranno eseguiti in modo automatico per garantire la ripetibilità e la correttezza dei risultati.
Per riuscire a testare il prodotto nelle sue parti, vengono utilizzati degli elementi a supporto definiti come:
- *Stub*: oggetti che sostituiscono il comportamento di una componente reale per permettere il testing dell'oggetto chiamante;

- *Driver*: oggetti che richiamano parti di codice non direttamente eseguibili;

- *Logger*: oggetti che registrano gli esiti dei test eseguiti del prodotto _software_ per permettere l'analisi dei risultati e la loro valutazione.

Tutti i test previsti dal gruppo _Sigma18_ sono sviluppati per essere eseguiti in modo indipendente dall'ambiente di esecuzione e in modo deterministico, ovvero che il risultato del test non deve dipendere da fattori esterni al prodotto _software_ (in altre parole, a partire da uno stesso input, il test deve sempre restituire lo stesso output).

Le tipologie di test previste dal gruppo _Sigma18_ sono:
- *Test di unità*: test che verificano il corretto funzionamento di una singola unità del prodotto _software_ (ad esempio una singola funzione);

- *Test di integrazione*: test che verificano il corretto funzionamento di più unità del prodotto _software_ e l'integrazione tra loro (ad esempio due oggetti che comunicano tra loro);

- *Test di sistema*: test che verificano il funzionamento completo dell'applicazione in un ambiente che simula quello reale di utilizzo;

- *Test di regressione*: test che verificano il corretto funzionamento del prodotto _software_ dopo una modifica al codice sorgente.

- *Test di accettazione*: test che verificano il corretto funzionamento del prodotto _software_ in base alle specifiche richieste dal proponente.



== Validazione
Secondo lo standard ISO/IEC 12207:1995, il processo di validazione è il processo che conferma che il prodotto soddisfi i requisiti specificati del sistema, attraverso dimostrazioni oggettive e misurabili. Valuta concretamente la qualità raggiunta del prodotto.

In altre parole, la validazione ci fa rispondere alle domande "Il prodotto è quello che ci aspettavamo?", "Abbiamo realizzato il sistema giusto?".

Il gruppo _Sigma18_ applica questo processo in parallelo al processo di verifica.

Tutte le esigenze del proponente "Var Group S.p.A." sono state raccolte e analizzate in modo da definire i requisiti del prodotto _software_ e della documentazione associata nel documento #link("https://sigma18unipd.github.io/documentiCompilati/2-RTB/documentidiprogetto/analisideirequisiti_1.2.0.pdf")[analisi di requisiti] [versione 1.2.0].

Nel processo di validazione, vengono in aiuto anche le attività di tracciamento dei requisiti sopra descritte, che permetteranno di validare se il prodotto funziona nel modo in cui il proponente si aspetta e se è conforme a quanto stabilito.

Un altro strumento a supporto sono i test di accettazione che rappresentano l'ultimo punto di controllo del sistema prima del rilascio del prodotto. Questi test vengono eseguiti in un ambiente che simula quello reale di utilizzo e verificano il corretto funzionamento del prodotto _software_ assieme al proponente.
#pagebreak()











= Processi organizzativi <organizzativi>
I processi organizzativi sono l'insieme delle attività volte ad abilitare, controllare e supportare il ciclo di vita del sistema e dei progetti collegati.

La normativa ISO/IEC 12207:1995 indirizza i seguenti sotto processi:

- *Management*: il processo garantisce lo sviluppo e la manutenzione delle informazioni prodotte e registrate relativamente al prodotto software.

- *Infrastructure*: Il processo ha lo scopo di definire e mantenere l'integrità di tutti i componenti della configurazione (Configuration Items) e di renderli accessibili a chi ne ha diritto.

- *Improvement*: Il processo ha lo scopo di stabilire, valutare, misurare, controllare e migliorare il ciclo di vita del software.

- *Training*: Il processo ha lo scopo di fornire all'organizzazione risorse umane adeguate e di mantenere le loro competenze consistenti con le necessità del business.

== Management (Gestione dei processi)
Secondo la normativa ISO/IEC 12207:1995, il processo di gestione dei processi ha lo scopo di individuare i processi e attribuirli ai relativi ruoli nella gestione del ciclo di vita del software. L'obiettivo è quello di garantire che i processi siano definiti, implementati e mantenuti in modo da soddisfare le esigenze del proponente e garantire la massima efficienza de gruppo di lavoro.

I risultati del processo dell'attività di gestione dei processi si concretizzano nel #link("https://sigma18unipd.github.io/documentiCompilati/2-RTB/documentidiprogetto/pianodiprogetto_1.1.0.pdf")[piano di progetto] [versione 1.1.0].

=== Strumenti a supporto della gestione dei processi <sezione4.1.1>
Il gruppo _Sigma18_ ha deciso di utilizzare i seguenti strumenti per la gestione dei processi:

- *GitHub*: per la gestione delle attività in corso, l'assegnazione di attività ai singoli membri del gruppo di lavoro e pianificazione delle #glossario("milestone");

- *Whatsapp*: per la comunicazione tra i membri del gruppo di lavoro e l'organizzazione delle riunioni;

- *Discord*: per le riunioni tra i membri del gruppo di lavoro;

- *Slack*: per la comunicazione con l'azienda proponente.;

=== Attività previste
Il processo di gestione dei processi è composto da un insieme di attività così descritte:

- *Definizione dei processi*: attività che ha lo scopo di definire i processi e le attività da svolgere;

- *Pianificazione dei processi*: attività che ha lo scopo di pianificare le attività da svolgere e le risorse necessarie;

- *Esecuzione dei processi*: attività che ha lo scopo di eseguire le attività pianificate;

- *Controllo e monitoraggio dei processi*: attività che ha lo scopo di controllare l'andamento delle attività e garantire il rispetto delle scadenze e delle risorse assegnate;

- *Chiusura dei processi*: attività che ha lo scopo di chiudere le attività e verificare che quello che è stato prodotto sia coerente con l'obiettivo iniziale.

=== Ruoli dei membri
Il gruppo _Sigma18_ ha deciso di utilizzare dei ruoli per la gestione dei processi descritti nel #link("https://sigma18unipd.github.io/documentiCompilati/1-candidatura/impegnicosti_1.0.1.pdf")[preventivo dei costi e della dichiarazione degli impegni] [versione 1.0.1].

==== Amministratore
L'amministratore si occupa della gestione degli strumenti IT necessari all'avanzamento dello
sviluppo. La figura, che conosce e comprende approfonditamente il _way of working_, offre supporto agli altri ruoli. Si ritiene che la figura abbia maggior importanza nelle fasi iniziali dello sviluppo, con alcuni picchi nei momenti di rilascio del prodotto.

==== Analista
L'analista è la figura che svolge l'attività di analisi dei requisiti del _software_, i quali potranno essere funzionalità in accordo con il proponente o specifiche minime di funzionamento.

La figura produrrà il documento di analisi dei requisiti.

==== Progettista
Il progettista è responsabile della definizione dell'architettura del sistema e della progettazione delle componenti _software_.
Deve essere in grado di comunicare efficacemente con gli altri membri del team, tra cui programmatori, analisti e verificatori, per assicurarsi che la visione progettuale sia compresa e implementata correttamente e che i requisiti siano tradotti in una soluzione tecnica adatta.

==== Programmatore
È la figura incaricata a trasformare le direttive di _design_ fornite dal progettista in codice. Il ruolo richiede che la persona abbia familiarità e padronanza delle tecnologie che andranno ad essere implementate.

==== Responsabile
Il responsabile è la figura che si occupa di coordinare e supervisionare l'intero progetto, assicurandosi che tutte le attività siano svolte nei tempi e nei modi previsti.
Il ruolo si occupa anche del dialogo tra l'interno e l'esterno del gruppo garantendo una comunicazione chiara e tempestiva.

==== Verificatore
È la figura che garantisce che la documentazione prodotta ed il _software_ sviluppato mantengano alti standard di qualità.
Il verificatore esegue test approfonditi per identificare _bug_ e problemi, assicurandosi che il prodotto finale sia conforme ai requisiti specificati.

Ai fini di rispettare la richiesta di condividere il _bug reporting_ avvenuto durante la fase di sviluppo, il verificatore dovrà gestire la piattaforma ITS (_Issue Tracking System_) utilizzata (_GitHub_).

=== Comunicazioni
Il gruppo ha scelto di utilizzare le piattaforme citate nella #link(<sezione4.1.1>)[sezione 4.1.1] per le comunicazioni interne.
Non sono stati previsti incontri di allineamento con l'azienda proponente.
In particolare, il gruppo ha deciso di utilizzare _WhatsApp_ per la comunicazione rapida asincrona e _Discord_ per le riunioni interne.

L'azienda proponente è disponibile, in caso di necessità, per chiarimenti o consigli tramite la piattaforma di messaggistica asincrona _Slack_.

Per quanto riguarda invece le comunicazioni non sopra citate, l'indirizzo email ufficiale del gruppo _Sigma18_ è:
#set align(center)
*sigma18unipd\@gmail.com*
#set align(left)

=== Coordinamento delle attività
Il gruppo riesce, in modo efficace, a coordinare le attività e a riportare in modo efficiente gli esiti e l'avanzamento del lavoro svolto nella riunione dedicata alla retrospettiva degli _sprint_ e di pianificazione delle attività future svolta ogni due settimane.

Durante questa riunione, il piano di progetto viene aggiornato per riflettere l'avanzamento delle attività, le modifiche ai processi e le nuove esigenze emerse durante lo sviluppo.
Ogni cambiamento significativo viene riportato, garantendo così una documentazione sempre allineata allo stato attuale del lavoro del gruppo _Sigma18_.

Ciò nonostante, in caso di necessità, il gruppo è disponibile a organizzare riunioni straordinarie per discutere di problematiche o chiarimenti.

== Infrastructure (Infrastruttura)
Il processo di infrastruttura è l'insieme delle attività che hanno lo scopo di garantire la disponibilità e l'integrità degli elementi necessari per lo sviluppo del prodotto _software_ e della documentazione associata.

=== Attività previste
Il processo di infrastruttura è composto da un insieme di attività così descritte:
- *Definizione*

- *Implementazione*

- *Manutenzione*

=== Definizione
Il gruppo _Sigma18_ ha scelto durante lo svolgimento del progetto di utilizzare strumenti che consentano ai suoi vari membri di lavorare in modalità efficace ed efficiente.

Di seguito sono elencati tutti gli strumenti individuati dal gruppo:

- *Git*: Utilizzato per il versionamento del codice sorgente e della documentazione associata;

- *GitHub*: Utilizzato per la sincronizzazione degli sviluppi e come _Issue Tracking System_ (_ITS_) per tenere traccia del _backlog_ tramite l'utilizzo delle _issue_;

- *Typst*: Utilizzato per la scrittura della documentazione e per la generazione dei documenti in formato PDF;

- *Whatsapp*: Utilizzato per la comunicazione tra i membri del gruppo di lavoro e l'organizzazione delle riunioni;

- *Discord*: Utilizzato per le riunioni tra i membri del gruppo di lavoro;

- *Slack*: Utilizzato per la comunicazione con l'azienda proponente;

- *Microsoft Teams*: Utilizzato per la comunicazione con l'azienda proponente;

- *Google Calendar*: Utilizzato per la pianificazione delle riunioni con l'azienda proponente;

- *Script in Python e Bash*: Utilizzati per l'aggiornamento automatico del sito web, le automazioni di verifica della versione nel nome di un file e di presenza dei termini del glossario.

=== Implementazione
==== Git
Il gruppo _Sigma18_ ha deciso di utilizzare _Git_ come sistema di versionamento del codice sorgente e della documentazione. Il sistema di versionamento è stato scelto in quanto permette di tenere traccia delle modifiche, garantendo la possibilità di tornare indietro nel tempo in caso di necessità.

Uno dei maggiori vantaggi di _Git_ sono le sue funzionalità di creazione di _branch_. A differenza dei sistemi di controllo delle versioni centralizzati, i branch _Git_ sono facili da sottoporre a _merge_ e questo agevola il flusso di lavoro parallelo scelto dal gruppo.

==== GitHub
Il gruppo _Sigma18_ ha deciso di utilizzare _GitHub_ come piattaforma di hosting per il codice sorgente e la documentazione. _GitHub_ è stato scelto in quanto offre funzionalità avanzate per la gestione delle _issue_, delle _pull request_ e delle _branch_ (già descritte nella #link(<produzionedeidocumenti>)[sezione 3.1.8]).

==== Typst
Già descritto nella #link(<documentazione>)[sezione 3.1 - Documentazione].

==== Whatsapp
Il gruppo _Sigma18_ ha deciso di utilizzare _WhatsApp_ come piattaforma di messaggistica per la comunicazione tra i membri del gruppo di lavoro. _WhatsApp_ è stato scelto per la sua semplicità d'uso e ampia diffusione tra i membri del gruppo.

==== Discord
Il gruppo _Sigma18_ ha deciso di utilizzare _Discord_ come piattaforma di videoconferenza per le riunioni tra i membri del gruppo di lavoro. _Discord_ è stato scelto per la sua semplicità d'uso e ampia diffusione tra i membri del gruppo.

Sono stati creati dei canali dedicati per permettere il lavoro simultaneo di più membri del gruppo in parallelo, senza che le comunicazioni si sovrappongano, e dei canali testuali dedicati allo scambio di _link_ e riferimenti o credenziali.

==== Slack
L'azienda proponente ha deciso di utilizzare _Slack_ come piattaforma di messaggistica per la comunicazione tra il gruppo _Sigma18_ e il proponente. _Slack_ è stato scelto per la sua ampia diffusione tra i membri dell'azienda proponente, in modo da poter fornire supporto in caso di necessità al gruppo di lavoro da varie figure aziendali.

==== Microsoft Teams
L'azienda proponente ha organizzato un _workshop_ di presentazione delle tecnologie di _Gen AI_ in modalità virtuale. Per fare ciò, l'azienda ha scelto di utilizzare _Microsoft Teams_ come piattaforma di videoconferenza tra il gruppo _Sigma18_ e la figura esperta associata.

_Microsoft Teams_ è stato utilizzato anche nei workshop precedenti per consentire ai membri del gruppo di seguire le presentazioni in modalità virtuale, qualora non avessero la possibilità di partecipare in presenza.

==== Google Calendar
Il gruppo _Sigma18_ ha deciso di utilizzare _Google Calendar_ come piattaforma di pianificazione delle riunioni con l'azienda proponente.

==== Script in Python e Bash
Il gruppo _Sigma18_ ha deciso di sviluppare degli script in _Python_ e _Bash_ per automatizzare alcune attività di gestione della configurazione, come la compilazione automatica della documentazione e l'aggiornamento del sito web.
In particolare, sono stati creati degli script per:

- Aggiornare automaticamente il sito web con la documentazione prodotta;

- Verificare automaticamente la presenza dei termini del glossario nei documenti prodotti;

- Verificare automaticamente la versione del documento in base al nome del file;

=== Manutenzione
Il gruppo _Sigma18_ ha deciso di assegnare alla figura dell'amministratore la responsabilità della manutenzione degli strumenti utilizzati e dell'infrastruttura.

== Improvement (Miglioramento)
Il processo di miglioramento secondo lo standard ISO/IEC 12207:1995 consiste nella consolidazione, controllo e miglioramento continuo dei processi utilizzati durante il ciclo di sviluppo del prodotto _software_ e della documentazione associata.

Come specificato in precedenza nella #link(<implementazione>)[sezione 2.4.1], il gruppo _Sigma18_ ha deciso di utilizzare il modello di lavoro _Agile_ che prevede un miglioramento continuo del prodotto e dei processi utilizzati.

=== Attività previste
Il processo di miglioramento è composto da un insieme di attività così descritte:

- *Implementazione del processo*

- *Individuazione criticità*

- *Azioni correttive*

=== Implementazione del processo
Un processo viene stabilito, documentandolo in questo stesso documento.

=== Individuazione criticità
Una volta stabilito un processo, è fondamentale controllarne l'andamento e l'efficacia.
È quindi essenziale individuare delle misurazioni appropriate ed effettuare controlli periodici su di esse.

=== Azioni correttive
Una volta revisionate le misurazioni è necessario individuare i processi problematici e stabilire soluzioni che possano portare a miglioramenti.
Sarà poi necessario aggiornare la documentazione per riflettere le modifiche apportate.

== Training (Formazione)
Il processo di formazione secondo lo standard ISO/IEC 12207:1995 ha lo scopo di fornire e mantenere personale formato e competente per le attività di sviluppo del prodotto _software_ e della documentazione associata.

Il gruppo _Sigma18_ si impegna a garantire che i membri del gruppo siano formati e competenti per le attività di sviluppo del prodotto _software_ e in particolar modo sulle tecnologie proposte per lo sviluppo.

In caso di difficoltà, i vari membri del gruppo sono disponibili a fornire supporto e formazione ai componenti che lo richiedano. Questo meccanismo di collaborazione reciproca rafforza il lavoro di squadra e la condivisione delle conoscenze, oltre che rappresentare un'opportunità di conoscenza e coesione tra le persone.
#pagebreak()


= Standard per la qualità


Il gruppo ha deciso di definire le metriche e i criteri che determinano la qualità del software sviluppato adottando le linee guida dello standard ISO/IEC 9126.
Questo standard definisce un modello di qualità del software in termini di sei caratteristiche generali e venticinque sotto-caratteristiche, successivamente descritte.


== Funzionalità

La funzionalità misura la capacità di un prodotto software di fornire servizi e strumenti che soddisfano le esigenze esplicite ed implicite del proponente.
Questa caratteristica è composta dalle seguenti sotto-caratteristiche:

- *Adeguatezza*: capacità di offrire funzioni appropriate per svolgere i compiti specifici previsti;

- *Accuratezza*: capacità di fornire risultati o effetti attesi in accordo con i requisiti;

- *Interoperabilità*: capacità di interagire con altri sistemi specificati;

- *Sicurezza*: capacità di proteggere le funzioni e i dati da accessi non autorizzati e potenziali minacce;

- *Conformità*: capacità di aderire agli standard e alle normative stabilite.



== Affidabilità

L'affidabilità misura la capacità di un prodotto software di mantenere un determinato livello di prestazioni richieste in condizioni specifiche per un periodo di tempo definito.\
In particolare è composta dalle seguenti sotto-caratteristiche:

- *Maturità*: capacità del prodotto di evitare errori, malfunzionamenti o arresti inaspettati;

- *Tolleranza agli errori*: capacità del prodotto di mantenere un livello prestabilito di prestazioni anche in presenza di errori;

- *Recuperabilità*: capacità del prodotto di ripristinare i livelli di prestazione determinati e di recuperare i dati a seguito di malfunzionamenti o guasti;

- *Aderenza*: capacità del prodotto di aderire a standard riguardanti l'affidabilità.


== Efficienza

L'efficienza misura la capacità di un prodotto software di fornire prestazioni adeguate in relazione alle risorse utilizzate.\
Nel dettaglio, è composta dalle seguenti sotto-caratteristiche:

- *Comportamento rispetto al tempo*: misura i tempi di risposta e di elaborazione richiesti per eseguire le funzioni richieste in condizioni specifiche;

- *Utilizzo delle risorse*: misura la quantità e la tipologia di risorse utilizzate per eseguire le funzioni richieste come memoria, CPU e spazio su disco;

- *Conformità*: capacità del prodotto di aderire a standard riguardanti l'efficienza.



== Usabilità

L'usabilità misura la facilità con cui un prodotto software può essere compreso, appreso e utilizzato dagli utenti finali.\
In particolare è composta dalle seguenti sotto-caratteristiche:

- *Comprensibilità*: misura l'impegno richiesto agli utenti per comprendere il funzionamento del prodotto e le sue applicabilità;

- *Apprendibilità*: misura l'impegno richiesto agli utenti per imparare ad usare il software;

- *Operabilità*: misura la capacità del prodotto ad essere utilizzato con semplicità dagli utenti per i propri scopi;

- *Attrattività*: capacità del prodotto di essere piacevole da utilizzare per l'utente;

- *Conformità*: capacità del prodotto di aderire a standard riguardanti l'usabilità.


== Manutenibilità

La manutenibilità misura la facilità con cui un prodotto software può essere modificato, corretto e migliorato nel tempo.\
È composta dalle seguenti sotto-caratteristiche:

- *Analizzabilità*: misura l'impegno richiesto per analizzare il prodotto per identificare carenze, cause di fallimento o per apportare miglioramenti;

- *Modificabilità*: misura l'impegno richiesto per apportare modifiche al prodotto, come correzioni di errori o modifiche di componenti;

- *Stabilità*: misura la capacità del prodotto di ridurre il rischio di comportamenti indesiderati a seguito di modifiche;

- *Testabilità*: misura la facilità con cui il prodotto può essere testato per validare le modifiche apportate.


== Portabilità

La portabilità misura la capacità del software di essere trasferito e utilizzato in ambienti di esecuzione diversi senza problemi. \
In particolare, è composta dalle seguenti sotto-caratteristiche:

- *Adattabilità*: misura la facilità con cui il software può essere adattato a nuovi ambienti di esecuzione;

- *Installabilità*: misura la facilità con cui il software può essere installato in un particolare ambiente;

- *Coesistenza*: misura la capacità del software di coesistere con altri prodotti software nello stesso ambiente, condividendo risorse come CPU e memoria;

- *Sostituibilità*: valuta la capacità con cui il software può svolgere gli stessi compiti di un altro software nello stesso ambiente.


#pagebreak()
= Metriche per la qualità di processo

== Nomenclatura delle metriche
Il gruppo _Sigma18_ ha deciso di utilizzare la seguente sigla per identificare le metriche relative alla qualità di processo:
#set align(center)
*MPC* (_Minimum Predictive Capability_)
#set align(left)
Ogni metrica sarà identificata da un codice univoco composto dalla sigla _MPC_ seguita da un acronimo che identifica la metrica specifica: *MPC-AcronimoMetrica*.

== Processi primari

=== Fornitura

==== Earned Value

- *Codice*: MPC-EV;

- *Formula*: EV= Budget at Completion (BAC) \* Percentuale di lavoro completato;

- *Descrizione*: misura il valore del lavoro completato in un progetto fino a quel momento rispetto al budget pianificato.


==== Planned Value
- *Codice*: MPC-PV;

- *Formula*: $"PV"= "Budget at Completion (BAC)" \*" Percentuale di lavoro pianificato"$;

- *Descrizione*: misura il valore del lavoro pianificato in un progetto in un determinato momento secondo il piano di progetto rispetto al budget pianificato.

==== Actual Cost

- *Codice*: MPC-AC;

- *Formula*: $"AC"= "Costo effettivo del lavoro svolto"$;

- *Descrizione*: misura il costo effettivo del lavoro svolto in un progetto fino a quel momento.

==== Estimated At Completion

- *Codice*: MPC-EAC;

- *Formula*: $"EAC"=("Budget at Completion (BAC)") / ("Cost Performance Index (CPI)")$;

- *Descrizione*: stima del costo totale del progetto al suo completamento basata sui costi sostenuti fino a quel momento.
==== Estimated To Complete

- *Codice*: MPC-ETC;

- *Formula*: $"ETC"= "Estimated At Completion (EAC)" - "Actual Cost (AC)"$;

- *Descrizione*: stima il costo del lavoro rimanente per completare il progetto.

==== Cost Variance

- *Codice*: MPC-CV;

- *Formula*: $"CV"= "Earned Value (EV)" - "Actual Cost (AC)"$;

- *Descrizione*: misura la differenza tra il budget disponibile e quello usato effettivamente. Rappresenta la differenza tra il valore del lavoro completato e il costo sostenuto.


==== Schedule Variance

- *Codice*: MPC-SV;

- *Formula*: $"SV"= "Earned Value (EV)" - "Planned Value (PV)"$;

- *Descrizione*: misura la differenza tra il valore del lavoro completato e il valore del lavoro pianificato. Identifica eventuali ritardi o anticipi rispetto al piano di progetto.


==== Cost Performance Index

- *Codice*: MPC-CPI;

- *Formula*: $"CPI"= ("Earned Value (EV)") / ("Actual Cost (AC)")$;

- *Descrizione*: misura l'efficienza del costo del lavoro svolto fino a quel momento.


=== Sviluppo

==== Requirements Stability Index

- *Codice*: MPC-RSI;

- *Formula*: $"RSI" = ("1"-("CR" + "AR" + "DR") / ("OR"))*"100"$;

  dove:

  - *OR*: Numero di requisiti originali;

  - *CR*: Numero di requisiti cambiati;

  - *AR*: Numero di requisiti aggiunti;

  - *DR*: Numero di requisiti rimossi.

- *Descrizione*: misura la stabilità dei requisiti del progetto. Un valore alto indica che i requisiti sono stabili e non soggetti a modifiche frequenti.



== Processi di supporto

=== Documentazione

==== Correttezza ortografica

- *Codice*: MPC-CO;

- *Descrizione*: indica la presenza di errori ortografici e grammaticali nel documento, in particolare è considerato accettabile un valore inferiore o pari a 2.


=== Verifica

==== Code Coverage

- *Codice*: MPC-CCO;

- *Formula*: $"CCO" = (("Numero di linee di codice testate") / ("Numero totale di linee di codice")) * "100"$;

- *Descrizione*: misura la percentuale di codice sorgente coperto dai test. Un valore alto indica che il codice è ben testato e che le funzionalità sono verificate in modo adeguato.

==== Test superati in percentuale

- *Codice*: MPC-TSP;

- *Formula*: $"TSP" = (("Numero di test superati") / ("Numero totale di test")) * "100"$;

- *Descrizione*: misura la percentuale di test superati rispetto al numero totale di test previsti.

=== Gestione della qualità

==== Satisfaction of Quality Metrics

- *Codice*: MPC-SQM;

- *Formula*: $"SQM" = (("Numero di metriche soddisfatte") / ("Numero totale di metriche")) * "100"$;

- *Descrizione*: misura la percentuale di metriche che soddisfano gli obiettivi minimi di qualità stabiliti.

== Processi organizzativi

=== Gestione dei processi
==== Efficienza temporale

- *Codice*: MPC-ET;

- *Formula*: $"ET" = (("Ore produttive") / ("Ore totali")) * "100"$;

- *Descrizione*: misura la percentuale di tempo effettivamente dedicato alle attività produttive rispetto al tempo totale disponibile.







#pagebreak()
= Metriche per la qualità di prodotto

== Nomenclatura delle metriche
Il gruppo _Sigma18_ ha deciso di utilizzare la seguente sigla per identificare le metriche relative alla qualità di prodotto:
#set align(center)
*MPD* (_Minimum Product Delivery_)
#set align(left)
Ogni metrica sarà identificata da un codice univoco composto dalla sigla _MPD_ seguita da un acronimo che identifica la metrica specifica: *MPD-AcronimoMetrica*.

== Funzionalità

=== Requisiti obbligatori soddisfatti

- *Codice*: MPD-RO;

- *Formula*: $"RO" = (("Numero di requisiti obbligatori soddisfatti") / ("Numero totale di requisiti obbligatori")) * "100"$;

- *Descrizione*: misura la percentuale di requisiti obbligatori soddisfatti rispetto al numero totale di requisiti obbligatori definiti nel documento di analisi dei requisiti.


=== Requisiti desiderabili soddisfatti

- *Codice*: MPD-RD;

- *Formula*: $"RD" = (("Numero di requisiti desiderabili soddisfatti") / ("Numero totale di requisiti desiderabili")) * "100"$;

- *Descrizione*: misura la percentuale di requisiti desiderabili soddisfatti rispetto al numero totale di requisiti desiderabili definiti nel documento di analisi dei requisiti.


=== Requisiti facoltativi soddisfatti

- *Codice*: MPD-RF;

- *Formula*: $"RF" = (("Numero di requisiti facoltativi soddisfatti") / ("Numero totale di requisiti facoltativi")) * "100"$;

- *Descrizione*: misura la percentuale di requisiti facoltativi soddisfatti rispetto al numero totale di requisiti facoltativi definiti nel documento di analisi dei requisiti.

== Affidabilità

=== Code Coverage

- *Codice*: MPD-CCO;

- *Formula*: $"CCO" = (("Numero di righe di codice testate") / ("Numero totale di righe di codice")) * "100"$;

- *Descrizione*: misura la percentuale di codice sorgente coperto dai test.


=== Branch Coverage

- *Codice*: MPD-BC;

- *Formula*: $"BC" = (("Numero di rami decisionali di codice testati") / ("Numero totale di rami decisionali di codice")) * "100"$;

- *Descrizione*: misura la percentuale di rami decisionali del codice coperti dai test.

=== Statement Coverage

- *Codice*: MPD-SC;

- *Formula*: $"SC" = (("Numero di istruzioni di codice testate") / ("Numero totale di istruzioni di codice")) * "100"$;

- *Descrizione*: misura la percentuale di istruzioni del codice sorgente coperte dai test.


=== Failure Tolerance

- *Codice*: MPD-FT;
- *Descrizione*: capacità del software di mantenere un livello di prestazioni accettabile anche in caso di guasti o malfunzionamenti.

=== Failure Frequency

- *Codice*: MPD-FF;

- *Descrizione*: indica la frequenza con cui si verificano guasti o malfunzionamenti nel prodotto.

== Usabilità

=== Tempo di apprendimento

- *Codice*: MPD-TA;

- *Descrizione*: misura il tempo necessario per un utente per imparare ad utilizzare il software.

=== Facilità d'uso

- *Codice*: MPD-FU;

- *Descrizione*: misura il numero di errori commessi dagli utenti durante l'interazione con il software.

== Efficienza

=== Tempo medio di esecuzione

- *Codice*: MPD-TE;

- *Descrizione*: misura il tempo medio impiegato da una routine per completare la propria esecuzione.


== Manutenibilità

=== Complessità ciclomatica

- *Codice*: MPD-CC;

- *Formula*: $"CC" = "E" - "N" + "P"$

  dove:

  - *E*: Numero di archi del grafo di controllo;

  - *N*: Numero di nodi del grafo di controllo;

  - *P*: Numero di componenti connessi ad ogni arco.


=== Code Smell

- *Codice*: MPD-CS;

- *Descrizione*: indica la presenza di potenziali problemi di progettazione o codice che potrebbero richiedere manutenzione.

=== Coefficient of Coupling

- *Codice*: MPD-COC;

- *Formula*: $"COC" = ("Numero di dipendenze tra moduli") / ("Numero totale di moduli")$;

- *Descrizione*: indica il grado di dipendenza tra i moduli o le componenti di un sistema.

