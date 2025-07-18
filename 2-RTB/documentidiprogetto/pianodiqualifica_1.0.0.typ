#import "../../templates/template.typ": *

#show: content => verbale(
  titoloDocumento: "Piano di Qualifica",
  abstract: "Piano di qualifica per il capitolato C3 proposto da Var Group S.p.A.",
  responsabili: ("Mirco Borella", "Aleena Mathew", "Matteo Marangon", "Pietro Crotti", "Marco Egidi"),
  redattori: ("Aleena Mathew", "Matteo Marangon", "Pietro Crotti", "Carmelo Russello"),
  verificatori: ("Carmelo Russello", "Matteo Marangon", "Pietro Crotti", "Alessandro Bernardello", "Mirco Borella"),
  tipo: "Documento Esterno",
  destinatari: ("Prof. Tullio Vardanega", "Prof. Riccardo Cardin", "Var Group S.p.A.", "Sigma18"),
  versioneAttuale: "1.0.0",
  versioni: (
    "1.0.0",
    "2025/07/11",
    "Carmelo Russello",
    "Mirco Borella",
    "Migliorie impostazioni del documento e aggiornamento cruscotto di valutazione concluso il settimo sprint",
    "0.8.0",
    "2025/06/26",
    "Aleena Mathew ",
    "Carmelo Russello",
    "Aggiornamento cruscotto di valutazione concluso il sesto sprint",
    "0.7.0",
    "2025/06/11",
    "Aleena Mathew ",
    "Matteo Marangon",
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
- *Norme di progetto:*
#link(
  "https://sigma18unipd.github.io/documentiCompilati/2-RTB/documentidiprogetto/normediprogetto_1.0.0.pdf",
)[https://sigma18unipd.github.io/documentiCompilati/2-RTB/documentidiprogetto/normediprogetto_1.0.0.pdf]

- * ISO/IEC 12207:1995: *
#link(
  "https://www.math.unipd.it/~tullio/IS-1/2009/Approfondimenti/ISO_12207-1995.pdf",
)[https://www.math.unipd.it/~tullio/IS-1/2009/Approfondimenti/ISO_12207-1995.pdf]

- *Capitolato C3 - Automatizzare le routine digitali tramite l'intelligenza generativa*
#link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C3.pdf")[https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C3.pdf]

=== Riferimenti informativi
- #link("https://sigma18unipd.github.io/documentiCompilati/2-RTB/documentidiprogetto/glossario.pdf")[*Glossario*]

- *Slide T07 - Qualità del prodotto*:
#link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T07.pdf")[https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T07.pdf]

- *Slide T08 - Qualità del processo*:
#link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T08.pdf")[https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T08.pdf]

#pagebreak()

= Qualità di processo
La qualità di processo è un aspetto fondamentale per garantire il successo del progetto software poiché assicura che i processi utilizzati siano efficaci, efficienti e conformi agli standard di qualità prefissati.\
Di seguito sono riportati gli obiettivi di qualità che il gruppo si impegna a raggiungere, suddivisi in tre categorie:_ processi primari_, _processi di supporto_ e _processi organizzativi_, come individuato dallo standard ISO/IEC 12207:1995.

== Processi primari
I processi primari comprendono attività di acquisizione, gestione operativa, manutenzione del software, fornitura e sviluppo. Verranno esaminati solo gli ultimi due, data la natura didattica del progetto.

=== Fornitura
Si intendono le attività e i compiti svolti dal fornitore, in accordo con l'azienda proponente nel stabilire i vincoli e requisiti del prodotto.
Con l'acronimo _MPC_ (Minimum Predictive Capability) si indica il valore minimo da raggiungere.

==== Earned Value (MPC-EV)
È il valore del lavoro completato fino a un dato momento rispetto al budget pianificato e si ottiene dal prodotto tra _BAC_ (Budget At Completion) e la percentuale di lavoro completato.

==== Planned Value (MPC-PV)
È il valore del lavoro pianificato da completare entro una determinata data.
Tale valore è ricavato dal prodotto tra _BAC_ e la percentuale di lavoro pianificato da completare entro la data prefissata.

==== Actual Cost (MPC-AC)
Indica l'effettivo costo sostenuto fino ad un determinato momento per il lavoro svolto.

==== Estimated At Completion (MPC-EAC)
La stima del costo totale del progetto, basata sulle condizioni attuali, è un valore ottenuto dal rapporto tra _BAC_ e _CPI_ (Cost Performance Index).

==== Estimated To Complete (MPC-ETC)
Stima i costi aggiuntivi necessari per completare il progetto.

==== Cost Variance (MPC-CV)
Misura la differenza tra il valore guadagnato (EV) e il costo effettivo sostenuto (AC) fino a un quel momento.

==== Schedule variance (MPC-SV)
Misura la differenza tra il valore guadagnato (EV) e il valore pianificato (PV) fino a un quel momento, è utile per identificare eventuali ritardi o anticipi rispetto alla pianificazione (valori negativi indicano ritardi).

==== Cost performance index (MPC-CPI)
Misura l’efficienza del costo per il lavoro svolto fino a un determinato momento, in base al valore ottenuto per ogni unità monetaria spesa.
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
  [MPC-CPI], [Cost performance index], [≥0], [1],
))

=== Sviluppo
Attività che ha lo scopo di descrivere le attività e i compiti necessari per creare e mantenere un sistema software, fondamentale per un prodotto finale che soddisfi i requisiti specificati nel contratto.

Di seguito sono riportate le relative metriche.

==== Requirements Stability Index (MPC-RSI)
Indica la percentuale di requisiti modificati rispetto al totale dei requisiti.\
Un valore alto indica che i requisiti sono stabili e non soggetti a modifiche frequenti.
==== Technical Debt Ratio (MPC-TD )
È il rapporto tra il tempo necessario per risolvere problemi tecnici e il tempo necessario per sviluppare nuove funzionalità.\
Un valore basso indica che il codice è ben strutturato e non presenta problemi tecnici.
\
\

#figure(kind: table, caption: [Valori accettabili e ottimi del processo di sviluppo], table(
  columns: (auto, 1fr, auto, auto),
  align: center,
  rows: auto,
  inset: 7pt,
  table.header([*Metrica*], [*Nome*], [*Valore Accettabile*], [*Valore Ottimo*]),
  [MPC-RSI], [Requirements Stability Index], [≥75%], [100%],
  [MPC-TD], [Technical Debt Ratio], [≤15%], [≤5%],
))

#pagebreak()
== Processi di supporto
I processi di supporto forniscono servizi e attività che assistono i processi primari.
Si tratta di documentazione, controllo qualità e verifica.

=== Documentazione
La documentazione permette di avere un tracciamento delle attività svolte.


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
È utile per valutare la qualità dei test e per garantire che il codice sia stato testato adeguatamente.\



==== Test superati in percentuale (MPC-TSP)
Indica la percentuale di test automatizzati o manuali che sono stati eseguiti con successo rispetto al totale dei test previsti.
Una percentuale alta indica che il sistema è stabile e che la maggior parte delle funzionalità funziona come previsto.

#figure(kind: table, caption: [Valori accettabili e ottimi del processo di verifica], table(
  columns: (auto, 1fr, auto, auto),
  align: center,
  rows: auto,
  inset: 7pt,
  table.header([*Metrica*], [*Nome*], [*Valore Accettabile*], [*Valore Ottimo*]),
  [MPC-CCO], [Code coverage], [≥85%], [100%],
  [MPC-TSP], [Test superati in percentuale], [100%], [100%],
))

=== Gestione della qualità

==== Satisfaction of Quality Metrics (MPC-SQM)
Indica la percentuale di metriche che soddisfano gli obiettivi minimi di qualità.\
Il valore è ottenuto dalla somma delle metriche di qualità soddisfatte in rapporto al numero totale di metriche di qualità.

#figure(kind: table, caption: [Valori accettabili e ottimi del processo di gestione della qualità], table(
  columns: (auto, 1fr, auto, auto),
  align: center,
  rows: auto,
  inset: 7pt,
  table.header([*Metrica*], [*Nome*], [*Valore Accettabile*], [*Valore Ottimo*]),
  [MPC-SQM], [Satisfaction of Quality Metrics], [≥80%], [100%],
))

== Processi organizzativi
I processi organizzativi riguardano la gestione e l’organizzazione del progetto come la gestione dei processi, il miglioramento e la formazione.

=== Efficienza temporale (MPC-ET)
Valuta l'efficienza con cui il tempo disponibile viene impiegato in attività produttive, ovvero quelle contribuiscono al raggiungimento degli obiettivi del progetto.

#figure(kind: table, caption: [Valori accettabili e ottimi dei processi organizzativi], table(
  columns: (auto, 1fr, auto, auto),
  align: center,
  rows: auto,
  inset: 7pt,
  table.header([*Metrica*], [*Nome*], [*Valore Accettabile*], [*Valore Ottimo*]),
  [MPC-ET], [Efficienza temporale ], [≤50%], [≤100],
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
  [MPD-ROP], [Requisiti facoltativi soddisfatti], [≥0%], [100%],
))

== Affidabilità
L'affidabilità misura la capacità del software di funzionare correttamente sotto specifiche condizioni.

=== Code coverage (MPD-CCO)
Indica la percentuale di codice eseguita durante i test.\ Un valore alto indica una migliore copertura del codice, suggerendo che il codice è stato testato approfonditamente e abbia una bassa probabilità di contenere errori.

=== Branch coverage (MPD-BC)
Indica la percentuale di rami decisionali del codice eseguiti durante i test.\
Utile per identificare scenari non testati.\
Un valore alto suggerisce che il codice è stato testato approfonditamente e che ha una bassa probabilità di contenere errori.

=== Statement coverage (MPD-SC)
Indica la percentuale di istruzioni eseguite durante i test.\ Un valore alto alto suggerisce un'analisi pù approfondita del codice e una bassa probabilità di contenere errori.
Il valore è il risultato del rapporto tra il numero di istruzioni eseguite e il numero totale di istruzioni nel codice, moltiplicato per 100.

=== Passed test cases percentage (MPD-PTCP)
Indica la percentuale di casi di test superati rispetto al totale dei test eseguiti.\
Un valore alto indica che il software soddisfa i requisiti funzionali e non funzionali previsti.

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
  [MPD-PTCP], [Passed test cases percentage], [≥70%], [100%],
  [MPD-FT], [Failure Tolerance ], [100%], [100%],
  [MPD-FF], [Failure Frequency ], [0], [0],
))

== Usabilità
L'usabilità indica la facilità con cui gli utenti possono utilizzare il software.

=== Tempo di apprendimento (MPD-TA)
Indica il tempo necessario per un utente per imparare ad utilizzare il software.\
Un valore basso indica che il prodotto è facile da usare e richiede poco tempo per essere appreso donando un'esperienza utente migliore.

=== Error Rate (MPD-ER)
Indica il numero di errori commessi dagli utenti durante l'interazione con il software.\
Un valore basso indica che il prodotto è facile da usare e che gli utenti riescono a completare le azioni richieste senza errori.

#figure(kind: table, caption: [Valori accettabili e ottimi dell'usabilità del prodotto], table(
  columns: (auto, 1fr, auto, auto),
  align: center,
  rows: auto,
  inset: 7pt,
  table.header([*Metrica*], [*Nome*], [*Valore Accettabile*], [*Valore Ottimo*]),
  [MPD-TA], [Tempo di apprendimento], [≤15 minuti], [≤5 minuti],
  [MPD-ER], [Error Rate ], [≤4 errori], [0 errori],
))

== Efficienza

=== Utilizzo risorse (MPD-UR)
Indica l'efficienza del sistema in termini di utilizzo delle risorse hardware, come CPU, memoria e altre
risorse di sistema.\
È necessario un uso efficiente delle risorse per garantire che il sistema funzioni in modo ottimale senza sovraccaricare le risorse disponibili.

=== Tempo di risposta #glossario("API") (MPD-TRA)
Indica il tempo medio di risposta delle API del sistema.\
Un valore basso indica che il sistema è in grado di rispondere rapidamente alle richieste degli utenti.

#figure(kind: table, caption: [Valori accettabili e ottimi dell'efficienza del prodotto], table(
  columns: (auto, 1fr, auto, auto),
  align: center,
  rows: auto,
  inset: 7pt,
  table.header([*Metrica*], [*Nome*], [*Valore Accettabile*], [*Valore Ottimo*]),
  [MPD-UR], [Utilizzo risorse], [≥70%], [100%],
  [MPD-TRA], [Tempo di risposta API ], [≤600 ms], [≤200 ms],
))


== Manutenibilità

=== Complessità ciclomatica (MPD-CC)
Indica la complessità del codice sorgente, si misura contando il numero di cammini indipendenti nel grafo di controllo del flusso.\ Un valore basso indica che il codice è semplice e facile da mantenere.

=== Code Smell (MPD-CS)
Indica la presenza di potenziali problemi di progettazione o codice che potrebbero richiedere manutenzione.\
Segnala parti di codice che potrebbero non essere ottimali e che potrebbero causare difficoltà in futuro, come un'architettura poco chiara o sezioni di codice ripetitive.\
Un valore basso indica che il codice è ben strutturato e non presenta problemi tecnici.

=== Coefficient of Coupling (MPD-COC)
Indica il grado di dipendenza tra i moduli o le componenti di un sistema.\
Un valore alto implica che i moduli sono strettamente interconnessi, rendendo difficile apportare modifiche a un modulo senza influenzare altri.

=== Tempio per risolvere i #glossario("bug") (MPD-TRB)
Indica il tempo medio necessario per risolvere un bug.\
Un valore basso indica che si è in grado di risolverli in maniera rapida ed efficiente.

#figure(kind: table, caption: [Valori accettabili e ottimi della manutenibilità del prodotto], table(
  columns: (auto, 1fr, auto, auto),
  align: center,
  rows: auto,
  inset: 7pt,
  table.header([*Metrica*], [*Nome*], [*Valore Accettabile*], [*Valore Ottimo*]),
  [MPD-CC], [Complessità ciclomatica], [≤15], [≤7],
  [MPD-CS], [Code Smell ], [≤10], [0],
  [MPD-COC], [Coefficient of Coupling ], [≤35%], [≤10%],
  [MPD-TRB], [Tempo per risolvere i bug ], [≤4 ore], [≤2 ore],
))

#pagebreak()

= Metodi di testing
La seguente sezione descrive le attività di testing effettuate per garantire la qualità del prodotto.

== Test di unità
I test di unità verificano il funzionamento corretto di componenti software più piccoli e indipendenti, sviluppati soprattutto nella fase di progettazione.

== Test di integrazione
I test di integrazione vengono eseguiti successivamente ai test di unità e verificano l'interazione tra più unità software per garantire una corretta integrazione e funzionamento del sistema.

== Test di sistema
I test di sistema verificano il funzionamento del sistema software nel suo complesso per garantire il soddisfacimento delle specifiche funzionali, prestazionali e di qualità concordate, presenti nel documento dell'analisi dei requisiti. //link

== Test di accettazione
I test di accettazione sono condotti per verificare che il sistema soddisfi i requisiti e le aspettative del contrattuali, motivo per cui sono condotti insieme al proponente.\
Il loro successo è fondamentale per garantire il rilascio definitivo del prodotto.

#pagebreak()

= Cruscotto di Valutazione
<cruscotto>
La seguente sezione riporta un'analisi dell'andamento delle metriche di qualità del prodotto e del processo, in modo da monitorare il progresso del progetto e verificare se gli obiettivi di qualità sono stati raggiunti.\

== Estimated at Completion (MPC-EAC)
#figure(image("../../assets/chart/EAC_chart.svg", width: 90%), caption: [
  Stima del costo totale nel tempo
])
=== RTB
Come si può notare dal grafico, il valore di *MPC-EAC* non supera il *5% del BAC*, indicato come _limite superiore_, quindi il progetto è in linea con le aspettative di budget.




#pagebreak()
== Planned Value (MPC-PV) & Earned Value (MPC-EV)
#figure(image("../../assets/chart/PV_EV_chart.svg", width: 90%), caption: [
  Stima dei valori EV e PV nel tempo
])
=== RTB
Dal grafico si può notare che il valore di *MPC-EV* è in linea con il valore *MPC-PV*, indicando che il progetto sta procedendo secondo la pianificazione.




#pagebreak()
== Actual Cost (MPC-AC), Estimated To Complete (MPC-ETC) & Estimated At Completion (MPC-EAC)
#figure(image("../../assets/chart/AC_ETC_EAC_chart.svg", width: 90%), caption: [
  Stima dei valori AC, ETC e EAC nel tempo
])
=== RTB
Il grafico mostra l'andamento dei valori di *MPC-AC*, *MPC-ETC* e *MPC-EAC* nel tempo.
Come si può notare, il valore di *MPC-AC* cresce costantemente, mentre il valore di *MPC-ETC* diminuisce progressivamente con l'avanzare degli sprint, indicando che il progetto sta procedendo correttamente.

#pagebreak()

== Cost Variance (MPC-CV) & Schedule Variance (MPC-SV)
#figure(image("../../assets/chart/CV_SV_chart.svg", width: 90%), caption: [
  Stima dei valori CV e SV nel tempo
])
=== RTB
Dal grafico si può notare che i valore di *MPC-CV* e *MPC-SV* sono sempre entro i limiti accettabili, indicati come _limite superiore_ e _limite inferiore_.
Si può notare che il valore di *MPC-SV* ha subito un picco negativo durante il sesto sprint causato dalla sessione di esami estiva che ha causato un rallentamento soprattutto nello sprint in questione.
Tuttavia, il valore è tornato in linea con le aspettative nel successivo sprint, indicando che il progetto sta procedendo secondo la pianificazione e che i costi sono sotto controllo.






#pagebreak()

== Cost Performance Index (MPC-CPI)
#figure(image("../../assets/chart/CPI_chart.svg", width: 90%), caption: [
  Stima dei valori CPI nel tempo
])
=== RTB
Il grafico mostra l'andamento del *MPC-CPI* nel tempo, si può notare che è sempre superiore a 0, indicando che il progetto sta procedendo correttamente dal punto di vista dei costi.\




#pagebreak()

== Requirements Stability Index (MPC-RSI)
#figure(image("../../assets/chart/RSI_chart.svg", width: 90%), caption: [
  Stima dei valori RSI nel tempo
])
=== RTB
Dal grafico si può notare che nei due sprint iniziali il valore di *MPC-RSI* è pari a 0, dato dal fatto che i requisiti sono stati definiti solo a partire dal terzo sprint.
Con l'avanzare del progetto, il valore cresce fino a raggiungere stabilità e valori accettabili, indicando che i requisiti sono stati stabiliti e non sono soggetti a modifiche frequenti.


#pagebreak()



== Correttezza ortografica (MPC-CO)
#figure(image("../../assets/chart/CO_chart.svg", width: 90%), caption: [
  Stima dei valori CO nel tempo
])
=== RTB
Si può notare che il gruppo si è sempre impegnato a correggere gli eventuali errori ortografici presenti inizialmente nei documenti redatti, per raggiungere un valore pari a 0.



#pagebreak()

== Satisfaction of Quality Metrics (MPC-SQM)
#figure(image("../../assets/chart/SQM_chart.svg", width: 90%), caption: [
  Stima dei valori SQM nel tempo
])
=== RTB
Dal grafico emerge che la percentuale di metriche soddisfatte cresce progressivamente con l'avanzare degli sprint.


#pagebreak()

== Efficienza temporale (MPC-ET)
#figure(image("../../assets/chart/ET_chart.svg", width: 90%), caption: [
  Stima dei valori ET nel tempo
])

=== RTB
Il grafico mostra l'andamento dell'efficienza temporale del gruppo, che cresce progressivamente con l'avanzare degli sprint.
Nei primi sprint si ha un'efficienza temporale bassa, dovuta all'inesperienza del gruppo e alla mancanza di conoscenze sulle tecnologie utilizzate.
