#import "../../templates/template.typ": *

#show: content => verbale(
  titoloDocumento: "Piano di Qualifica",
  abstract: "Piano di qualifica per il capitolato C3 proposto da Var Group S.p.A.",
  responsabili: ("Mirco Borella", "Aleena Mathew", "Matteo Marangon", "Pietro Crotti", "Marco Egidi"),
  redattori: ("Aleena Mathew", "Matteo Marangon", "Pietro Crotti", "Carmelo Russello"),
  verificatori: ("Carmelo Russello", "Matteo Marangon", "Pietro Crotti", "Alessandro Bernardello", "Mirco Borella", "Marco Egidi"),
  tipo: "Documento Esterno",
  destinatari: ("Prof. Tullio Vardanega", "Prof. Riccardo Cardin", "Var Group S.p.A.", "Sigma18"),
  versioneAttuale: "1.3.0",
  versioni: (
    "1.3.0",
    "2025/08/20",
    "Carmelo Russello",
    "Marco Egidi",
    "Aggiornamento cruscotto di valutazione concluso il decimo sprint",
    "1.2.0",
    "2025/08/06",
    "Aleena Mathew ",
    "Pietro Crotti",
    "Aggiornamento cruscotto di valutazione concluso il nono sprint",
    "1.1.0",
    "2025/07/17",
    "Matteo Marangon",
    "Pietro Crotti",
    "Aggiornamento cruscotto di valutazione concluso l'ottavo sprint",
    "1.0.0",
    "2025/07/17",
    "Aleena Mathew",
    "Alessandro Bernardello",
    "Migliorie impostazioni del documento e aggiornamento di una metrica",
    "0.9.0",
    "2025/07/11",
    "Carmelo Russello",
    "Mirco Borella",
    "Aggiornamento cruscotto di valutazione concluso il settimo sprint",
    "0.8.0",
    "2025/06/26",
    "Aleena Mathew ",
    "Carmelo Russello",
    "Aggiornamento cruscotto di valutazione concluso il sesto sprint",
    "0.7.0",
    "2025/06/11",
    "Matteo Marangon",
    "Marco Egidi",
    "Aggiornamento cruscotto di valutazione concluso il quinto sprint",
    "0.6.0",
    "2025/05/20",
    "Pietro Crotti",
    "Matteo Marangon",
    "Aggiornamento di alcune metriche in accordo con le norme",
    "0.5.0",
    "2025/05/20",
    "Aleena Mathew ",
    "Alessandro Bernardello",
    "Scheletro per il cruscotto di valutazione",
    "0.4.1",
    "2025/05/14",
    "Matteo Marangon",
    "Pietro Crotti",
    "Correzione di errori minori",
    "0.4.0",
    "2025/05/09",
    "Aleena Mathew ",
    "Matteo Marangon",
    "Correzione di errori e aggiunta elenco tabelle",
    "0.3.0",
    "2025/04/30",
    "Matteo Marangon",
    "Aleena Mathew",
    "Aggiunta di nuove metriche",
    "0.2.0",
    "2025/04/30",
    "Aleena Mathew ",
    "Matteo Marangon",
    "Stesura qualità del prodotto",
    "0.1.0",
    "2025/04/17",
    "Aleena Mathew ",
    "Carmelo Russello",
    "Prima stesura del documento",
  ),
  content: content,
)
#outline(title: "Elenco tabelle", target: figure.where(kind: table, outlined: true))

#pagebreak()

#outline(title: "Elenco immagini", target: figure.where(kind: image, outlined: true))

#pagebreak()
= Introduzione
== Scopo del documento
Il presente documento ha lo scopo di definire le modalità di verifica e di validazione adottate dal gruppo al fine di garantire la qualità del prodotto finale.\
Il documento sarà soggetto ad aggiornamenti durante il ciclo di vita del progetto per riflettere le modifiche apportate per raggiungere una migliore efficacia ed efficienza.\
Sarà presente una sezione dedicata al #link(<cruscotto>)[cruscotto di valutazione], che fornirà un'analisi dell'andamento delle metriche di qualità scelte dal gruppo durante lo svolgimento del progetto.

== Scopo del progetto
Il progetto ha lo scopo di creare un prodotto che permetta di automatizzare #glossario("routine") digitali sfruttando l'intelligenza artificiale generativa in cloud.\
L'utente potrà descrivere in linguaggio naturale l'automazione desiderata e il sistema genererà un flusso di lavoro che l'utente potrà modificare tramite un'interfaccia #glossario("drag & drop").\
Sarà possibile salvare le automazioni generate e avviarle in un secondo momento.


== Glossario
Data la presenza di termini tecnici e acronimi, è stato redatto un glossario per facilitare la comprensione del documento.\
Alla prima occorrenza, tali termini saranno opportunamente segnalati tramite la seguente notazione: #glossario("parola"), e sarà fornita un'accurata definizione nel #link("https://sigma18unipd.github.io/documentiCompilati/2-RTB/documentidiprogetto/glossario.pdf")[Glossario].

== Riferimenti
=== Riferimenti normativi
- *Norme di progetto* [versione 1.0.0] \ #link("https://sigma18unipd.github.io/documentiCompilati/2-RTB/documentidiprogetto/normediprogetto_1.0.0.pdf")[https://sigma18unipd.github.io/documentiCompilati/2-RTB/documentidiprogetto/normediprogetto_1.0.0.pdf]

- * ISO/IEC 12207:1995* [ultimo accesso il: 11/07/2025] \ #link("https://www.math.unipd.it/~tullio/IS-1/2009/Approfondimenti/ISO_12207-1995.pdf")[https://www.math.unipd.it/~tullio/IS-1/2009/Approfondimenti/ISO_12207-1995.pdf]

- *Capitolato C3 - Automatizzare le routine digitali tramite l'intelligenza generativa* [ultimo accesso il: 11/07/2025] \ #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C3.pdf")[https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C3.pdf]

=== Riferimenti informativi
- *Glossario* [versione 1.0.0] \ #link("https://sigma18unipd.github.io/documentiCompilati/2-RTB/documentidiprogetto/glossario.pdf")[https://sigma18unipd.github.io/documentiCompilati/2-RTB/documentidiprogetto/glossario.pdf]

- *Slide T07 - Qualità del prodotto* [ultimo accesso il: 11/07/2025] \ #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T07.pdf")[https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T07.pdf]

- *Slide T08 - Qualità del processo* [ ultimo accesso il: 11/07/2025] \ #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T08.pdf")[https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T08.pdf]

#pagebreak()

= Qualità di processo
La qualità di processo è un aspetto fondamentale per garantire il successo del progetto software poiché assicura che i processi utilizzati siano efficaci, efficienti e conformi agli standard di qualità prefissati.\
Di seguito sono riportati gli obiettivi di qualità che il gruppo si impegna a raggiungere, suddivisi in tre categorie:_ processi primari_, _processi di supporto_ e _processi organizzativi_, come individuato dallo standard ISO/IEC 12207:1995.

== Processi primari
I processi primari comprendono attività di acquisizione, gestione operativa, manutenzione del software, fornitura e sviluppo. Verranno esaminati solo gli ultimi due, data la natura didattica del progetto.

=== Fornitura
Si intendono le attività e i compiti svolti dal fornitore, in accordo con l'azienda proponente nel stabilire i vincoli e requisiti del progetto.\
Con l'acronimo _MPC_ (Minimum Predictive Capability) si indica il valore minimo da raggiungere.

==== Earned Value (MPC-EV)
È il valore del lavoro completato fino a un dato momento rispetto al budget pianificato e si ottiene dal prodotto tra _BAC_ (Budget At Completion) e la percentuale di lavoro completato.

==== Planned Value (MPC-PV)
È il valore del lavoro pianificato da completare entro una determinata data.\
Tale valore è ricavato dal prodotto tra _BAC_ e la percentuale di lavoro pianificato da completare entro la data prefissata.

==== Actual Cost (MPC-AC)
Indica l'effettivo costo sostenuto fino ad un determinato momento per il lavoro svolto.

==== Estimated At Completion (MPC-EAC)
Rappresenta la stima del costo totale del progetto, basata sulle condizioni attuali.\ Il suo valore è ottenuto dal rapporto tra _BAC_ e _CPI_ (Cost Performance Index).

==== Estimated To Complete (MPC-ETC)
Stima il costo finale per completare il progetto in base all'andamento attuale.\

==== Cost Variance (MPC-CV) //se minore di 0 male
Misura la differenza tra il valore guadagnato (EV) e il costo effettivo sostenuto (AC) fino a un quel momento.

==== Schedule variance (MPC-SV) //positivo -> progetto in anticipo, negativo -> progetto in ritardo
Misura la differenza tra il valore guadagnato (EV) e il valore pianificato (PV) fino a un quel momento. \
È utile per identificare eventuali ritardi o anticipi rispetto alla pianificazione, nello specifico valori negativi indicano ritardi.

==== Cost performance index (MPC-CPI)
Misura l'efficienza del costo per il lavoro svolto fino a un determinato momento, in base al valore ottenuto per ogni unità monetaria spesa.
#figure(kind: table, caption: [Valori accettabili e ottimi del processo di fornitura], table(
  columns: (auto, 1fr, auto, auto),
  align: center,
  rows: auto,
  inset: 7pt,
  table.header([*Metrica*], [*Nome*], [*Valore Accettabile*], [*Valore Ottimo*]),
  [MPC-EV], [Earned Value], [≥0], [≤EAC],
  [MPC-PV], [Planned Value], [≥0], [≤BAC],
  [MPC-AC], [Actual Cost], [≥0], [≤EAC],
  [MPC-EAC], [Estimated At Completion], [±5% BAC], [=BAC],
  [MPC-ETC], [Estimated To Complete], [≥0], [≤EAC],
  [MPC-CV], [Cost Variance ], [≥-5% BAC], [≥0],
  [MPC-SV], [Schedule variance], [±5% BAC], [≥0],
  [MPC-CPI],
  [Cost performance index],
  [0.9 ≤ CPI ≤1.1
  ],
  [1],
))


=== Sviluppo
Processo che ha lo scopo di descrivere le attività e i compiti necessari per creare e mantenere un sistema software, fondamentale per un prodotto finale che soddisfi i requisiti specificati nel contratto.

Di seguito sono riportate le relative metriche.

==== Requirements Stability Index (MPC-RSI)
Si tratta dell'indice di stabilità dei requisiti, data dalla percentuale di requisiti modificati rispetto al totale dei requisiti.\
Un valore alto indica che i requisiti sono stabili e non soggetti a modifiche frequenti.


#figure(kind: table, caption: [Valori accettabili e ottimi del processo di sviluppo], table(
  columns: (auto, 1fr, auto, auto),
  align: center,
  rows: auto,
  inset: 7pt,
  table.header([*Metrica*], [*Nome*], [*Valore Accettabile*], [*Valore Ottimo*]),
  [MPC-RSI], [Requirements Stability Index], [≥75%], [100%],
))

#pagebreak()
== Processi di supporto
I processi di supporto forniscono servizi e attività che assistono i processi primari.
Tra questi rientrano la documentazione, la gestione della configurazione, il controllo della qualità, la verifica, la validazione e la risoluzione dei problemi.

=== Documentazione
La documentazione permette di avere un tracciamento delle attività svolte che facilita la comprensione, la manutenzione e l'evoluzione del prodotto durante il suo ciclo di vita.


==== Correttezza ortografica (MPC-CO)
La correttezza ortografica indica il numero di errori grammaticali e ortografici presenti in un documento.\

#figure(kind: table, caption: [Valori accettabili e ottimi del processo di documentazione], table(
  columns: (auto, 1fr, auto, auto),
  align: center,
  rows: auto,
  inset: 7pt,
  table.header([*Metrica*], [*Nome*], [*Valore Accettabile*], [*Valore Ottimo*]),
  [MPC-CO], [Correttezza ortografica], [2], [0],
))


=== Verifica

==== Code coverage (MPC-CCO)
È la quantità di codice eseguito durante i test.
Consente di valutare la qualità dei test e garantire che il codice sia stato testato adeguatamente.\
È stata richiesta un percentuale di copertura pari o superiore al 70%.



==== Test superati in percentuale (MPC-TSP)
Indica la percentuale di test automatizzati o manuali che sono stati eseguiti con successo rispetto al totale dei test previsti.
Una percentuale alta indica che il sistema è stabile e che la maggior parte delle funzionalità funziona come previsto.

#figure(kind: table, caption: [Valori accettabili e ottimi del processo di verifica], table(
  columns: (auto, 1fr, auto, auto),
  align: center,
  rows: auto,
  inset: 7pt,
  table.header([*Metrica*], [*Nome*], [*Valore Accettabile*], [*Valore Ottimo*]),
  [MPC-CCO], [Code coverage], [≥70%], [100%],
  [MPC-TSP], [Test superati in percentuale], [100%], [100%],
))

=== Gestione della qualità

==== Satisfaction of Quality Metrics (MPC-SQM)
Indica la percentuale di metriche che soddisfano gli obiettivi minimi di qualità.\
Il valore è ottenuto dal rapporto tra il numero di metriche di qualità soddisfatte e il numero totale di metriche di qualità.

#figure(kind: table, caption: [Valori accettabili e ottimi del processo di gestione della qualità], table(
  columns: (auto, 1fr, auto, auto),
  align: center,
  rows: auto,
  inset: 7pt,
  table.header([*Metrica*], [*Nome*], [*Valore Accettabile*], [*Valore Ottimo*]),
  [MPC-SQM], [Satisfaction of Quality Metrics], [≥80%], [100%],
))

== Processi organizzativi
I processi organizzativi riguardano la gestione e l'organizzazione del progetto come la gestione dei processi, il miglioramento e la formazione.

=== Efficienza temporale (MPC-ET)
Valuta l'efficienza con cui il tempo disponibile viene impiegato in attività produttive, ovvero quelle contribuiscono al raggiungimento degli obiettivi del progetto.

#figure(kind: table, caption: [Valori accettabili e ottimi dei processi organizzativi], table(
  columns: (auto, 1fr, auto, auto),
  align: center,
  rows: auto,
  inset: 7pt,
  table.header([*Metrica*], [*Nome*], [*Valore Accettabile*], [*Valore Ottimo*]),
  [MPC-ET], [Efficienza temporale ], [≥50%], [100%],
))
#pagebreak()

= Qualità del prodotto
La qualità del prodotto valuta la capacità del software sviluppato di soddisfare i requisiti e le aspettative concordate.
La valutazione della qualità del prodotto avviene considerando vari aspetti, tra cui la funzionalità, l'affidabilità, l'usabilità, l'efficienza e la manutenibilità.\
L'obiettivo è produrre un software che non solo soddisfi le richieste del cliente, ma che rispetti specifici standard di qualità.\
Il gruppo si impegna a rispettare le metriche di qualità del prodotto definite di seguito per garantire un elevato livello di qualità del prodotto finale.

== Funzionalità
La funzionalità misura la capacità del software di soddisfare i requisiti obbligatori, desiderabili e
opzionali.

=== Requisiti obbligatori soddisfatti (MPD-RO)
Indica la percentuale di requisiti obbligatori soddisfatti dal prodotto. Deve sempre avere un valore pari al 100% per garantire la conformità alle specifiche.

=== Requisiti desiderabili soddisfatti (MPD-RD)
Indica la percentuale di requisiti desiderabili soddisfatti dal prodotto. Un valore alto indica una maggiore soddisfazione del cliente.

=== Requisiti facoltativi soddisfatti (MPD-RF)
Indica la percentuale di requisiti facoltativi soddisfatti dal prodotto. Un valore alto aggiunge valore al prodotto.



#figure(kind: table, caption: [Valori accettabili e ottimi della funzionalità del prodotto], table(
  columns: (auto, 1fr, auto, auto),
  align: center,
  rows: auto,
  inset: 7pt,
  table.header([*Metrica*], [*Nome*], [*Valore Accettabile*], [*Valore Ottimo*]),
  [MPD-RO], [Requisiti obbligatori soddisfatti], [100%], [100%],
  [MPD-RD], [Requisiti desiderabili soddisfatti], [≥0%], [100%],
  [MPD-RF], [Requisiti facoltativi soddisfatti], [≥0%], [100%],
))

== Affidabilità
L'affidabilità misura la capacità del software di funzionare correttamente sotto specifiche condizioni.

=== Code coverage (MPD-CCO)
Indica la percentuale di codice eseguita durante i test.\ Un valore alto indica una migliore copertura del codice, suggerendo che il codice è stato testato approfonditamente e abbia una bassa probabilità di contenere errori.

=== Branch coverage (MPD-BC)
Indica la percentuale di rami decisionali del codice eseguiti durante i test, utile per identificare scenari non testati.\
Un valore alto suggerisce che il codice è stato testato approfonditamente e che ha una bassa probabilità di contenere errori.

=== Statement coverage (MPD-SC)
Indica la percentuale di istruzioni eseguite durante i test.\ Un valore alto alto suggerisce un'analisi pù approfondita del codice e una bassa probabilità di contenere errori.
Il valore è dati dal rapporto tra il numero di istruzioni eseguite e il numero totale di istruzioni nel codice, moltiplicato per 100.


=== Failure Tolerance (MPD-FT)
Indica la capacità del software di mantenere un livello di prestazioni accettabile anche in caso di guasti o malfunzionamenti.\
Un valore alto suggerisce che il software è capace di gestire i guasti senza compromettere le funzionalità principali.

=== Failure Frequency (MPD-FF)
Indica la frequenza con cui si verificano guasti o malfunzionamenti nel prodotto.\
Un valore basso suggerisce che il prodotto è affidabile.

#figure(kind: table, caption: [Valori accettabili e ottimi dell'affidabilità del prodotto], table(
  columns: (auto, 1fr, auto, auto),
  align: center,
  rows: auto,
  inset: 7pt,
  table.header([*Metrica*], [*Nome*], [*Valore Accettabile*], [*Valore Ottimo*]),
  [MPD-CCO], [Code coverage], [≥70%], [100%],
  [MPD-BC], [Branch coverage], [≥60%], [≥85%],
  [MPD-SC], [Statement coverage], [≥60%], [≥85%],
  [MPD-FT], [Failure Tolerance ], [100%], [100%],
  [MPD-FF], [Failure Frequency ], [0], [0],
))



== Usabilità
L'usabilità indica la facilità con cui gli utenti possono utilizzare il software.

=== Tempo di apprendimento (MPD-TA)
Indica il tempo necessario per un utente per imparare ad utilizzare il software.\
Un valore basso indica che il prodotto è facile da usare e richiede poco tempo per essere appreso donando un'esperienza utente migliore.

=== Facilità d'uso (MPD-FU)
Indica il numero di errori commessi dagli utenti durante l'interazione con il software.\
Un valore basso indica che il prodotto è facile da usare e che gli utenti riescono a completare le azioni richieste senza errori.

#figure(kind: table, caption: [Valori accettabili e ottimi dell'usabilità del prodotto], table(
  columns: (auto, 1fr, auto, auto),
  align: center,
  rows: auto,
  inset: 7pt,
  table.header([*Metrica*], [*Nome*], [*Valore Accettabile*], [*Valore Ottimo*]),
  [MPD-TA], [Tempo di apprendimento], [≤15 minuti], [≤5 minuti],
  [MPD-FU], [Facilità d'uso], [≤4 errori], [0 errori],
))

== Efficienza

=== Tempo medio di esecuzione (MPD-TE)
Misura il tempo medio impiegato da un  #glossario("routine") per completare la propria esecuzione.
Tempi di esecuzione più brevi indicano un prodotto più efficiente, migliorando l'esperienza utente.


#figure(kind: table, caption: [Valori accettabili e ottimi dell'efficienza del prodotto], table(
  columns: (auto, 1fr, auto, auto),
  align: center,
  rows: auto,
  inset: 7pt,
  table.header([*Metrica*], [*Nome*], [*Valore Accettabile*], [*Valore Ottimo*]),
  [MPD-TE], [Tempo medio di esecuzione], [≤20 secondi], [≤15 secondi],
))


== Manutenibilità

=== Complessità ciclomatica (MPD-CC)
Indica la complessità del codice sorgente, si misura contando il numero di cammini indipendenti nel grafo di controllo del flusso.\ Un valore basso indica che il codice è semplice e facile da mantenere.

=== Code Smell (MPD-CS)
Indica la presenza di potenziali problemi di progettazione o codice che potrebbero richiedere manutenzione.\
Denota la possibile presenza di parti di codice non ottimali, che potrebbero causare difficoltà in futuro, come un'architettura poco chiara o sezioni di codice ripetitive.\
Un valore basso indica che il codice è ben strutturato e non presenta problemi tecnici.

=== Coefficient of Coupling (MPD-COC)
Indica il grado di dipendenza tra i moduli o le componenti di un sistema.\
Un valore alto implica che i moduli sono strettamente interconnessi, rendendo difficile apportare modifiche a un modulo senza influenzare gli altri.


#figure(kind: table, caption: [Valori accettabili e ottimi della manutenibilità del prodotto], table(
  columns: (auto, 1fr, auto, auto),
  align: center,
  rows: auto,
  inset: 7pt,
  table.header([*Metrica*], [*Nome*], [*Valore Accettabile*], [*Valore Ottimo*]),
  [MPD-CC], [Complessità ciclomatica], [≤15], [≤6],
  [MPD-CS], [Code Smell ], [≤10], [0],
  [MPD-COC], [Coefficient of Coupling ], [≤0.5], [≤0.3],
))

#pagebreak()

= Metodi di testing
La seguente sezione descrive le attività di testing effettuate per garantire la qualità del prodotto.



== Nomenclatura


Ciascun test è identificato univocamente da un codice composto come segue:

#set align(center)
[*T[Tipologia]-[ID]*]
#set align(left)

dove:
- *T* : indica che si tratta di un test.

- *Tipologia* : indica la tipologia del test, che può essere:
  - *U* : test di unità;
  - *I* : test di integrazione;
  - *S* : test di sistema;
  - *A* : test di accettazione;
- *ID* : un numero progressivo del test, univoco all'interno della sua tipologia.

Per ogni test viene specificato lo stato di esecuzione, che può assumere i seguenti valori:
- *S*: superato;
- *F*: fallito;
- *N*: non eseguito.




== Test di unità
I test di unità verificano il funzionamento corretto di componenti software più piccoli e indipendenti, sviluppati soprattutto nella fase di progettazione.

Di seguito viene fornita una tabella contenente i test di unità effettuati, di ogni test viene riportato il codice univoco, descrizione e stato di esecuzione.

È stato raggiunto un _code coverage_ del 95%.


#show figure: set block(breakable: true)
#figure(kind: table, caption: [Test di unità], table(
  columns: (auto, 1fr, auto),
  align: center,
  rows: auto,
  inset: 7pt,
  table.header([*Codice*], [*Descrizione*], [*Stato*]),

  //bozza con test_log.py
  [TU-01], [Verifica che la configurazione del logging sia in modalità produzione, in assenza di variabili d'ambiente specifiche], [S],

  [TU-0X], [Verifica che la configurazione del logging sia in modalità sviluppo, se la variabile d'ambiente _ENV_ è impostata a "dev"], [S],

  [TU-0X], [Verifica che la variabile d'ambiente _ENV_ sia case insensitive], [S],
  [TU-0X], [Verifica che modalità sviluppo sia attiva se la variabile d'ambiente _DEV_ è impostata a "true], [S],
  [TU-0X], [Verifica che modalità sviluppo sia attiva se la variabile d'ambiente _DEV_ è impostata a "1"], [S],
  [TU-0X], [Verifica che modalità sviluppo sia attiva se la variabile d'ambiente _DEV_ è impostata a "yes"], [S],
  [TU-0X], [Verifica che modalità sviluppo sia attiva se la variabile d'ambiente _DEV_ è impostata a "TRUE"], [S],

  [TU-0X],
  [Verifica che modalità sviluppo non sia attiva se la variabile d'ambiente _DEV_ è impostata a valori diversi da "true", "1", "yes" o "TRUE"],
  [S],

  [TU-0X], [Verifica che se _ENV_ è posta a "production" e _DEV_ a "1" prevalga la modalità sviluppo], [S],
  [TU-0X], [Verifica che se le variabili sono impostate, sovrascrivano quelle di default], [S],
  [TU-0X], [Verifica che il valore della variabile d'ambiente `LOG_LEVEL` sia convertito in maiuscolo], [S],
  [TU-0X], [Verifica che il formatter del logging sia configurato con una stringa con il corretto formato], [S],
  [TU-0X], [Verifica che l'aggiunta di uno `StreamHandler`, se non presente], [S],
  [TU-0X], [Verifica che non venga aggiunto uno `StreamHandler`, se già presente], [S],

  // block Factory
  [TU-0X], [Verifica che la classe `BlockFactory`implementi senza errori il pattern _singleton_], [S],
  [TU-0X], [Verifica che la creazione del _singleton_ sia thread-safe], [S],
  [TU-0X], [Verifica che l'istanza di  `BlockFactory` sia inizializzata correttamente], [S],
  [TU-0X], [Verifica che la funzione di registrazione dei blocchi di `BlockFactory` funzioni correttamente], [S],
  [TU-0X], [Verifica che la funzione di registrazione di `BlockFactory` accetti solo classi che derivano da _Block_], [S],
  [TU-0X], [Verifica che la funzione di registrazione di `BlockFactory` sia thread-safe], [S],
  [TU-0X], [Verifica la corretta creazione di un blocco], [S],
  [TU-0X], [Verifica che la creazione di un blocco con un tipo non registrato sollevi un errore], [S],
  [TU-0X], [Verifica il comportamento della funzione `get_supported_types` quando il registro dei blocchi è vuoto], [S],
  [TU-0X], [Verifica il comportamento della funzione `get_supported_types` quando sono presenti dei blocchi registrati], [S],
  [TU-0X],
  [Verifica che la funzione `lookup_implemented` ritorni _true_ per i tipi di blocco registrati e _false_ per quelli non registrati],
  [S],

  [TU-0X], [Verifica che la registrazione di un blocco venga loggata dal sistema], [S],
  [TU-0X], [Verifica che la creazione di un blocco venga loggata dal sistema], [S],

  //test block.py
  [TU-0X], [Verifica l'inizializzazione di un blocco sia con parametri personalizzati sia senza], [S],
  [TU-0X], [Verifica che il metodo `_get_setting` recuperi correttamente i valori dalle impostazioni], [S],
  [TU-0X], [Verifica il flusso di esecuzione di un blocco], [S],
  [TU-0X], [Verifica la funzionalità di logging all'interno di un blocco], [S],
  [TU-0X], [Verifica la corretta implementazione del pattern _visitor_], [S],
  [TU-0X], [Verifica la corretta rappresentazione degli oggetti blocco], [S],
  [TU-0X], [Verifica che la classe astratta `Block` non sia istanziabile], [S],
  [TU-0X], [Verifica il comportamento classe astratta `Block` sia corretto], [S],

  //test executionLog
  [TU-0X], [Verifica la correttezza delle classi `ExecutionLog` e di `Status` usati per tracciare l'esecuzione dei blocchi], [S],

  //flaskAppSingleton
  [TU-0X], [Verifica che la classe `FlaskAppSingleton` rispetti il pattern _singleton_], [S],
  [TU-0X], [Verifica che la classe `FlaskAppSingleton` venga inizializzata correttamente], [S],
  [TU-0X], [Verifica che la classe `FlaskAppSingleton` gestisca correttamente le richieste], [S],
  [TU-0X], [Verifica che la classe `FlaskAppSingleton` non consenta l'istanziazione multipla], [S],

  //mongoDB

  [TU-0X], [Verifica che la classe `MongoDBSingleton` rispetti il pattern _singleton_], [S],
  [TU-0X], [Verifica che la corretta istanzazione della classe `MongoDBSingleton` in presenza di un oggetto _Flask_ app], [S],
  [TU-0X], [Verifica che la corretta istanzazione della classe `MongoDBSingleton` in assenza di un oggetto _Flask_ app], [S],
  [TU-0X], [Verifica che il metodo `get_db` della classe `MongoDBSingleton` restituisca l'oggetto database corretto], [S],
  [TU-0X], [Verifica che l'attributo `mongo` venga inizializzato correttamente], [S],
  [TU-0X], [Verifica che l'istanza _singleton_ persista anche se acceduta in modi diversi], [S],
  [TU-0X], [Verifica che venga sollevata un'eccezione se fallisce l'inizializzazione di `PyMongo`], [S],
  [TU-0X], [Verifica che venga sollevata un'eccezione se si prova a chiamare il metodo `get_db` e l'attributo `mongo` è _None_], [S],

  // test jwt.utils
  [TU-0X], [Verifica che la funzione `generateJwt` generi correttamente un token JWT contente email e scadenza], [S],
  [TU-0X], [Verifica che la funzione `verifyJwt` decodifichi e verifichi correttamente un token], [S],
  [TU-0X], [Verifica che la funzione `generateJwt` gestisca correttamente il caso in cui l'email sia una stringa vuota], [S],

  //llmfacade
  [TU-0X], [Verifica che la funzione `agent_facade` funzioni correttamente in condizioni normali, simulando l'interazione con AWS], [S],
  [TU-0X], [Verifica che la funzione `agent_facade` gestisca correttamente il caso in cui il prompt sia vuoto], [S],
  [TU-0X],
  [Verifica che la funzione `agent_facade` gestisca correttamente il caso in cui il prompt contenga caratteri speciali e emoji],
  [S],

  // JsonParser
  [TU-0X], [Verifica che la classe astratta `JsonParserStrategy` non possa essere istanziata direttamente], [S],
  [TU-0X], [Verifica che le sottoclassi di `JsonParserStrategy` implementino il metodo `parse`], [S],
  [TU-0X], [Verifica che il metodo `parse` gestisca correttamente le stringhe JSON], [S],

  //AI summarize

  [TU-0X],
  [Verifica che il comportamento della classe `AISummarize` assicurando che il metodo `execute` restituisca un riassunto corretto],
  [S],

  //syswait
  [TU-0X],
  [Verifica che la classe `SystemWaitSeconds` gestisca correttamente i vari tipi di input come interi, numeri float e stringhe],
  [S],

  [TU-0X],
  [Verifica che funzione `validate_inputs` della classe `SystemWaitSeconds` restituisca _True_ per i tipi di input validi come interi, numeri float e stringhe],
  [S],

  [TU-0X],
  [Verifica che funzione `validate_inputs` della classe `SystemWaitSeconds` restituisca _False_ in presenza di valori negativi, stringhe non numeriche o in assenza di input],
  [S],

  [TU-0X], [Verifica che funzione `execute` della classe `SystemWaitSeconds` sia eseguita correttamente], [S],

  //telegram
  [TU-0X],
  [Verifica che la funzione `validate_inputs` della classe `TelegramSendMessage` restituisca _True_ se sono presenti tutti gli input richiesti, ovvero `botToken`, `chatId`  e `message`],
  [S],

  [TU-0X],
  [Verifica che la funzione `validate_inputs` della classe `TelegramSendMessage` restituisca _False_ se non sono presenti tutti gli input richiesti],
  [S],

  [TU-0X], [Verifica che funzione `execute` della classe `TelegramSendMessage` sia eseguita correttamente], [S],
  [TU-0X],
  [Verifica che funzione `execute` della classe `TelegramSendMessage` sia eseguita correttamente quando `"message": "{{LASTOUTPUT}}"`],
  [S],

  [TU-0X], [Verifica il comportamento di `execute` in presenza di errori di rete ], [S],

  //notion

  [TU-0X],
  [Verifica che la funzione `validate_inputs` della classe `NotionGetPage` restituisca _True_ se sono presenti tutti gli input richiesti, ovvero `pageID` e `internalIntegrationToken`],
  [S],

  [TU-0X],
  [Verifica che la funzione `validate_inputs` della classe `NotionGetPage` restituisca _False_ se non sono presenti tutti gli input richiesti],
  [S],

  [TU-0X], [Verifica che la funzione `execute` della classe `NotionGetPage` sia implementata correttamente], [S],

  [TU-0X],
  [Verifica che la funzione `execute` della classe `NotionGetPage` restituisca uno stato di errore in presenza di un errore nella Notion API],
  [S],

  [TU-0X],
  [Verifica che la funzione `execute` della classe `NotionGetPage` restituisca uno stato di errore in presenza di token invalido],
  [S],

  //flow iterator
  [TU-0X], [Verifica che la classe `FlowIterator` sia inizializzata correttamente], [S],
  [TU-0X], [Verifica che l'esecuzione dei blocchi avvenga in sequenza e che ogni blocco venga eseguito], [S],
  [TU-0X],
  [Verifica la gestione dell'esecuzione dei blocchi in presenza di errori nell'esecuzione di un blocco, verificando che l'esecuzione si interrompa e che siano presenti i log di errore],
  [S],

  //llm sanitize
  [TU-0X],
  [Verifica che il metodo `add_json` della classe `BaseSanitizationStrategy` funzioni correttamente gestendo vari tipi di input],
  [S],

  [TU-0X], [Verifica che il metodo `add_json` della classe `BaseSanitizationStrategy` non sovrascrivi valori esistenti ], [S],
  [TU-0X],
  [Verifica che il metodo `add_field_if_missing` della classe `BaseSanitizationStrategy` imposti il tipo di default, se mancante],
  [S],

  [TU-0X],
  [Verifica che più chiamate a `_position_counter` della classe `BaseSanitizationStrategy` generino una griglia di posizioni corretta],
  [S],

  //flowManager.
  [TU-0X], [Verifica che l'inizializzazione della classe `FlowManager` crei tutti i componenti necessari], [S],
  [TU-0X], [Verifica che il metodo `parse_json` della classe `FlowManager` crei i blocchi corretti dopo aver ricevuto i dati JSON], [S],
  [TU-0X],
  [Verifica che il metodo `parse_json` della classe `FlowManager` sollevi un errore se si cerca di implementare un blocco di tipo non implementato],
  [S],

  [TU-0X],
  [Verifica che il metodo `start_workflow` della classe `FlowManager` ritorni uno stato _completed_ se il flusso viene eseguito correttamente],
  [S],

  [TU-0X],
  [Verifica che il metodo `start_workflow` della classe `FlowManager` ritorni uno stato _failed_ se il flusso non viene eseguito],
  [S],

  [TU-0X], [Verifica che il metodo `get_status` della classe `FlowManager` ritorni gli stati], [S],

  [TU-0X], [Verifica che la classe `FlowManagerFactory` rispetti il pattern _singleton_], [S],
  [TU-0X], [Verifica che la classe `FlowManagerFactory` restituisca un'istanza di `FlowManager`], [S],
))


== Test di integrazione
I test di integrazione vengono eseguiti successivamente ai test di unità e verificano l'interazione tra più unità software per garantire una corretta integrazione e funzionamento del sistema.



== Test di sistema
I test di sistema verificano il funzionamento del sistema software nel suo complesso per garantire il soddisfacimento delle specifiche funzionali, prestazionali e di qualità concordate, presenti nel documento dell' #link("https://sigma18unipd.github.io/documentiCompilati/3-PB/documentidiprogetto/analisideirequisiti_2.0.0.pdf")[analisi dei requisiti] [versione 2.0.0].

Di seguito viene fornita una tabella contenente i test di sistema effettuati, di ogni test viene riportato il codice univoco, descrizione e stato di esecuzione.



#show figure: set block(breakable: true)
#figure(kind: table, caption: [Test di sistema], table(
  columns: (auto, 1fr, auto),
  align: center,
  rows: auto,
  inset: 7pt,
  table.header([*Codice*], [*Descrizione*], [*Stato*]),

  //LOGIN
  [TS-0X], [Verificare che l'utente possa effettuare _login_ con il proprio account per accedere al servizio], [S],

  [TS-0X], [Verificare che l'utente autenticato possa inserire la sua _e-mail_ per accedere all'applicativo], [S],

  [TS-0X], [Verificare che l'utente possa inserire la sua _password_ per accedere all'applicativo], [S],
  [TS-0X], [Verificare che il sistema restituisca un errore se si tenta di eseguire il login con una mail non registrata], [S],

  [TS-0X], [Verificare che il sistema restituisca un errore se rileva ripetuti tentativi di accesso], [S],

  [TS-0X], [Verificare che il sistema restituisca un errore se si tenta di eseguire il login con una mail non verificata], [S],

  //REGISTRAZIONE

  [TS-0X], [Verificare che l'utente non autenticato possa registrarsi con  un nuovo account], [S],

  [TS-0X], [Verificare che l'utente non autenticato possa inserire la sua _e-mail_ per registrarsi nell'applicativo], [S],

  [TS-0X], [Verificare che l'utente possa creare la sua _password_ per registrarsi nell'applicativo], [S],

  [TS-0X], [Verificare che l'utente possa reinserire la sua password per la registrazione nell'applicativo], [S],

  [TS-0X], [Verificare che il sistema restituisca un errore per credenziali non valide inserite dall'utente], [S],

  [TS-0X], [Verificare che il sistema restituisca un errore se l'_e-mail_ è già in uso in fase di registrazione], [S],

  [TS-0X], [Verificare che il sistema restituisca un errore se le _password_ non corrispondono tra loro in fase di registrazione], [S],

  [TS-0X],
  [Verificare che il sistema restituisca un errore se la _password_ creata è inferiore a 8 caratteri in fase di registrazione],
  [S],

  [TS-0X], [Verificare che il sistema restituisca un errore se l'_e-mail_ è già in uso in fase di verifica], [S],

  [TS-0X], [Verificare che il sistema restituisca un errore se si lascia il campo password vuoto], [S],

  [TS-0X], [Verificare che il sistema restituisca un errore nel caso si riscontrino problemi], [S],

  //VERIFICA

  [TS-0X], [Verificare che l'utente possa verificare l'account creato tramite codice di verifica ricevuto per _e-mail_], [S],

  [TS-0X],
  [Verificare che il sistema restituisca un errore se l'utente tenta di concludere la registrazione senza inserire il codice di verifica],
  [S],

  [TS-0X], [Verificare che il sistema restituisca un errore se il codice di conferma inserito dall'utente è scaduto], [S],

  [TS-0X], [Verificare che il sistema restituisca un errore se il codice di conferma inserito dall'utente è errato], [S],

  //CREAZIONE
  [TS-0X], [Verificare che l'utente possa visualizzare la dashboard in seguito al login nell'applicativo], [S],
  [TS-0X], [Verificare che l'utente autenticato possa vedere i workflow creati nella dashboard], [S],

  [TS-0X], [Verificare che l'utente possa creare una nuova _routine_], [S],

  [TS-0X], [Verificare che l'utente possa modificare il nome di una _routine_], [S],

  [TS-0X], [Verificare che il sistema restituisca un errore se il nome del _workflow_ viene lasciato vuoto], [S],

  [TS-0X], [Verificare che il sistema restituisca un errore se il nome del _workflow_ ha più di 25 caratteri], [S],

  [TS-0X], [Verificare che l'utente possa generare una _routine_ tramite linguaggio naturale], [S],

  [TS-0X],
  [Verificare che il sistema restituisca un errore se il prompt di generazione di una _routine_ tramite linguaggio naturale viene lasciato vuoto],
  [S],

  [TS-0X], [Verificare che l'utente possa visualizzare il nome di una _routine_ esistente], [S],

  [TS-0X], [Verificare che l'utente possa visualizzare i dettagli di una _routine_ esistente], [S],

  [TS-0X], [Verificare che l'utente possa visualizzare il diagramma dei blocchi di una _routine_ esistente], [S],

  [TS-0X], [Verificare che l'utente possa eliminare una _routine_ esistente], [S],

  [TS-0X], [Verificare che il sistema restituisca un errore se si tenta di interagire con un _workflow_ inesistente], [S],

  [TS-0X], [Verificare che l'utente possa avviare una _routine_ esistente], [S],

  [TS-0X], [Verificare che l'utente possa avviare una _routine_ esistente dalla dashboard], [S],

  [TS-0X], [Verificare che l'utente possa avviare una _routine_ esistente dalla pagina di modifica del flusso], [S],

  [TS-0X], [Verificare che il sistema restituisca un errore se l'esecuzione del flusso non va a buon fine], [S],

  [TS-0X], [Verificare che l'utente possa aggiungere un blocco ad una _routine_ esistente], [S],

  [TS-0X], [Verificare che l'utente possa aggiungere un blocco del tipo "_Telegram_ - Send Bot Message" ad una _routine_ esistente], [S],

  [TS-0X], [Verificare che l'utente possa aggiungere un blocco del tipo "_AI_ - Summarize" ad una _routine_ esistente], [S],

  [TS-0X], [Verificare che l'utente possa aggiungere un blocco del tipo "_System_ - Wait Second(s)" ad una _routine_ esistente], [S],

  [TS-0X], [Verificare che l'utente possa aggiungere un blocco del tipo "_Notion_ - Get Page" ad una _routine_ esistente], [S],

  [TS-0X], [Verificare che l'utente possa visualizzare le impostazioni di un singolo blocco], [S],

  [TS-0X], [Verificare che l'utente possa visualizzare le impostazioni di un blocco del tipo "_Telegram_ - Send Bot Message"], [S],

  [TS-0X], [Verificare che l'utente possa visualizzare le impostazioni di un blocco del tipo "_System_ - Wait Second(s)"], [S],

  [TS-0X], [Verificare che l'utente possa visualizzare le impostazioni di un blocco del tipo "_Notion_ - Get Page"], [S],

  [TS-0X], [Verificare che l'utente possa modificare le impostazioni di un singolo blocco], [S],

  [TS-0X], [Verificare che l'utente possa modificare le impostazioni di un blocco del tipo "_Telegram_ - Send Bot Message"], [S],

  [TS-0X], [Verificare che l'utente possa modificare le impostazioni di un blocco del tipo "_System_ - Wait Second(s)"], [S],

  [TS-0X], [Verificare che l'utente possa modificare le impostazioni di un blocco del tipo "_Notion_ - Get Page"], [S],

  [TS-0X],
  [Verificare che il sistema salvi le modifiche apportate dall'utente alla _routine_ se viene premuto il tasto di salvataggio],
  [S],

  [TS-0X], [Verificare che l'utente possa eliminare un blocco da una _routine_ esistente], [S],

  [TS-0X], [Verificare che l'utente possa eliminare un blocco da una _routine_ esistente da tastiera premendo il tasto "backspace"], [S],

  [TS-0X], [Verificare che l'utente possa eliminare un blocco da una _routine_ esistente da interfaccia grafica], [S],

  [TS-0X], [Verificare che l'utente possa collegare due blocchi di una _routine_ esistente], [S],

  [TS-0X], [Verificare che l'utente possa scollegare due blocchi di una _routine esistente_], [S],

  [TS-0X], [Verificare che l'utente possa ritornare alla dashboard dalla pagina di modifica flusso], [S],

  [TS-0X], [Verificare che l'utente possa impostare la modalità del client in dark mode o light mode], [S],

  [TS-0X], [Verificare che l'utente possa effettuare il _logout_ dall'applicativo], [S],
))

== Test di accettazione
I test di accettazione sono condotti per verificare che il sistema soddisfi i requisiti e le aspettative del contrattuali, motivo per cui sono condotti insieme al committente.\
Il loro successo è fondamentale per garantire il rilascio definitivo del prodotto.

Di seguito viene fornita una tabella contenente i test di accettazione effettuati in presenza dell'azienda proponente, di ogni test viene riportato il codice univoco, descrizione e stato di esecuzione.

#show figure: set block(breakable: true)
#figure(kind: table, caption: [Test di accettazione], table(
  columns: (auto, 1fr, auto),
  align: center,
  rows: auto,
  inset: 7pt,
  table.header([*Codice*], [*Descrizione*], [*Stato*]),
  [TA-0X],
  [Verificare che l'utente non autenticato possa effettuare la registrazione per accedere al servizio, inserendo mail, password e conferma password],
  [S],

  [TA-0X], [Verificare che se le due password non corrispondono venga restituito un messaggio di errore], [S],
  [TA-0X], [Verificare che se le due password non corrispondono venga restituito un messaggio di errore], [S],
  [TA-0X], [Verificare che la password debba contenere almeno 8 caratteri, in caso contrario che venga mostrato un messaggio d'errore], [S],
  [TA-0X],
  [Verificare che l'utente non autenticato possa verificare il proprio account inserendo il codice di verifica ricevuto via email],
  [S],

  [TA-0X], [Verificare che l'utente non autenticato possa effettuare il login inserendo email e password], [S],
  [TA-0X],
  [Verificare che l'utente non autenticato riceva un messaggio di errore se tenta di effettuare il login con credenziali errate],
  [S],

  [TA-0X], [Verificare che l'utente autenticato acceda direttamente alla dashboard], [S],
  [TA-0X], [Verificare che l'utente autenticato possa vedere i workflow creati nella dashboard], [S],
  [TA-0X], [Verificare che l'utente autenticato possa creare nuovi workflow], [S],
  [TA-0X], [Verificare che l'utente autenticato possa inserire il nome del workflow che desidera creare], [S],
  [TA-0X],
  [Verificare che l'utente autenticato riceva un messaggio di errore se prova a creare un nuovo workflow lasciando vuoto il campo nome o se inserisce un nome con più di 25 caratteri],
  [S],

  [TA-0X],
  [Verificare che l'utente autenticato possa vedere in dettaglio il workflow premendo il workflow di interesse dalla dashboard],
  [S],

  [TA-0X], [Verificare che l'utente autenticato possa generare un workflow usando il linguaggio naturale, sfruttando _LLM_], [S],
  [TA-0X], [Verificare che l'utente autenticato possa creare un workflow manualmente selezionando i blocchi desiderati], [S],
  [TA-0X], [Verificare che l'utente autenticato possa modificare il workflow selezionato], [S],
  [TA-0X], [Verificare che l'utente autenticato possa aggiungere un blocco manualmente tramite l'interfaccia drag & drop], [S],
  [TA-0X],
  [Verificare che l'utente autenticato possa cercare il blocco di interesse nel menù laterale a cui si accede tramite il bottone _Add a Block_],
  [S],

  [TA-0X], [Verificare che l'utente autenticato possa modificare le impostazioni di un singolo blocco], [S],
  [TA-0X], [Verificare che l'utente autenticato possa eliminare un blocco da interfaccia grafica], [S],
  [TA-0X], [Verificare che l'utente autenticato possa eliminare un blocco da tastiera, premendo il tasto _backspace_], [S],
  [TA-0X], [Verificare che l'utente autenticato possa salvare un workflow], [S],
  [TA-0X], [Verificare che l'utente autenticato possa rinominare un workflow], [S],
  [TA-0X], [Verificare che l'utente autenticato possa eseguire un workflow dalla pagina dettagli flusso], [S],
  [TA-0X], [Verificare che l'utente autenticato possa eseguire un workflow dalla dashboard], [S],
  [TA-0X], [Verificare che l'utente autenticato possa eliminare un workflow], [S],
  [TA-0X], [Verificare che l'utente autenticato possa rinominare un workflow], [S],
  [TA-0X], [Verificare che l'utente autenticato possa effettuare il logout], [S],
  [TA-0X], [Verificare che l'utente autenticato possa selezionare il tema che preferisce tra scuro e chiaro], [S],
  [TA-0X], [Verificare che siano stati implementati almeno 3 blocchi di automazione], [S],
))

#pagebreak()


= Cruscotto di Valutazione

//TODO: aggiungere linea fine RTB su sprint 8
<cruscotto>
La seguente sezione riporta un'analisi dell'andamento delle metriche di qualità del prodotto e del processo, in modo da monitorare il progresso del progetto e verificare se gli obiettivi di qualità sono stati raggiunti.\

== Estimated at Completion (MPC-EAC)
#figure(image("../../assets/chart/PB/EAC_chart.svg", width: 90%), caption: [
  Stima del costo totale nel tempo
])
=== RTB
Dal grafico si osserva che il valore di *MPC-EAC* rimane sempre entro una variazione massima del *5% rispetto al BAC*, indicato come _limite superiore_, quindi il progetto è in linea con le aspettative di budget.


=== PB




#pagebreak()
== Planned Value (MPC-PV) & Earned Value (MPC-EV)
#figure(image("../../assets/chart/PB/PV_EV_chart.svg", width: 90%), caption: [
  Stima dei valori EV e PV nel tempo
])
=== RTB
Dal grafico si può notare che il valore di *MPC-EV* è in linea con il valore *MPC-PV*, indicando che il lavoro viene effettivamente svolto rispettando la pianificazione.

=== PB



#pagebreak()
== Actual Cost (MPC-AC), Estimated To Complete (MPC-ETC) & Estimated At Completion (MPC-EAC)
#figure(image("../../assets/chart/PB/AC_ETC_EAC_chart.svg", width: 90%), caption: [
  Stima dei valori AC, ETC e EAC nel tempo
])
=== RTB
Il grafico mostra l'andamento dei valori di *MPC-AC*, *MPC-ETC* e *MPC-EAC* nel tempo.\
Si può osservare che il valore di *MPC-AC* cresce in modo costante, mentre il valore di *MPC-ETC* decresce progressivamente con l'avanzare degli sprint, entrambi i valori sono inferiori al valore di *MPC-EAC*.\
Si può affermare quindi che il progetto è in linea con le aspettative di budget.

=== PB

#pagebreak()

== Cost Variance (MPC-CV) & Schedule Variance (MPC-SV)
#figure(image("../../assets/chart/PB/CV_SV_chart.svg", width: 90%), caption: [
  Stima dei valori CV e SV nel tempo
])
=== RTB
Dal grafico si può notare che i valore di *MPC-CV* e *MPC-SV* sono sempre entro i limiti accettabili, indicati come _limite superiore_ e _limite inferiore_.
Si può notare che il valore di *MPC-SV* ha subito un picco negativo durante il sesto e settimo sprint causato dalla concomitanza con la sessione di esami estiva che ha causato un rallentamento soprattutto negli sprint in questione.
Tuttavia, il valore è tornato a crescere, indicando una ripresa del progetto e un ritorno alla pianificazione iniziale.

=== PB





#pagebreak()

== Cost Performance Index (MPC-CPI)
#figure(image("../../assets/chart/PB/CPI_chart.svg", width: 90%), caption: [
  Stima dei valori CPI nel tempo
])
=== RTB
Il grafico mostra l'andamento del valore di *MPC-CPI* nel tempo, si può notare che è sempre superiore al limite inferiore e che si avvicina sempre di più al valore ottimo 1, indicando che i costi per completare i lavori sono in linea con quanto stabilito.

=== PB



#pagebreak()

== Requirements Stability Index (MPC-RSI)
#figure(image("../../assets/chart/PB/RSI_chart.svg", width: 90%), caption: [
  Stima dei valori RSI nel tempo
])
=== RTB
Dal grafico si può notare che nei due sprint iniziali il valore di *MPC-RSI* è pari a 0, dato dal fatto che i requisiti sono stati definiti solo a partire dal terzo sprint.
Con l'avanzare del progetto, il valore cresce fino a raggiungere stabilità e valori accettabili, indicando che i requisiti sono stati stabiliti e non sono soggetti a modifiche frequenti.\
Si può osservare una diminuzione del valore nell'ottavo sprint, a seguito della revisione con il professor Cardin, il quale ha richiesto un maggior dettaglio nella definizione dei requisiti.

=== PB



#pagebreak()



== Correttezza ortografica (MPC-CO)
#figure(image("../../assets/chart/PB/CO_chart.svg", width: 90%), caption: [
  Stima dei valori CO nel tempo
])
=== RTB
Si può notare che il gruppo si è sempre impegnato a correggere gli eventuali errori ortografici presenti inizialmente nei documenti redatti, per raggiungere un valore pari a 0.


=== PB



#pagebreak()

== Satisfaction of Quality Metrics (MPC-SQM)
#figure(image("../../assets/chart/PB/SQM_chart.svg", width: 90%), caption: [
  Stima dei valori SQM nel tempo
])
=== RTB
Dal grafico emerge che la percentuale di metriche soddisfatte nei primi due sprint era inferiore al _limite inferiore_, ciò è dato dall'iniziale inesperienza del gruppo. Tuttavia, la percentuale cresce progressivamente con l'avanzare degli sprint raggiungendo valori accettabili.


=== PB


#pagebreak()

== Efficienza temporale (MPC-ET)
#figure(image("../../assets/chart/PB/ET_chart.svg", width: 90%), caption: [
  Stima dei valori ET nel tempo
])

=== RTB
Il grafico mostra l'andamento dell'efficienza temporale del gruppo, che cresce progressivamente con l'avanzare degli sprint.
Nei primi sprint si ha un'efficienza temporale bassa, dovuta all'inesperienza del gruppo e alla mancanza di conoscenze sulle tecnologie utilizzate.



=== PB

