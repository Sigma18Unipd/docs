#import "../../templates/template.typ": *

#show: content => verbale(
  titoloDocumento: "Piano di progetto",
  abstract: "Documento riepilogativo delle attività concluse e in corso di svolgimento dal gruppo Sigma18.",
  responsabili: ("Matteo Marangon", "Pietro Crotti", "Aleena Mathew"),
  redattori: ("Carmelo Russello", "Mirco Borella", "Marco Egidi", "Matteo Marangon", "Aleena Mathew"),
  verificatori: ("Carmelo Russello", "Mirco Borella", "Marco Egidi", "Matteo Marangon", "Pietro Crotti", "Alessandro Bernardello"),
  tipo: "Documento Esterno",
  destinatari: ("Prof. Tullio Vardanega", "Prof. Riccardo Cardin", "Var Group S.P.A", "Sigma18"),
  versioneAttuale: "1.0.1",
  versioni: (
    "1.0.1",
    "2025/07/09",
    "Aleena Mathew",
    "Mirco Borella",
    "Correzione di una data ",
    "1.0.0",
    "2025/07/08",
    "Matteo Marangon",
    "Mirco Borella",
    "Aggiornamento retrospettiva settimo sprint e inizio ottavo sprint",
    "0.7.0",
    "2025/06/26",
    "Aleena Mathew",
    "Carmelo Russello",
    "Aggiornamento retrospettiva sesto sprint e inizio settimo sprint",
    "0.6.0",
    "2025/06/11",
    "Matteo Marangon",
    "Alessandro Bernardello",
    "Aggiornamento retrospettiva quinto sprint e inizio sesto sprint",
    "0.5.0",
    "2025/05/27",
    "Marco Egidi",
    "Pietro Crotti",
    "Aggiornamento retrospettiva quarto sprint e inizio quinto sprint",
    "0.4.0",
    "2025/05/14",
    "Mirco Borella",
    "Carmelo Russello",
    "Aggiornamento retrospettiva terzo sprint e inizio quarto sprint",
    "0.3.0",
    "2025/04/29",
    "Mirco Borella",
    "Matteo Marangon",
    "Aggiornamento retrospettiva secondo sprint e inizio terzo sprint",
    "0.2.0",
    "2025/04/16",
    "Mirco Borella",
    "Marco Egidi",
    "Aggiornamento retrospettiva primo sprint e inizio secondo sprint",
    "0.1.0",
    "2025/04/07",
    "Carmelo Russello",
    "Mirco Borella",
    "Stesura iniziale documento",
  ),
  content: content,
)


= Introduzione
== Scopo del documento
Il presente documento ha l'obiettivo di definire e tenere traccia di tutte le attività eseguite e pianificate dal team durante lo sviluppo del progetto.

Il piano di progetto si concentra in particolare su i seguenti aspetti:

- *Analisi dei rischi*
- *Modello di sviluppo*
- *Pianificazione*

È importante sottolineare che il piano di progetto nasce come documento in continua evoluzione il quale potrà definirsi completo soltanto al termine del progetto. Il team si impegna ad aggiornarlo regolarmente, in modo da avere una visione chiara e attendibile dell'andamento del progetto.

== Scopo del prodotto
Il prodotto consiste in un servizio che permette agli utenti di generare automazioni / #glossario("routine") avvalendosi dell'intelligenza artificiale generativa.

Nello specifico, l'utente deve essere in grado di descrivere l'automazione da ottenere in linguaggio naturale. L'applicativo deve interpretare la descrizione fornita e generare un flusso di lavoro sfruttando le #glossario("API") esposte da #glossario("agenti")

Il flusso di lavoro creato verrá quindi visualizzato attraverso un #glossario("client") che permetterà all'utente di modificare l'automazione creata, tramite un interfaccia #glossario("drag & drop").

Nell'interfaccia, i *blocchi* rappresentano le azioni effettuabili, mentre gli *archi* che li collegano tra loro corrispondono a relazioni tra i singoli componenti dell'automazione.

== Glossario
Per assicurare la massima chiarezza e prevenire qualsiasi possibile malinteso legato all'interpretazione dei termini utilizzati nei documenti, è stato predisposto un glossario dedicato. Questo strumento raccoglie e definisce in maniera precisa tutti i termini che potrebbero risultare ambigui, tecnici o comunque soggetti a interpretazioni diverse.\
All'interno dei documenti, ogni termine presente nel Glossario sarà opportunamente segnalato tramite la seguente notazione: #glossario("parola"), in modo da permettere al lettore di identificarne facilmente il significato esatto facendo riferimento al glossario stesso.

== Riferimenti
=== Riferimenti normativi

- #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C3.pdf")[Capitolato C3: Automatizzare le routine digitali tramite l'intelligenza generativa] [ultimo accesso il: 09/07/2025]

- #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf")[Regolamento progetto didattico] [ultimo accesso il: 09/07/2025]

- #link("https://www.iso.org/standard/65694.html")[ISO/IEC 31000:2018] [ultimo accesso il: 09/07/2025]

=== Riferimenti informativi

- #link("https://sigma18unipd.github.io/documentiCompilati/2-RTB/documentidiprogetto/glossario.pdf")[Glossario] [versione 0.11.0]

#pagebreak()

= Analisi dei rischi

Una parte fondamentale per la stesura del piano di progetto è l'*analisi dei rischi*.\
È comune incontrare problemi che possono rallentare l'andamento del progetto, è quindi necessario effettuare una minuziosa analisi dei rischi in modo tale da rendere lo sviluppo il più fluido possibile.\
Il team ha deciso di seguire lo standard internazionale _*ISO/IEC 31000:2018*_ per la gestione del rischio.
Tale processo si divide in cinque fasi:

+ *Identificazione del rischio:*
  La fase dove si identificano i possibili rischi impattanti rispetto a requisiti, fattori ed obiettivi.

+ *Analisi del rischio:*
  Questa fase prevede un'analisi approfondita di tutti i rischi e l'individuazione delle scelte più appropriate da intraprendere, al fine di mitigarne l'impatto fornendo una base per le decisioni successive.

+ *Valutazione del rischio:*
  Fase in cui viene effettuata una prioritarizzazione dei rischi, decidendo quali sono i più critici da affrontare in base alla loro probabilità e impatto.

+ *Trattamento del rischio:*
  In questa fase si definiscono le strategie e le azioni per prevenire, mitigare o affrontare i rischi valutati nella fase precedente, intervenendo in modo concreto per garantire il regolare andamento del progetto.

+ *Monitoraggio e Revisione del rischio:*
  Durante questa fase si controlla regolarmente l'evoluzione dei rischi già individuati e si valutano i risultati delle strategie adottate, apportando eventuali cambiamenti in risposta a nuovi rischi.

Il seguente è l'approccio scelto per l'identificazione dei rischi:

- *Codice*: Codice identificativo del rischio nel formato *R + [Tipo di Rischio] + [Indice]*

  Il *Tipo di Rischio* si divide in due categorie:

  - Rischi legati alla tecnologia utilizzata (*T*).
  - Rischi legati all'organizzazione (*O*).

  Mentre l'*Indice* è un numero incrementale che serve ad identificare univocamente i vari rischi per ogni *Tipo di Rischio*.

- *Descrizione*: Una breve descrizione del rischio.

- *Probabilità*: La probabilità che un rischio verificarsi rallentando lo sviluppo del progetto, può essere [*Bassa*] [*Media*] [*Alta*].

- *Impatto*: Il peso dell'impatto che un rischio potrebbe avere sullo sviluppo del progetto, può essere [*Basso*] [*Medio*] [*Alto*].

- *Strategie di attenuazione*: Le strategie da attuare per diminuire l'impatto del rischio nel caso esso si verifichi.

== Rischi legati alla tecnologia utilizzata

=== Rischio legato all'uso di nuove tecnologie
#table(
  columns: (1fr, 2fr),
  rows: auto,
  inset: 9pt,
  [*Codice*], [*RT1*],
  [*Descrizione*],
  [L'utilizzo di tecnologie con cui i membri del gruppo non hanno ancora familiarità potrebbe causare rallentamenti nelle varie fasi dello sviluppo.],

  [*Probabilità*], [Alta],
  [*Impatto*], [Medio],
  [*Strategie di attenuazione*],
  [I membri del gruppo prenderanno del tempo per prendere familiarità e fare esperienza con le tecnologie che verranno utilizzate nello sviluppo del progetto, in modo tale da essere adeguatamente preparati e supportarsi a vicenda. Incontri di formazione con l'azienda proponente sulle tecnologie richieste.],
)

=== Rischio legato alla mancanza di documentazione
#table(
  columns: (1fr, 2fr),
  rows: auto,
  inset: 9pt,
  [*Codice*], [*RT2*],
  [*Descrizione*],
  [Le tecnologie che il gruppo utilizzerà potrebbero avere una documentazione troppo complessa, scarsa o difficilmente reperibile che potrebbe causare rallentamenti al progetto a causa dell'aumento del tempo di apprendimento necessario.],

  [*Probabilità*], [Media],
  [*Impatto*], [Alto],
  [*Strategie di attenuazione*],
  [Organizzare delle riunioni di formazione con l'azienda proponente che permettono di prevenire in parte il rischio di non riuscire a reperire la documentazione necessaria per comprendere le tecnologie utilizzate],
)

#pagebreak()

== Rischi legati all'organizzazione
=== Rischio legato a impegni personali
#table(
  columns: (1fr, 2fr),
  rows: auto,
  inset: 9pt,
  [*Codice*], [*RO1*],
  [*Descrizione*],
  [Ogni membro del gruppo potrebbe incorrere in imprevisti personali che lo che lo rendano temporaneamente indisponibile, impedendogli di rispettare le ore di lavoro a lui assegnate. Questo potrebbe rallentare l'intero processo di sviluppo e aumentare il carico di lavoro sugli altri membri del gruppo.],

  [*Probabilità*], [Media],
  [*Impatto*], [Medio],
  [*Strategie di attenuazione*],
  [Il rischio può essere mitigato tramite una accurata pianificazione che renda meno probabile il contrasto tra impegni personali e ore di lavoro assegnate],
)

=== Rischio legato alla mancanza di comunicazione interna
#table(
  columns: (1fr, 2fr),
  rows: auto,
  inset: 9pt,
  [*Codice*], [*RO2*],
  [*Descrizione*],
  [Una comunicazione interna scarsa o assente, dovuta a una organizzazione inadeguata, potrebbe far sì che alcuni membri del gruppo non vengano a conoscenza di cambiamenti o imprevisti, compromettendo così il progresso del progetto.],

  [*Probabilità*], [Bassa],
  [*Impatto*], [Alto],
  [*Strategie di attenuazione*],
  [Stabilire canali di comunicazione condivisi, in cui tutti i membri possano fornire aggiornamenti sul proprio lavoro, e programmare riunioni frequenti per mantenere il gruppo costantemente informato.],
)

=== Rischio legato alla mancanza di comunicazione esterna <RO3>
#table(
  columns: (1fr, 2fr),
  rows: auto,
  inset: 9pt,
  [*Codice*], [*RO3*],
  [*Descrizione*],
  [Una comunicazione esterna inefficace per impossibilità di risposta o mancanza di precisione di comunicazione può portare ad aumenti nei tempi complessivi dell'andamento del progetto],

  [*Probabilità*], [Media],
  [*Impatto*], [Alto],
  [*Strategie di attenuazione*],
  [Stabilire canali di comunicazione condivisi asincroni e con mezzi / strumenti più efficaci. Stabilire incontri periodici di confronto pianificati con anticipo.],
)


=== Rischio legato alla concomitanza alle sessioni d'esame <RO4>
#table(
  columns: (1fr, 2fr),
  rows: auto,
  inset: 9pt,
  [*Codice*], [*RO4*],
  [*Descrizione*],
  [La concomitanza delle sessioni d'esame con le attività di progetto può causare ritardi nello sviluppo; i membri del gruppo potrebbero essere temporaneamente non disponibili in quanto impegnati con lo studio e la preparazione degli esami, rischiando di non raggiungere il monte ore ad essi assegnato.],

  [*Probabilità*], [Media],
  [*Impatto*], [Alto],
  [*Strategie di attenuazione*],
  [Pianificare con attenzione e cautela il periodo di sessione di esami, confidando nella collaborazione di ogni membro del gruppo, in modo da prevenire rallentamenti.],
)

#pagebreak()

= Modello di sviluppo

Il modello di sviluppo scelto dal team è il modello #glossario("Agile"), per la sua flessibilità rispetto ai modelli tradizionali. L'approccio è focalizzato sulla consegna al cliente, in tempi brevi e con frequenza regolare, e prevede il coinvolgimento diretto e continuo del cliente durante tutto il processo di sviluppo.

Una pratica essenziale da seguire con l'uso del modello _Agile_ è la suddivisione del progetto in intervalli temporali precisi e concisi, chiamati #glossario("Sprint"), entro i quali dovranno essere completate le attività stabilite durante lo #glossario("Sprint Planning")

== Vantaggi del modello

- Facilita la comunicazione e la collaborazione del team poiche tutti lavorano a stretto contatto e comunicano quotidianamente sull'andamento dello sviluppo in modo trasparente.

- Permette una valutazione continua ed efficace dei rischi grazie alla natura iterativa del modello, che consente di adattarsi rapidamente ai cambiamenti e di affrontare i rischi in modo graduale.

- Migliora il coinvolgimento e la soddisfazione del cliente, che può fornire feedback sullo stato del prodotto, il quale può essere poi modificato in corso d'opera grazie alla flessibilità del modello.

= Pianificazione

Avendo scelto il modello _Agile_ le attività di lavoro verranno tramite la suddivisione in _sprint_, un breve periodo di tempo nel quale il team lavora per completare una predeterminata quantità di lavoro per raggiungere gli obiettivi prefissati.

Il gruppo, in accordo con l'azienda proponente, ha stabilito la durata di ogni _sprint_ pari a *2 settimane*.

== Ruolo del Team
- *Pianificazione condivisa*: all'inizio di ogni _sprint_, il gruppo stabilisce congiuntamente gli obiettivi.

- *Rotazione dei ruoli*: per garantire equità e crescita trasversale tra i membri.

- *Monitoraggio continuo*: uso di #glossario("Github") per tracciare l'avanzamento e segnalare le attività (_*issue*_).

- *Interazione con l'azienda*: confronto regolare per mantenere l'allineamento tra team e committenza.

Per approfondimenti sull'impegno dei membri e la stima dei costi, si fa riferimento al documento:
#link("https://sigma18unipd.github.io/documentiCompilati/1-candidatura/impegnicosti_1.0.1.pdf")[*Preventivo dei costi e dichiarazione impegni*] [versione 1.0.1].

== Struttura Operativa degli Sprint

Gli _sprint_ verranno strutturati nel seguente modo:

- *Data di inizio*: Data di inizio dello _sprint_.

- *Data di fine*: Data di fine dello _sprint_.

- *Rischi attesi*: I rischi che potrebbero verificarsi nel corso dello _sprint_.

- *Attività da svolgere*: Le attività previste per ogni _sprint_, allineate agli obiettivi definiti durante la riunione iniziale.

- *Preventivo*: Una tabella che riporta il preventivo delle ore da svolgere da ciascun membro, suddiviso per ruolo.

- *Consuntivo*: Una tabella che mostra il consuntivo delle ore svolte da ciascun membro, suddiviso per ruolo, insieme ad una tabella dei costi e delle ore assegnate a ciascun ruolo. Necessario per una visione più ampia sul rendimento del gruppo durante l'analisi conclusiva.

- *Analisi retrospettiva*: Un resoconto di cosa è stato portato a termine durante lo _sprint_, delle cose da migliorare e dei problemi riscontrati.

== Fasi Principali del Progetto

Il progetto verrà suddiviso nelle seguenti fasi:

+ *RTB (_Requirements and Technology Baseline_)*: Determinazione dei requisiti e delle tecnologie fondamentali necessarie per lo sviluppo del progetto. Sviluppo di #glossario("PoC").

+ *PB (_Product Baseline_)*: Realizzazione del prodotto in conformità ai requisiti stabiliti. Sviluppo del #glossario("MVP").













#pagebreak()
== RTB

=== Sprint 1

==== Dettagli

*Data di inizio*: 28/03/2025\
*Data di fine*: 15/04/2025 \

*Rischi attesi*: RT2, RO1

*Attività da svolgere*: \
Il gruppo s'impegna a:
- Contattare l'azienda proponente per organizzare l'incontro di #glossario("Design Thinking") come richiesto in fase di candidatura al capitolato.
- Iniziare la stesura dei seguenti documenti:
  - Glossario dei termini non noti:
  - Piano di progetto (questo documento)
  - Piano di qualifica.
- Ricercare le tecnologie richieste del proponente al fine dell'incontro con l'azienda.

==== *Preventivo orario*:
#table(
  columns: (3fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
  align: center,
  rows: auto,
  inset: 6pt,
  table.header([], [*Amm*], [*Ana*], [*Prg*], [*Pro*], [*Res*], [*Ver*], [*Totale*]),
  [Alessandro Bernardello], [0], [3], [0], [0], [0], [3], [*6*],
  [Mirco Borella], [0], [3], [0], [1], [0], [2], [*6*],
  [Pietro Crotti], [2], [0], [0], [0], [0], [2], [*4*],
  [Marco Egidi], [2], [0], [0], [0], [2], [1], [*5*],
  [Matteo Marangon], [2], [0], [0], [0], [4], [0], [*6*],
  [Aleena Mathew], [0], [3], [0], [0], [0], [2], [*5*],
  [Carmelo Russello], [0], [3], [0], [2], [0], [0], [*5*],
  [*Totali*], [*6*], [*12*], [*0*], [*3*], [*6*], [*10*], [*37*],
)

==== *Consuntivo orario*:
#table(
  columns: (3fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
  align: center,
  rows: auto,
  inset: 6pt,
  table.header([], [*Amm*], [*Ana*], [*Prg*], [*Pro*], [*Res*], [*Ver*], [*Totale*]),
  [Alessandro Bernardello], [0], [3], [0], [0], [0], [3], [*6*],
  [Mirco Borella], [0], [3], [0], [0.5 (-0.5)], [0], [2], [*5.5*],
  [Pietro Crotti], [2], [0], [0], [0], [0], [2], [*4*],
  [Marco Egidi], [2], [0], [0], [0], [2], [1], [*5*],
  [Matteo Marangon], [2], [0], [0], [0], [4], [0], [*6*],
  [Aleena Mathew], [0], [3], [0], [0], [0], [2], [*5*],
  [Carmelo Russello], [0], [4 (+1)], [0], [1 (-1)], [0], [0], [*5*],
  [*Totali*], [*6*], [*13*], [*0*], [*1.5*], [*6*], [*10*], [*36.5*],
)

==== *Consuntivo costo*:
#table(
  columns: (1fr, 1fr, 1fr, 1fr),
  rows: auto,
  inset: 6pt,
  table.header([*Ruolo*], [*Ore per ruolo*], [*Costo orario ruolo*], [*Costo figura*]),
  [Amministratore], [6], [€20], [€120.00],
  [Analista], [13], [€25], [€325.00],
  [Progettista], [0], [€25], [€0.00],
  [Programmatore], [1.5], [€15], [€22.50],
  [Responsabile], [6], [€30], [€180.00],
  [Verificatore], [10], [€15], [€150.00],
  [*Totali*], [*36.5*], [], [*€797.50*],
)

==== *Analisi retrospettiva*: \
_Sigma18_ dichiara di aver portato a termine tutte le attività prestabilite e che il primo sprint è stato proficuo all'avanzamento del capitolato.
Nello specifico è stato steso il glossario e iniziata la stesura dei piani di progetto e qualifica.

Il gruppo ha organizzato e partecipato all'incontro di _Design Thinking_ con l'azienda proponente lunedì 14 Aprile che ha steso le basi per organizzare i lavori successivi.

Una difficoltà emersa è stata la comunicazione con l'azienda che a causa di soggetti temporaneamente non reperibili ha rallentato il progresso. Questo rischio identificabile nel codice #link(<RO3>)[RO3] non era stato preventivato in anticipo causando rallentamenti non previsti. _Sigma18_ si è attrezzato con l'azienda proponente _Var Group S.p.a_ per l'uso asincrono della piattaforma di messaggistica #glossario("Slack") in modo tale da cercare di garantire comunicazioni piú efficaci e con figure multiple così da non dipendere dalle disponibilità di tempo di un solo soggetto.















#pagebreak()
=== Sprint 2

==== Dettagli

*Data di inizio*: 16/04/2025 \
*Data di fine*: 29/04/2025 \

*Rischi attesi*: RT1, RO1, RO3

*Attività da svolgere*: \
Il gruppo si impegna a:
- Redigere il documento di analisi dei requisiti
- Stilare le norme di progetto
- Stilare il piano di qualifica
- Verbalizzare l'incontro avvenuto con l'azienda proponente in data 14 Aprile 2025
- Verbalizzare l'incontro interno avvenuto in data 16 Aprile 2025
- Integrare il glossario con i nuovi termini
- Creazione di uno #glossario("script") Python per la verifica dei termini del glossario
- Studio delle tecnologie proposte

==== *Preventivo orario*:
#table(
  columns: (3fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
  align: center,
  rows: auto,
  inset: 6pt,
  table.header([], [*Amm*], [*Ana*], [*Prg*], [*Pro*], [*Res*], [*Ver*], [*Totale*]),
  [Alessandro Bernardello], [0], [2], [1], [2], [0], [3], [*8*],
  [Mirco Borella], [0], [3], [1], [2], [2], [0], [*8*],
  [Pietro Crotti], [0], [0], [0], [0], [5], [3], [*8*],
  [Marco Egidi], [2], [2], [1], [0], [0], [3], [*8*],
  [Matteo Marangon], [2], [3], [0], [0], [0], [3], [*8*],
  [Aleena Mathew], [2], [3], [0], [0], [0], [3], [*8*],
  [Carmelo Russello], [2], [0], [0], [2], [0], [3], [*7*],
  [*Totali*], [*8*], [*13*], [*3*], [*6*], [*7*], [*18*], [*55*],
)

==== *Consuntivo orario*:
#table(
  columns: (3fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
  align: center,
  rows: auto,
  inset: 6pt,
  table.header([], [*Amm*], [*Ana*], [*Prg*], [*Pro*], [*Res*], [*Ver*], [*Totale*]),
  [Alessandro Bernardello], [0], [0 (-2)], [1], [5 (+3)], [0], [2 (-1)], [*8*],
  [Mirco Borella], [0], [3], [1], [0 (-2)], [3 (+1)], [0], [*7*],
  [Pietro Crotti], [0], [0], [0], [0], [5], [3], [*8*],
  [Marco Egidi], [2], [2], [1], [0], [0], [3], [*8*],
  [Matteo Marangon], [2], [3], [0], [0], [0], [2 (-1)], [*7*],
  [Aleena Mathew], [2], [3], [0], [0], [0], [2 (-1)], [*7*],
  [Carmelo Russello], [2], [1 (+1)], [0], [2], [0], [3], [*8*],
  [*Totali*], [*8*], [*12*], [*3*], [*7*], [*8*], [*15*], [*53*],
)

==== *Consuntivo costo*:
#table(
  columns: (1fr, 1fr, 1fr, 1fr),
  rows: auto,
  inset: 6pt,
  table.header([*Ruolo*], [*Ore per ruolo*], [*Costo orario ruolo*], [*Costo figura*]),
  [Amministratore], [8], [€20], [€160.00],
  [Analista], [12], [€25], [€300.00],
  [Progettista], [3], [€25], [€75.00],
  [Programmatore], [7], [€15], [€105.00],
  [Responsabile], [8], [€30], [€240.00],
  [Verificatore], [15], [€15], [€225.00],
  [*Totali*], [*53*], [], [*€1105.00*],
)

==== *Analisi retrospettiva*: \
_Sigma18_ dichiara che il secondo sprint è stato proficuo all'avanzamento del capitolato.
Nello specifico è stato completato lo _script_ di verifica dei termini del glossario e il verbale interno relativo all'incontro interno in data 16 Aprile 2025.

La redazione e la verifica dei documenti di analisi dei requisiti, norme di progetto e piano di qualifica è ancora in corso.

Il gruppo ha organizzato con l'azienda proponente due incontri di formazione sulle tecnologie richieste, il primo in data 06 Maggio 2025 e il secondo in data 08 Maggio 2025.

Continua la difficoltà emersa durante il primo sprint, ossia le difficoltà di comunicazione con l'azienda. In questo caso, il verbale esterno relativo all'incontro di _Design Thinking_ in data 14 Aprile 2025 non è stato ancora firmato da parte dell'azienda proponente a causa della mancata approvazione dei #glossario("wireframe") redatti durante lo sprint.
















#pagebreak()
=== Sprint 3

==== Dettagli

*Data di inizio*: 30/04/2025 \
*Data di fine*: 13/05/2025 \

*Rischi attesi*: RT1, RO1, RO3

*Attività da svolgere*: \
Il gruppo si impegna a:
- Redigere il documento di analisi dei requisiti
- Stilare le norme di progetto
- Stilare il piano di qualifica
- Verbalizzare l'incontro avvenuto con l'azienda proponente in data 14 Aprile 2025
- Verbalizzare l'incontro interno avvenuto in data 29 Aprile 2025
- Integrare il glossario con i nuovi termini
- Studio delle tecnologie proposte

==== *Preventivo orario*:
#table(
  columns: (3fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
  align: center,
  rows: auto,
  inset: 6pt,
  table.header([], [*Amm*], [*Ana*], [*Prg*], [*Pro*], [*Res*], [*Ver*], [*Totale*]),
  [Alessandro Bernardello], [3], [3], [0], [0], [0], [2], [*8*],
  [Mirco Borella], [3], [3], [0], [0], [0], [2], [*8*],
  [Pietro Crotti], [0], [3], [0], [0], [0], [5], [*8*],
  [Marco Egidi], [0], [3], [0], [0], [0], [5], [*8*],
  [Matteo Marangon], [0], [3], [0], [0], [0], [5], [*8*],
  [Aleena Mathew], [0], [1], [0], [0], [5], [2], [*8*],
  [Carmelo Russello], [0], [3], [0], [0], [0], [5], [*8*],
  [*Totali*], [*6*], [*19*], [*0*], [*0*], [*5*], [*26*], [*56*],
)

==== *Consuntivo orario*:
#table(
  columns: (3fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
  align: center,
  rows: auto,
  inset: 6pt,
  table.header([], [*Amm*], [*Ana*], [*Prg*], [*Pro*], [*Res*], [*Ver*], [*Totale*]),
  [Alessandro Bernardello], [3], [1 (-2)], [0], [2 (+2)], [0], [2], [*8*],
  [Mirco Borella], [3], [3], [0], [0], [0], [2], [*8*],
  [Pietro Crotti], [0], [3], [0], [0], [0], [5], [*8*],
  [Marco Egidi], [0], [3], [0], [0], [0], [5], [*8*],
  [Matteo Marangon], [0], [3], [0], [0], [0], [5], [*8*],
  [Aleena Mathew], [0], [1], [0], [0], [5], [2], [*8*],
  [Carmelo Russello], [0], [3], [0], [0], [0], [5], [*8*],
  [*Totali*], [*6*], [*17*], [*0*], [*2*], [*5*], [*26*], [*56*],
)

==== *Consuntivo costo*:
#table(
  columns: (1fr, 1fr, 1fr, 1fr),
  rows: auto,
  inset: 6pt,
  table.header([*Ruolo*], [*Ore per ruolo*], [*Costo orario ruolo*], [*Costo figura*]),
  [Amministratore], [6], [€20], [€120.00],
  [Analista], [17], [€25], [€425.00],
  [Progettista], [0], [€25], [€0.00],
  [Programmatore], [2], [€15], [€30.00],
  [Responsabile], [5], [€30], [€150.00],
  [Verificatore], [26], [€15], [€390.00],
  [*Totali*], [*56*], [], [*€1115.00*],
)

==== *Analisi retrospettiva*: \
_Sigma18_ dichiara che il terzo sprint è stato proficuo all'avanzamento del capitolato.
Nello specifico è stato completato il documento di *Analisi dei requisiti*, è stato fatto validare il verbale esterno relativo all'incontro di _Design Thinking_ avvenuto in data 14 Aprile 2025 dall'azienda proponente con il conseguente aggiornamento dei wireframe come richiesto. Sono state effettuate delle correzioni sulle automazioni del repository a fini migliorativi.

La verifica dei documenti di analisi dei requisiti, norme di progetto e piano di qualifica è ancora in corso.

Il gruppo ha partecipato a 3 incontri per un totale di 12 ore con l'azienda proponente riguardanti i seguenti argomenti:
- #glossario("AWS") e i suoi prodotti;
- #glossario("Backend") con #glossario("Nest.JS");
- #glossario("Frontend") con #glossario("React") e #glossario("Shadcn").

Sono stati organizzati altri 2 incontri di formazione sulle tecnologie di #glossario("Gen AI") tecnologie richieste, il primo in data 19 Maggio 2025 e il secondo in data 20 Maggio 2025 per un totale di 6 ore.

Non sono emerse difficoltà ai fini dell'avanzamento del lavoro durante lo svolgimento di questo sprint.











#pagebreak()
=== Sprint 4

==== Dettagli

*Data di inizio*: 13/05/2025 \
*Data di fine*: 26/05/2025 \

*Rischi attesi*: RT1, RT2, RO1

*Attività da svolgere*: \
Il gruppo si impegna a:
- Verificare il documento di analisi dei requisiti
- Completare e verificare le norme di progetto
- Completare e verificare il piano di qualifica
- Integrare il glossario con i nuovi termini
- Studio delle tecnologie proposte
- Inizio del _Poc (Proof of Concept)_

==== *Preventivo orario*:
#table(
  columns: (3fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
  align: center,
  rows: auto,
  inset: 6pt,
  table.header([], [*Amm*], [*Ana*], [*Prg*], [*Pro*], [*Res*], [*Ver*], [*Totale*]),
  [Alessandro Bernardello], [0], [0], [4], [3], [0], [1], [*8*],
  [Mirco Borella], [0], [3], [0], [2], [0], [3], [*8*],
  [Pietro Crotti], [2], [0], [0], [0], [5], [1], [*8*],
  [Marco Egidi], [0], [0], [3], [4], [0], [1], [*8*],
  [Matteo Marangon], [0], [0], [3], [4], [0], [1], [*8*],
  [Aleena Mathew], [1], [3], [2], [1], [0], [1], [*8*],
  [Carmelo Russello], [2], [0], [2], [1], [0], [3], [*8*],
  [*Totali*], [*5*], [*6*], [*14*], [*15*], [*5*], [*11*], [*56*],
)


==== *Consuntivo orario*:
#table(
  columns: (3fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
  align: center,
  rows: auto,
  inset: 6pt,
  table.header([], [*Amm*], [*Ana*], [*Prg*], [*Pro*], [*Res*], [*Ver*], [*Totale*]),
  [Alessandro Bernardello], [0], [0], [4], [3], [0], [1], [*8*],
  [Mirco Borella], [0], [3], [0], [4 (+2)], [0], [1 (-2)], [*8*],
  [Pietro Crotti], [2], [0], [0], [0], [5], [1], [*8*],
  [Marco Egidi], [0], [0], [3], [4], [0], [1], [*8*],
  [Matteo Marangon], [0], [0], [3], [4], [0], [1], [*8*],
  [Aleena Mathew], [1], [3], [2], [1], [0], [1], [*8*],
  [Carmelo Russello], [2], [0], [2], [1], [0], [3], [*8*],
  [*Totali*], [*5*], [*6*], [*14*], [*17*], [*5*], [*9*], [*56*],
)

==== *Consuntivo costo*:
#table(
  columns: (1fr, 1fr, 1fr, 1fr),
  rows: auto,
  inset: 6pt,
  table.header([*Ruolo*], [*Ore per ruolo*], [*Costo orario ruolo*], [*Costo figura*]),
  [Amministratore], [5], [€20], [€100.00],
  [Analista], [6], [€25], [€150.00],
  [Progettista], [14], [€25], [€350.00],
  [Programmatore], [17], [€15], [€255.00],
  [Responsabile], [5], [€30], [€150.00],
  [Verificatore], [9], [€15], [€135.00],
  [*Totali*], [*56*], [], [*€1140.00*],
)

==== *Analisi retrospettiva*: \
_Sigma18_ dichiara che il quarto sprint è stato proficuo all'avanzamento del capitolato.

Nello specifico è stato validato il documento di *Analisi dei Requisiti*.
La validazione dei documenti "norme di progetto" e "piano di qualifica" è ancora in corso.

Il gruppo ha organizzato ed effettuato una riunione interna in data 23 Maggio 2025 a fini di sincronizzazione delle attività tra i membri stessi, per discutere l'andamento del capitolato e per confermare la validazione del documento di analisi dei requisiti.

Il gruppo ha inoltre iniziato lo sviluppo del _PoC_, nello specifico sono state create il repository in modalità _monorepo_ (ovvero sorgenti _frontend_ e _backend_ unificati in uno stesso _repository_).

Sono state codificate le seguenti funzionalità lato _frontend_:

- Sviluppo e inizializzazione del codice _boilerplate_ per permettere il funzionamento delle tecnologie scelte;

- Creazione della pagina di _login_;

- Stesura della pagina di registrazione;

- Inizio dello sviluppo della pagina di modifica di un flusso.

Lato _backend_ sono state sviluppate le seguenti funzionalità:

- Sviluppo e inizializzazione del codice _boilerplate_ per permettere il funzionamento delle tecnologie scelte;

- Creazione del _compose_ Docker e del _Dockerfile_ per facilitare lo sviluppo.

Sono state riscontrate difficoltà catalogabili nei rischi RT1 e RT2.
Ai fini di mitigare quanto riscontrato, il gruppo ha deciso di continuare a studiare le tecnologie scelte e di contattare l'azienda proponente in caso di necessità.











#pagebreak()
=== Sprint 5

==== Dettagli

*Data di inizio*: 27/05/2025 \
*Data di fine*: 09/06/2025 \

*Rischi attesi*: RT1, RT2, RO1, RO2, RO4

*Attività da svolgere*: \
Il gruppo si impegna a:
- Verificare i documenti "norme di progetto" e "piano di qualifica"
- Integrare il glossario con i nuovi termini
- Studio delle tecnologie proposte
- Sviluppo del _frontend_ del _Poc (Proof of Concept)_
- Sviluppo del _backend_ del _Poc (Proof of Concept)_

==== *Preventivo orario*:
#table(
  columns: (3fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
  align: center,
  rows: auto,
  inset: 6pt,
  table.header([], [*Amm*], [*Ana*], [*Prg*], [*Pro*], [*Res*], [*Ver*], [*Totale*]),
  [Alessandro Bernardello], [3], [0], [2], [2], [0], [2], [*9*],
  [Mirco Borella], [0], [0], [2], [5], [0], [2], [*9*],
  [Pietro Crotti], [0], [0], [2], [5], [0], [2], [*9*],
  [Marco Egidi], [3], [0], [4], [3], [0], [0], [*10*],
  [Matteo Marangon], [0], [1], [3], [0], [4], [2], [*10*],
  [Aleena Mathew], [0], [2], [3], [3], [0], [2], [*10*],
  [Carmelo Russello], [0], [2], [3], [0], [2], [3], [*10*],
  [*Totali*], [*6*], [*5*], [*19*], [*18*], [*6*], [*13*], [*67*],
)

==== *Consuntivo orario*:
#table(
  columns: (3fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
  align: center,
  rows: auto,
  inset: 6pt,
  table.header([], [*Amm*], [*Ana*], [*Prg*], [*Pro*], [*Res*], [*Ver*], [*Totale*]),
  [Alessandro Bernardello], [1 (-2)], [0], [3 (+1)], [4 (+2)], [0], [1 (-1)], [*9*],
  [Mirco Borella], [0], [0], [2], [5], [0], [2], [*9*],
  [Pietro Crotti], [0], [0], [2], [5], [0], [2], [*9*],
  [Marco Egidi], [3], [0], [4], [3], [0], [0], [*10*],
  [Matteo Marangon], [0], [1], [3], [0], [4], [2], [*10*],
  [Aleena Mathew], [0], [2], [3], [3], [0], [2], [*10*],
  [Carmelo Russello], [2 (+2)], [2], [1 (-2)], [0], [2], [3], [*10*],
  [*Totali*], [*6*], [*5*], [*18*], [*20*], [*6*], [*12*], [*67*],
)

==== *Consuntivo costo*:
#table(
  columns: (1fr, 1fr, 1fr, 1fr),
  rows: auto,
  inset: 6pt,
  table.header([*Ruolo*], [*Ore per ruolo*], [*Costo orario ruolo*], [*Costo figura*]),
  [Amministratore], [6], [€20], [€120.00],
  [Analista], [5], [€25], [€125.00],
  [Progettista], [18], [€25], [€450.00],
  [Programmatore], [20], [€15], [€300.00],
  [Responsabile], [6], [€30], [€180.00],
  [Verificatore], [12], [€15], [€180.00],
  [*Totali*], [*67*], [], [*€1355.00*],
)

==== *Analisi retrospettiva*:
_Sigma18_ dichiara che il quinto sprint è stato meno proficuo all'avanzamento del capitolato rispetto ai precedenti, per via della manifestazione del rischio RO4.

Nello specifico sono stati validati i documenti *Piano di qualifica* e *Norme di Progetto*.

Il gruppo ha proseguito lo sviluppo del _PoC_, codificando le seguenti funzionalità lato _frontend_:

- Creazione della pagina di _dashboard_ per la visualizzazione dei flussi;

- Miglioramento e modifica della pagina di creazione di un flusso;

- Miglioramenti alla struttura del codice della gestione dei modali d'interazione;

- Predisposizione del _frontend_ a comunicare con le API del _backend_ tramite la libreria #glossario("Axios").

Lato _backend_ sono state sviluppate le seguenti funzionalità:

- Sviluppo dell'autenticazione.

- Collegamento backend a database #glossario("MongoDB").

- Modifica del _compose_ Docker e dei _Dockerfile_ per migliorare la compatibilità su windows, introdurre MongoDB e distinguere tra ambiente di sviluppo e produzione.

Sono state quindi riscontrate difficoltà catalogabili nei rischi RT1, RT2 e RO4. \
Ai fini di mitigare quanto riscontrato, il gruppo ha deciso di adottare una suddivisione dei ruoli flessibile per permettere ai membri del gruppo di svolgere le mansioni di un ruolo diverso da quello assegnato, in modo tale da garantire continuità nello sviluppo se il membro originario con quel ruolo non fosse disponibile.








#pagebreak()
=== Sprint 6

==== Dettagli

*Data di inizio*: 10/06/2025 \
*Data di fine*: 23/06/2025 \

*Rischi attesi*: RT1, RT2, RO1, RO2, RO4

*Attività da svolgere*: \
Il gruppo si impegna a:
- Sviluppo del _frontend_ del _Poc (Proof of Concept)_
- Sviluppo del _backend_ del _Poc (Proof of Concept)_

==== *Preventivo orario*:
#table(
  columns: (3fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
  align: center,
  rows: auto,
  inset: 6pt,
  table.header([], [*Amm*], [*Ana*], [*Prg*], [*Pro*], [*Res*], [*Ver*], [*Totale*]),
  [Alessandro Bernardello], [0], [0], [4], [5], [0], [0], [*9*],
  [Mirco Borella], [2], [0], [0], [5], [0], [2], [*9*],
  [Pietro Crotti], [0], [0], [4], [2], [3], [0], [*9*],
  [Marco Egidi], [0], [0], [4], [2], [3], [0], [*9*],
  [Matteo Marangon], [0], [0], [0], [6], [0], [3], [*9*],
  [Aleena Mathew], [4], [0], [4], [0], [0], [1], [*9*],
  [Carmelo Russello], [0], [0], [4], [5], [0], [0], [*9*],
  [*Totali*], [*6*], [*0*], [*20*], [*25*], [*6*], [*6*], [*63*],
)

==== *Consuntivo orario*:
#table(
  columns: (3fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
  align: center,
  rows: auto,
  inset: 6pt,
  table.header([], [*Amm*], [*Ana*], [*Prg*], [*Pro*], [*Res*], [*Ver*], [*Totale*]),
  [Alessandro Bernardello], [0], [0], [2 (-2)], [4(-1)], [0], [0], [*6*],
  [Mirco Borella], [2], [0], [0], [3(-2)], [0], [1(-1)], [*6*],
  [Pietro Crotti], [0], [0], [2(-2)], [2], [2(-1)], [0], [*6*],
  [Marco Egidi], [0], [0], [1(-3)], [1(-1)], [4(+1)], [0], [*6*],
  [Matteo Marangon], [0], [0], [0], [4(-2)], [0], [2(-1)], [*6*],
  [Aleena Mathew], [3(-1)], [0], [2(-2)], [0], [0], [1], [*6*],
  [Carmelo Russello], [0], [0], [3(-1)], [3(-2)], [0], [0], [*6*],
  [*Totali*], [*5*], [*0*], [*10*], [*17*], [*6*], [*4*], [*42*],
)

#pagebreak()

==== *Consuntivo costo*:
#table(
  columns: (1fr, 1fr, 1fr, 1fr),
  rows: auto,
  inset: 6pt,
  table.header([*Ruolo*], [*Ore per ruolo*], [*Costo orario ruolo*], [*Costo figura*]),
  [Amministratore], [5], [€20], [€100.00],
  [Analista], [0], [€25], [€0.00],
  [Progettista], [10], [€25], [€250.00],
  [Programmatore], [17], [€15], [€255.00],
  [Responsabile], [6], [€30], [€180.00],
  [Verificatore], [4], [€15], [€60.00],
  [*Totali*], [*42*], [], [*€845.00*],
)

==== *Analisi retrospettiva*:
_Sigma18_ dichiara che il sesto sprint, ha subito un rallentamento più marcato rispetto ai precedenti, nell'avanzamento del capitolato, per via della manifestazione del rischio RO4.

Il gruppo ha proseguito lo sviluppo del _PoC_, in particolare è stato studiato e testato il funzionamento di #glossario("Amazon Bedrock") per l'integrazione delle tecnologie di intelligenza artificiale generativa richieste dal capitolato. Nello specifico sono stati analizzati i seguenti modelli offerti dal servizio:
- #glossario("Amazon Nova") _Pro_;
- _Amazon Nova Micro_;
- _Amazon Nova Lite_;
- _ Amazon Nova Premier_;
- #glossario("DeepSeek R1");
- #glossario("Llama 3.3 70B").

Continuano ad essere riscontrate difficoltà catalogabili nei rischi RT1, RT2 e RO4. \
Ai fini di mitigare quanto riscontrato, il gruppo continua ad adottare una suddivisione dei ruoli flessibile per permettere ai membri del gruppo di svolgere le mansioni di un ruolo diverso da quello assegnato, in modo tale da garantire continuità nello sviluppo.\










#pagebreak()
=== Sprint 7

==== Dettagli

*Data di inizio*: 24/06/2025 \
*Data di fine*: 07/07/2025 \

*Rischi attesi*: RT1, RO1, RO2, RO4

*Attività da svolgere*: \
Il gruppo si impegna a:
- Terminare lo sviluppo del _Poc (Proof of Concept)_
- Effettuare la revisione RTB
- Ottenere l'approvazione del _Poc (Proof of Concept)_ da parte dell'azienda proponente

==== *Preventivo orario*:
#table(
  columns: (3fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
  align: center,
  rows: auto,
  inset: 6pt,
  table.header([], [*Amm*], [*Ana*], [*Prg*], [*Pro*], [*Res*], [*Ver*], [*Totale*]),
  [Alessandro Bernardello], [0], [0], [1], [4], [4], [0], [*9*],
  [Mirco Borella], [0], [0], [4], [6], [0], [0], [*10*],
  [Pietro Crotti], [0], [0], [4], [3], [0], [3], [*10*],
  [Marco Egidi], [2], [0], [2], [2], [0], [3], [*9*],
  [Matteo Marangon], [3], [0], [0], [3], [0], [3], [*9*],
  [Aleena Mathew], [0], [0], [4], [2], [0], [3], [*9*],
  [Carmelo Russello], [0], [0], [4], [3], [1], [1], [*9*],
  [*Totali*], [*5*], [*0*], [*19*], [*23*], [*5*], [*13*], [*65*],
)

==== *Consuntivo orario*:
#table(
  columns: (3fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
  align: center,
  rows: auto,
  inset: 6pt,
  table.header([], [*Amm*], [*Ana*], [*Prg*], [*Pro*], [*Res*], [*Ver*], [*Totale*]),
  [Alessandro Bernardello], [0], [0], [1], [4], [4], [0], [*9*],
  [Mirco Borella], [0], [0], [2 (-2)], [6], [0], [0], [*8*],
  [Pietro Crotti], [0], [0], [3 (-1)], [3], [0], [2 (-1)], [*8*],
  [Marco Egidi], [2], [0], [2], [2], [0], [2 (-1)], [*8*],
  [Matteo Marangon], [3], [0], [0], [5 (+2)], [0], [2 (-1)], [*10*],
  [Aleena Mathew], [0], [0], [4], [4 (+2)], [0], [1 (-2)], [*9*],
  [Carmelo Russello], [0], [0], [4], [3], [1], [1], [*9*],
  [*Totali*], [*5*], [*0*], [*16*], [*27*], [*5*], [*8*], [*61*],
)

#pagebreak()

==== *Consuntivo costo*:
#table(
  columns: (1fr, 1fr, 1fr, 1fr),
  rows: auto,
  inset: 6pt,
  table.header([*Ruolo*], [*Ore per ruolo*], [*Costo orario ruolo*], [*Costo figura*]),
  [Amministratore], [5], [€20], [€100.00],
  [Analista], [0], [€25], [€0.00],
  [Progettista], [16], [€25], [€400.00],
  [Programmatore], [27], [€15], [€405.00],
  [Responsabile], [5], [€30], [€150.00],
  [Verificatore], [8], [€15], [€120.00],
  [*Totali*], [*61*], [], [*€1175.00*],
)


==== *Analisi retrospettiva*:
_Sigma18_ dichiara che il settimo sprint è stato proficuo all'avanzamento del capitolato.

Il rischio RO4 è stato mitigato grazie ad una migliore organizzazione oraria dei membri del gruppo, che ha permesso di svolgere le attività relative al capitolato in parallelo allo studio per la sessione d'esame di Luglio.

Nello specifico è stato completato lo sviluppo del _PoC (Proof of Concept)_ ed è stato presentato all'azienda proponente per la revisione RTB in data 01 Luglio 2025. L'azienda ha approvato il _PoC (Proof of Concept)_ e ha richiesto di procedere con lo sviluppo.

Il gruppo ha programmato per il giorno 09 Luglio 2025 un incontro con il professor Cardin per la revisione delle tecnologie scelte (RTB).









#pagebreak()
=== Sprint 8

==== Dettagli

*Data di inizio*: 08/07/2025 \
*Data di fine*: 21/07/2025 \

*Rischi attesi*: RO1, RO2, RO3, RO4

*Attività da svolgere*: \
Il gruppo si impegna a:
- Effettuare la revisione RTB con il professor Cardin
- Effettuare la revisione RTB con il professore Vardanega (in caso di semaforo verde dall'incontro con il professor Cardin)
- Iniziare la fase del PB (Product Baseline) e dello sviluppo del'MVP (Minimum Viable Product)

==== *Preventivo orario*:
#table(
  columns: (3fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
  align: center,
  rows: auto,
  inset: 6pt,
  table.header([], [*Amm*], [*Ana*], [*Prg*], [*Pro*], [*Res*], [*Ver*], [*Totale*]),
  [Alessandro Bernardello], [0], [0], [1], [1], [0], [0], [*2*],
  [Mirco Borella], [0], [0], [0], [0], [2], [0], [*2*],
  [Pietro Crotti], [0], [2], [0], [0], [0], [0], [*2*],
  [Marco Egidi], [0], [0], [0], [0], [2], [0], [*2*],
  [Matteo Marangon], [0], [0], [0], [0], [0], [2], [*2*],
  [Aleena Mathew], [2], [0], [0], [0], [0], [0], [*2*],
  [Carmelo Russello], [1], [0], [0], [0], [0], [0], [*1*],
  [*Totali*], [*3*], [*2*], [*1*], [*1*], [*4*], [*2*], [*13*],
)
