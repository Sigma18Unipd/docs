#import "../../templates/template.typ": *

#show: content => verbale(
  titoloDocumento: "Piano di progetto",
  abstract: "Documento riepilogativo delle attività concluse e in corso di svolgimento dal gruppo Sigma18.",
  responsabili: ("Matteo Marangon", "Pietro Crotti"),
  redattori: ("Carmelo Russello", "Mirco Borella"),
  verificatori: ("Mirco Borella", "Marco Egidi"),
  tipo: "Documento Esterno",
  destinatari: ("Prof. Tullio Vardanega", "Prof. Riccardo Cardin", "Var Group S.P.A", "Sigma18"),
  versioneAttuale: "1.1.0",
  versioni: (
    "1.1.0",
    "2025/04/16",
    "Mirco Borella",
    "Marco Egidi",
    "Aggiornamento retrospettiva primo sprint e inizio secondo sprint",
    "1.0.0",
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

- #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C3.pdf")[Capitolato C3: Automatizzare le routine digitali tramite l'intelligenza generativa]

- #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf")[Regolamento progetto didattico]

- #link("https://www.iso.org/standard/65694.html")[ISO/IEC 31000:2018]

=== Riferimenti informativi

- #link("https://sigma18unipd.github.io/documentiCompilati/2-RTB/documentidiprogetto/glossario.pdf")[Glossario]

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
  [Una comunicazione esterna inefficace per impossibilità di risposta o mancanza di precisione di comuncazione può portare ad aumenti nei tempi complessivi dell'andamento del progetto],

  [*Probabilità*], [Media],
  [*Impatto*], [Alto],
  [*Strategie di attenuazione*],
  [Stabilire canali di comunicazione condivisi asincroni e con mezzi / strumenti più efficaci. Stabilire incontri periodici di confronto pianificati con anticipo.],
)

#pagebreak()

= Modello di sviluppo

Il modello di sviluppo scelto dal team è il modello #glossario("Agile"), per la sua flessibilità rispetto ai modelli tradizionali. L'approccio è focalizzato sulla consegna al cliente, in tempi brevi e con frequenza regolare, e prevede il coinvolgimento diretto e continuo del cliente durante tutto il processo di sviluppo.

Una pratica essenziale da seguire con l'uso del modello #glossario("Agile") è la suddivisione del progetto in intervalli temporali precisi e concisi, chiamati #glossario("Sprint"), entro i quali dovranno essere completate le attività stabilite durante lo #glossario("Sprint Planning")

== Vantaggi del modello

- Facilita la comunicazione e la collaborazione del team poiche tutti lavorano a stretto contatto e comunicano quotidianamente sull'andamento dello sviluppo in modo trasparente.

- Permette una valutazione continua ed efficace dei rischi grazie alla natura iterativa del modello, che consente di adattarsi rapidamente ai cambiamenti e di affrontare i rischi in modo graduale.

- Migliora il coinvolgimento e la soddisfazione del cliente, che può fornire feedback sullo stato del prodotto, il quale può essere poi modificato in corso d'opera grazie alla flessibilità del modello.

= Pianificazione

Avendo scelto il modello #glossario("Agile") le attività di lavoro verranno tramite la suddivisione in #glossario("Sprint"), un breve periodo di tempo nel quale il team lavora per completare una predeterminata quantità di lavoro per raggiungere gli obiettivi prefissati.

Il gruppo, in accordo con l'azienda proponente, ha stabilito la durata di ogni #glossario("Sprint") pari a *2 settimane*.

== Ruolo del Team
- *Pianificazione condivisa*: all'inizio di ogni #glossario("Sprint"), il gruppo stabilisce congiuntamente gli obiettivi.

- *Rotazione dei ruoli*: per garantire equità e crescita trasversale tra i membri.

- *Monitoraggio continuo*: uso di #glossario("Github") per tracciare l'avanzamento e segnalare le attività (_*issue*_).

- *Interazione con l'azienda*: confronto regolare per mantenere l'allineamento tra team e committenza.

Per approfondimenti sull'impegno dei membri e la stima dei costi, si fa riferimento al documento:
#link("https://sigma18unipd.github.io/documentiCompilati/1-candidatura/impegnicosti_1.0.1.pdf")[*Preventivo dei costi e dichiarazione impegni*].

== Struttura Operativa degli Sprint

Gli #glossario("sprint") verranno strutturati nel seguente modo:

- *Data di inizio*: Data di inizio dello #glossario("sprint").

- *Data di fine*: Data di fine dello #glossario("sprint").

- *Rischi attesi*: I rischi che potrebbero verificarsi nel corso dello #glossario("sprint").

- *Attività da svolgere*: Le attività previste per ogni #glossario("sprint"), allineate agli obiettivi definiti durante la riunione iniziale.

- *Preventivo*: Una tabella che riporta il preventivo delle ore da svolgere da ciascun membro, suddiviso per ruolo.

- *Consuntivo*: Una tabella che mostra il consuntivo delle ore svolte da ciascun membro, suddiviso per ruolo, insieme ad una tabella dei costi e delle ore assegnate a ciascun ruolo. Necessario per una visione più ampia sul rendimento del gruppo durante l'analisi conclusiva.

- *Analisi retrospettiva*: Un resoconto di cosa è stato portato a termine durante lo #glossario("sprint"), delle cose da migliorare e dei problemi riscontrati.

== Fasi Principali del Progetto

Il progetto verrà suddiviso nelle seguenti fasi:

+ *RTB (_Requirements and Technology Baseline_)*: Determinazione dei requisiti e delle tecnologie fondamentali necessarie per lo sviluppo del progetto. Sviluppo di #glossario("PoC").

+ *PB (_Product Baseline_)*: Realizzazione del prodotto in conformità ai requisiti stabiliti. Sviluppo del #glossario("MVP").











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

==== *Consuntivo del costo*:
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

Il gruppo ha organizzato e partecipato all'incontro di #glossario("Design Thinking") con l'azienda proponente lunedì 14 Aprile che ha steso le basi per organizzare i lavori successivi.

Una difficoltà emersa è stata la comunicazione con l'azienda che a causa di soggeti temporanemente non reperibili ha rallentato il progesso. Questo rischio identificabile nel codice #link(<RO3>)[RO3] non era stato preventivato in anticipo causando rallentamenti non previsti. _Sigma18_ si è attrezzato con l'azienda proponente _Var Group S.p.a_ per l'uso asincrono della piattaforma di messaggistica #glossario("Slack") in modo tale da cercare di garantire comunicazioni piú efficaci e con figure multiple così da non dipendere dalle disponibilitá di tempo di un solo soggetto.

=== Sprint 2

==== Dettagli

*Data di inizio*: 16/04/2025 \
*Data di fine*: 29/04/2025 \

*Rischi attesi*: RT1, RO1

*Attività da svolgere*: \
Il gruppo si impegna a:
- Redigere il documento di analisi dei requisiti
- Stilare le norme di progetto
- Verbalizzare l'incontro avvenuto con l'azienda proponente in data 14 Aprile 2025
- Verbalizzare l'incontro interno avvenuto in data 16 Aprile 2025
- Integrare il glossario con i nuovi termini
- Creazione di uno _script_ Python per la verifica dei termini del glossario
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

























/*
==== *Preventivo orario*:
#table(
  columns: (3fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
  align: center,
  rows: auto,
  inset: 6pt,
  table.header([], [*Amm*], [*Ana*], [*Prg*], [*Pro*], [*Res*], [*Ver*], [*Totale*]),
  [Alessandro Bernardello], [0], [0], [0], [0], [0], [0], [*0*],
  [Mirco Borella], [0], [0], [0], [0], [0], [0], [*0*],
  [Pietro Crotti], [0], [0], [0], [0], [0], [0], [*0*],
  [Marco Egidi], [0], [0], [0], [0], [0], [0], [*0*],
  [Matteo Marangon], [0], [0], [0], [0], [0], [0], [*0*],
  [Aleena Mathew], [0], [0], [0], [0], [0], [0], [*0*],
  [Carmelo Russello], [0], [0], [0], [0], [0], [0], [*0*],
  [*Totali*], [*0*], [*0*], [*0*], [*0*], [*0*], [*0*], [*0*],
)
*/

