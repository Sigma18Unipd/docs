#import "../../templates/template.typ": *

#show: content => verbale(
  titoloDocumento: "Norme di progetto",
  abstract: "Documento contenente le Norme di progetto che definiscono le modalità di lavoro del gruppo. Pertanto, questo documet",
  responsabili: "Pietro Crotti",
  redattori: "Mirco Borella",
  verificatori: "",
  tipo: "Documento Interno",
  destinatari: "Sigma18",
  versioneAttuale: "0.4.0",
  versioni: (
    "0.4.0",
    "2025/05/29",
    "Mirco Borella",
    "",
    "TESTTEST",
    "0.3.0",
    "2025/04/27",
    "Mirco Borella",
    "",
    "TESTTEST",
    "0.2.0",
    "2025/04/24",
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

Ai fini di realizzazione del _"Way of Working"_, i membri del gruppo _Sigma18_ prenderanno come riferimento lo standard #glossario("ISO/IEC 12207:1995") che definisce i processi di sviluppo del software e le relative attività e compiti. In particolare, il gruppo _Sigma18_ si concentrerà sui seguenti processi:
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

- *ISO/IEC 12207:1995 - Standard internazionale per i processi di ciclo di vita del software* \ #link("https://www.math.unipd.it/~tullio/IS-1/2009/Approfondimenti/ISO_12207-1995.pdf")[https://www.math.unipd.it/~tullio/IS-1/2009/Approfondimenti/ISO_12207-1995.pdf]

- *ISO/IEC 12207* \ #link("https://it.wikipedia.org/wiki/ISO/IEC_12207")[https://it.wikipedia.org/wiki/ISO/IEC_12207]

- *Capitolato C3 - Automatizzare le routine digitali tramite l'intelligenza generativa* \ #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C3.pdf")[https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C3.pdf]

- *Regolamento del progetto didattico* \ #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf")[https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf]

=== Riferimenti informativi

- *Glossario* \ #link("https://sigma18unipd.github.io/documentiCompilati/2-RTB/documentidiprogetto/glossario.pdf")[https://sigma18unipd.github.io/documentiCompilati/2-RTB/documentidiprogetto/glossario.pdf]

- *Processi di ciclo di vita* \ #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T02.pdf")[https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T02.pdf]

#pagebreak()









= Processi primari <primari>
Lo standard ISO/IEC 12207:1995 è nato per fornire un modello di riferimento per la definizione dei processi di ciclo di vita del software e per la gestione della qualità del software.

Lo standard definisce i processi primari come i processi che sono direttamente coinvolti nella realizzazione del prodotto software, tra cui: *acquisizione*, *fornitura*, *sviluppo*, *gestione* e *manutenzione*.

Nello specifico, ai fini del capitolato, tratteremo i seguenti processi primari:
- #link(<fornitura>)[*Fornitura*]
- #link(<sviluppo>)[*Sviluppo*]

== Fornitura <fornitura>
Lo standard ISO/IEC 12207:1995 definisce il processo di fornitura come l'insieme delle attività necessarie per garantire che il prodotto software soddisfi i requisiti specificati e le aspettative del committente.

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

- *Pianificazione*: Definiti i requisiti contrattuali, il fornitore procede a stabilire l'organizzazione e la metodologia di lavoro più adatte. In questa fase viene selezionato il modello di ciclo di vita del software, vengono identificate le risorse necessarie e le tecnologie da impiegare, e viene posta particolare attenzione all'analisi dei potenziali rischi.

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





== Attività di sviluppo

= Processi di supporto <supporto>

#pagebreak()
= Processi organizzativi <organizzativi>

#pagebreak()
= Standard per la qualità

#pagebreak()
= Metriche per la qualità di processo

#pagebreak()
= Metriche per la qualitá di prodotto




