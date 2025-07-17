#import "../../templates/template.typ": *
#show: content => verbale(
  titoloDocumento: "Analisi dei Requisiti",
  abstract: "",
  responsabili: "Pietro Crotti",
  redattori: ("Pietro Crotti", "Matteo Marangon", "Carmelo Russello", "Mirco Borella", "Alessandro Bernardello"),
  verificatori: ("Pietro Crotti", "Matteo Marangon", "Aleena Mathew", "Carmelo Russello", "Marco Egidi"),
  tipo: "Documento Esterno",
  destinatari: ("Sigma18", "Prof. Tullio Vardanega", "Prof. Riccardo Cardin", "Var Group S.p.A."),
  versioneAttuale: "1.2.0",
  content: content,
  versioni: (
    "1.2.0",
    "2025/07/17",
    "Carmelo Russello",
    "Marco Egidi",
    "Aggiunta tabella tracciamento Casi d'Uso - Requisiti, fix minori",
    "1.1.0",
    "2025/07/16",
    "Pietro Crotti
Matteo Marangon
Carmelo Russello",
    "Pietro Crotti
Matteo Marangon
Carmelo Russello",
    "Aggiunta Use Case e modifiche richieste dal committente",
    "1.0.0",
    "2025/07/01",
    "Aleena Mathew",
    "Alessandro Bernardello",
    "Modifica UC[21] e allineamento a richieste proponente",
    "0.11.1",
    "2025/05/24",
    "Mirco Borella
Alessandro Bernardello",
    "Marco Egidi",
    "Correzione errori di battitura",
    "0.11.0",
    "2025/05/23",
    "Carmelo Russello",
    "Matteo Marangon",
    "Allineamento requisiti e modifica diagrammi dei casi d'uso",
    "0.10.0",
    "2025/05/22",
    "Mirco Borella
Alessandro Bernardello",
    "Carmelo Russello",
    "Aggiunta termini al glossario, fix",
    "0.9.0",
    "2025/05/16",
    "Pietro Crotti",
    "Matteo Marangon",
    "Fix minori",
    "0.8.0",
    "2025/05/14",
    "Carmelo Russello",
    "Marco Egidi",
    "Modifica e aggiunta casi d'uso e diagrammi",
    "0.7.0",
    "2025/05/03",
    "Pietro Crotti",
    "Carmelo Russello",
    "Modifica dei flussi 11 e 12, fix minori",
    "0.6.0",
    "2025/05/03",
    "Matteo Marangon",
    "Carmelo Russello",
    "Aggiunta sezione requisiti",
    "0.5.0",
    "2025/05/02",
    "Pietro Crotti",
    "Matteo Marangon",
    "Aggiunti diagrammi casi d'uso",
    "0.4.0",
    "2025/04/24",
    "Carmelo Russello",
    "Matteo Marangon",
    "Aggiunti diagrammi casi d'uso",
    "0.3.0",
    "2025/04/22",
    "Pietro Crotti",
    "Matteo Marangon",
    "Aggiunti casi d'uso",
    "0.2.0",
    "2025/04/18",
    "Matteo Marangon",
    "Pietro Crotti
Aleena Mathew",
    "Aggiunti casi d'uso",
    "0.1.0",
    "2025/04/16",
    "Pietro Crotti",
    "Matteo Marangon",
    "Stesura iniziale documento",
  ),
)

#outline(title: "Diagrammi dei casi d'uso", target: figure.where(kind: image))
#pagebreak()

= Introduzione
== Scopo del documento
Il presente documento ha lo scopo di fornire una descrizione dettagliata dei *casi d'uso* e dei *requisiti* del progetto che l'azienda proponente _Var Group S.p.A._ ha presentato, grazie ad uno studio approfondito del capitolato e ad una riunione in presenza, effettuata nella sede di Padova in Via Salboro 22/B il giorno lunedì 14 Aprile 2025.

Questo documento è pertanto di elevata importanza in quanto costituisce una solida base per lo sviluppo del prodotto finale, permettendo di avere una chiara visione delle *funzionalità* e dei *requisiti* richiesti dall'azienda proponente.

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

- #link("https://sigma18unipd.github.io/documentiCompilati/2-RTB/documentidiprogetto/glossario.pdf")[Glossario (0.11.0)]

- #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T05.pdf")[Dispensa T05: Analisi dei requisiti] (*Ultimo accesso il: 16/07/2025*)

- #link("https://www.math.unipd.it/~rcardin/swea/2022/Diagrammi%20Use%20Case.pdf")[Diagrammi dei casi  d'uso] (*Ultimo accesso il: 16/07/2025*)
#pagebreak()




= Descrizione del prodotto
== Obiettivi del prodotto
L'obiettivo del nostro prodotto è automatizzare _routine_ digitali che richiederebbero interventi manuali impegnativi oppure onerosi in termini di tempo, sfruttando anche l'ausilio dell'intelligenza artificiale per permettere la creazione di queste automazioni anche ad utenti inesperti.

== Utenti
Il prodotto è destinato a due tipologie di utenti: utente base e utente avanzato.

=== Utente base
L'utente base è colui che non ha particolari conoscenze tecniche o tecnologiche, pertanto ha bisogno di essere aiutato tramite un'interfaccia semplice e intuitiva per poter utilizzare il prodotto senza difficoltà.

=== Utente avanzato
L'utente avanzato, è colui che dispone di una conoscenza più approfondita sul funzionamento dei vari componenti che devono interagire tra loro per la creazione di un flusso di lavoro. Dunque può volere un livello di configurazione maggiore e talvolta anche creare intere automazioni manualmente.
L'utente avanzato può anche aver necessità di modificare il modello dell'#glossario("LLM").

== Funzionalità e vincoli
Il prodotto dovrà consentire all'utente di creare flussi di lavoro sia in modo automatico che manuale.
In particolare, un utente potrà:

- Fornire una descrizione in linguaggio naturale dell'automazione desiderata, visualizzarla e modificarla, se necessario, tramite un'interfaccia grafica che utilizza un sistema di _drag & drop_.

- Creare un flusso di lavoro in modo manuale, selezionando i blocchi e collegandoli tra loro.

- Avviare l'automazione selezionata tramite l'apposito pulsante.

- Interrompere l'automazione in esecuzione in qualsiasi momento.
#pagebreak()

= Casi d'uso
== Introduzione
Questa sezione del documento descrive ogni caso d'uso del progetto proposto da _Var Group S.p.A._ , i seguenti casi d'uso sono stati individuati grazie ad un attento studio del capitolato e ad una sessione di #glossario("design thinking") svolta in presenza con l'azienda proponente.

È stata adottata una nomenclatura per definire i casi d'uso nel seguente formato:
#set align(center)
*UC[numero_caso_uso]: titolo*
#set align(left)

dove *numero_caso_uso* è un numero progressivo che identifica univocamente il caso d'uso e *titolo* è una breve descrizione del caso d'uso stesso.

== Attori
Dal punto di vista dell'applicativo, gli utenti si suddividono in due tipi di attori:

- *utente non autenticato*: colui che non ha effettuato il _login_ e quindi non ha accesso al servizio.

- *utente autenticato*: colui che ha effettuato il _login_ e ha accesso al servizio.

Il gruppo _Sigma18_ ha deciso di dedicare certi _use case_ a categorie di utenza specifiche. In questo caso, nello _use case_ verrà riportata la dicitura "utente esperto" o "utente base", seguita poi dal tipo di attore rilevante per l'applicativo.

== Elenco dei casi d'uso











=== UC[1]: _Login_ <UC1>
- *Attore principale*: utente non autenticato.

- *Pre-condizioni*: l'utente non è autenticato e possiede un _account_.

- *Post-condizioni*: l'utente è autenticato.

- *Scenario principale*:
  1. L'utente accede all'applicativo.
  2. L'utente inserisce la propria _e-mail_.
  3. L'utente inserisce la propria _password_.
  4. Il sistema verifica le credenziali e permette di accedere alla #glossario("dashboard").
- *Estensioni*:
  - Credenziali non valide (#link(<UC4>)[*UC[4]*]).
  - Errore generico (#link(<UC5>)[*UC[5]*]).

=== UC[2]: Inserimento _E-mail_ <UC2>

- *Attore principale*: utente non autenticato.

- *Pre-condizioni*: l'utente non è autenticato.

- *Post-condizioni*: il sistema riceve una _e-mail_ inserita dall'utente.

- *Scenario principale*:
  1. L'utente inserisce la propria _e-mail_.

=== UC[3]: Inserimento _Password_ <UC3>

- *Attore principale*: utente non autenticato.

- *Pre-condizioni*: l'utente non è autenticato.

- *Post-condizioni*: il sistema riceve una _password_ inserita dall'utente.

- *Scenario principale*:
  1. L'utente inserisce la propria _password_.

=== UC[4]: Errore "Credenziali non valide" <UC4>

- *Attore principale*: utente non autenticato.

- *Pre-condizioni*: l'utente inserisce le proprie credenziali.

- *Post-condizioni*: il sistema individua credenziali errate.

- *Scenario principale*:
  1. L'utente inserisce le proprie credenziali.
  2. Il sistema individua le credenziali errate e invia un messaggio di errore all'utente.
  3. L'utente può ripetere l'inserimento delle credenziali precedentemente errate.





=== UC[5]: Errore generico <UC5>

- *Attore principale*: utente.

- *Pre-condizioni*: il sistema riceve dei dati.

- *Post-condizioni*: il sistema mostra un errore.

- *Scenario principale*:
  1. Il sistema riceve dei dati da processare.
  2. Il sistema non riesce a processare i dati e mostra un messaggio di errore all'utente.

#figure(image("../../assets/usecasediagrams/1,2,3,4,5.svg"), caption: [Diagramma casi d'uso UC[1], UC[2], UC[3], UC[4], UC[5]])





=== UC[6]: Registrazione <UC6>

- *Attore principale*: utente non autenticato.

- *Pre-condizioni*: l'utente non ha un _account_.

- *Post-condizioni*: l'account utente viene creato.

- *Scenario principale*:
  1. L'utente accede all'applicativo.
  2. L'utente accede alla pagina di registrazione.
  3. L'utente inserisce la propria _e-mail_.
  4. L'utente inserisce la _password_ .
  5. L'utente reinserisce la _password_ creata.
  6. Il sistema crea l'_account_ e salva le credenziali nel generico.
- *Estensioni*:
  - _E-mail_ già in uso (#link(<UC9>)[*UC[9]*]).
  - Errore generico (#link(<UC5>)[*UC[5]*]).


=== UC[7]: Creazione Password <UC7>

- *Attore principale*: utente non autenticato.

- *Pre-condizioni*: l'utente non è autenticato e non possiede un _account_.

- *Post-condizioni*: Il sistema riceve la password creata dall'utente.

- *Scenario principale*:
  1. L'utente inserisce la propria _password_ per la creazione dell'_account_.

=== UC[8]: Conferma Password <UC8>

- *Attore principale*: utente non autenticato.

- *Pre-condizioni*: l'utente non è autenticato e non possiede un _account_.

- *Post-condizioni*: l'utente reinserisce la sua _password_ e il sistema conferma che la password inserita è corretta.

- *Scenario principale*:
  1. L'utente inserisce la propria _password_ per la creazione dell'_account_.

=== UC[9]: Errore "_E-mail_ già in uso" <UC9>
- *Attore principale*: utente non autenticato.

- *Pre-condizioni*: l'utente non possiede un _account_, l'utente ha confermato il _form_ di registrazione.

- *Post-condizioni*: la _e-mail_ scelta dall'utente è già in uso.

- *Scenario principale*:
  1. L'utente inserisce i suoi dati nell'apposito form di registrazione.
  2. Il sistema individua che esiste già un _account_ che utilizza la _e-mail_ scelta.
  3. Il sistema ritorna un messaggio di errore all'utente.


#figure(image("../../assets/usecasediagrams/2,5,6,7,8,9.svg"), caption: [Diagramma casi d'uso UC[2], UC[5], UC[6], UC[7], UC[8], UC[9]])









=== UC[10]: Creazione nuova _routine_ <UC10>
- *Attore principale*: utente autenticato.

- *Pre-condizioni*: l'utente ha effettuato l'accesso e si trova nella _dashboard_.

- *Post-condizioni*: viene creata una nuova _routine_.

- *Scenario principale*:
  1. L'utente preme il tasto di creazione di una nuova _routine_ nella _dashboard_.
  2. L'utente inserisce il nome della _routine_.
  3. Il sistema crea una nuova _routine_ e l'utente viene portato alla pagina di modifica del flusso.

- *Estensioni*:
  - Nome _routine_ già in uso (#link(<UC11>)[*UC[11]*])
  - Errore generico (#link(<UC5>)[*UC[5]*]).









=== UC[11]: Errore "Nome _routine_ già in uso" <UC11>
- *Attore principale*: utente autenticato.

- *Pre-condizioni*: il sistema riceve il nome della _routine_ da creare.

- *Post-condizioni*: il sistema verifica se il nome della _routine_ è univoco.

- *Scenario principale*:
  1. L'utente inserisce il nome della _routine_.
  2. Il sistema verifica se il nome della _routine_ è univoco.
  3. Se il nome è univoco, il sistema crea la _routine_ e l'utente viene portato alla pagina di modifica del flusso.
  4. Se il nome non è univoco, il sistema mostra un messaggio di errore all'utente.

#figure(image("../../assets/usecasediagrams/5,10,11.svg"), caption: [Diagramma casi d'uso UC[5], UC[10], UC[11]])









=== UC[12]: Generare una _routine_ mediante linguaggio naturale <UC12>

- *Attore principale*: utente autenticato.

- *Pre-condizioni*: l'utente si trova nella pagina di un flusso.

- *Post-condizioni*: vengono generati i blocchi all'interno dell'interfaccia.

- *Scenario principale*:
  1. L'utente preme il tasto dedicato nella pagina.
  2. L'utente inserisce la descrizione della _routine_ in linguaggio naturale.
  3. Il sistema genera i blocchi e gli archi all'interno dell'interfaccia.
  4. Il sistema mostra il flusso generato all'utente.

- *Estensioni*:
  - Errore "Impossibile generare il flusso" (#link(<UC15>)[*UC[15]*]).
  - Errore generico (#link(<UC5>)[*UC[5]*]).
  - Modifica del modello _GenAI_ per la generazione (#link(<UC14>)[*UC[14]*]).







=== UC[13]: Visualizza modello _GenAI_ per la generazione <UC13>

- *Attore principale*: utente esperto autenticato.

- *Pre-condizioni*: l'utente sta generando una routine mediante linguaggio naturale.

- *Post-condizioni*: il modello utilizzato per la generazione della _routine_ viene visualizzato.

- *Scenario principale*:
  1. Il sistema mostra il modello _GenAI_ selezionato per la generazione della _routine_ nel menù a tendina.







=== UC[14]: Modifica modello _GenAI_ per la generazione <UC14>

- *Attore principale*: utente esperto autenticato.

- *Pre-condizioni*: l'utente sta generando una routine mediante linguaggio naturale.

- *Post-condizioni*: il modello utilizzato per la generazione della _routine_ viene modificato.

- *Scenario principale*:
  1. Il sistema mostra il modello _GenAI_ selezionato per la generazione della _routine_ nel menù a tendina.

  2. L'utente seleziona un nuovo modello _GenAI_ dal menù a tendina.






=== UC[15]: Visualizzazione dell'errore "Impossibile generare il flusso" <UC15>

- *Attore principale*: utente autenticato.

- *Pre-condizioni*: l'utente sta tentando di generare i blocchi del flusso tramite linguaggio naturale, ma si verifica un errore.

- *Post-condizioni*: il sistema mostra il messaggio di errore all'utente.

- *Scenario principale*:
  1. L'utente l'inserisce il _prompt_ in linguaggio naturale.
  2. L'LLM non riesce a generare il flusso dei blocchi
  3. Il sistema mostra un messaggio di errore.


#figure(image("../../assets/usecasediagrams/5,12,13,14,15.svg"), caption: [Diagramma casi d'uso UC[5], UC[12], UC[13], UC[14], UC[15]])









=== UC[16]: Visualizzare i dettagli di una _routine_ esistente <UC16>
- *Attore principale*: utente autenticato.

- *Pre-condizioni*: l'utente si trova nella _dashboard_.

- *Post-condizioni*: l'utente si trova nella pagina di modifica di un flusso.

- *Scenario principale*
  1. L'utente seleziona una _routine_ esistente dalla lista delle automazioni nella _dashboard_.
  2. Il sistema mostra una pagina con i dettagli della _routine_ selezionata.








=== UC[17]: Visualizzazione nome di una _routine_ esistente <UC17>
- *Attore principale*: utente autenticato.

- *Pre-condizioni*:
  - Il sistema memorizza il nome della routine.
  - l'utente si trova nella pagina di modifica di un flusso.

- *Post-condizioni*: il sistema mostra il nome della routine selezionata.

- *Scenario principale*
  1. L'utente visualizza il nome della routine selezionata.






=== UC[18]: Visualizzazione diagramma dei blocchi di una _routine_ esistente <UC18>

- *Attore principale*: utente autenticato.

- *Pre-condizioni*:
  - Il sistema memorizza il diagramma dei blocchi della routine.
  - l'utente si trova nella pagina di modifica di un flusso.

- *Post-condizioni*: Il sistema mostra il diagramma dei blocchi della _routine_ selezionata.

- *Scenario principale*
  1. l'utente visualizza il diagramma dei blocchi della routine selezionata.



#figure(image("../../assets/usecasediagrams/16,17,18.svg"), caption: [Diagramma casi d'uso UC[16], UC[17], UC[18]])









=== UC[19]: Eliminare una _routine_ esistente <UC19>
- *Attore principale*: utente autenticato.

- *Pre-condizioni*: l'utente si trova nella pagina di modifica di un flusso.

- *Post-condizioni*: utente viene ritornato alla _dashboard_ e la _routine_ viene eliminata.

- *Scenario principale*:
  1. L'utente accede alla pagina di dettagli di una _routine_.
  2. L'utente seleziona l'opzione di eliminazione della _routine_.
  3. Il sistema mostra un messaggio di conferma dell'eliminazione.
  4. Se l'utente conferma l'eliminazione, il sistema elimina la _routine_ e ritorna l'utente alla _dashboard_.

#figure(image("../../assets/usecasediagrams/19.svg"), caption: [Diagramma casi d'uso UC[19]])







=== UC[20]: Modifica del nome di una _routine_ <UC20>

- *Attore principale*: utente autenticato.

- *Pre-condizioni*: l'utente si trova nella pagina del flusso dell'automazione.

- *Post-condizioni*: viene modificato il nome della _routine_ aperta.

- *Scenario principale*:
  1. L'utente preme nel tasto dedicato alla modifica del nome della _routine_.
  2. Il sistema mostra un campo di testo per la modifica del nome della _routine_.
  3. L'utente inserisce e conferma il nuovo nome della _routine_.
  4. Il sistema verifica che il nome della _routine_ sia univoco.
  5. Il sistema salva il nuovo nome della _routine_.

- *Estensioni*:
  - Nome _routine_ già in uso (#link(<UC11>)[*UC[11]*]).
  - Errore generico (#link(<UC5>)[*UC[5]*]).

#figure(image("../../assets/usecasediagrams/5,11,20.svg"), caption: [Diagramma casi d'uso UC[5], UC[11], UC[20]])
\









=== UC[21]: Avviare una _routine_ esistente <UC21>

- *Attore principale*: utente autenticato.

- *Pre-condizioni*: l'utente ha creato almeno una routine

- *Post-condizioni*: una _routine_ viene avviata.

- *Scenario principale*:
  1. Il sistema avvia la _routine_.

- *Estensioni*:
  - Errore generico (#link(<UC5>)[*UC[5]*]).




=== UC[22]: Avviare una _routine_ esistente dalla _dashboard_ <UC22>

- *Attore principale*: utente autenticato.

- *Pre-condizioni*: l'utente si trova nella _dashboard_.

- *Post-condizioni*: una _routine_ viene avviata.

- *Scenario principale*:
  1. L'utente preme l'icona di avvio della _routine_ interessata.
  2. Il sistema avvia la _routine_.



=== UC[23]: Avviare una _routine_ esistente tramite la pagina di modifica del flusso <UC23>

- *Attore principale*: utente autenticato.

- *Pre-condizioni*: l'utente si trova nella pagina di modifica del flusso.

- *Post-condizioni*: la relativa _routine_ viene avviata.

- *Scenario principale*:
  1. L'utente preme l'icona di avvio della _routine_ interessata.
  2. Il sistema avvia la _routine_.



#figure(image("../../assets/usecasediagrams/5,21,22,23.svg"), caption: [Diagramma casi d'uso UC[5], UC[21], UC[22], UC[23]])








=== UC[24]: Interrompere una _routine_ avviata <UC24>

- *Attore principale*: utente autenticato.

- *Pre-condizioni*: l'utente ha una _routine_ in esecuzione.

- *Post-condizioni*: l'esecuzione della _routine_ viene interrotta.

- *Scenario principale*:
  1. Il sistema interrompe l'esecuzione della _routine_ all'operazione corrente.

- *Estensioni*:
  - Visualizzazione errore "Impossibile blocare la _routine_" (#link(<UC27>)[*UC[27]*]).
  - Errore generico (#link(<UC5>)[*UC[5]*]).







=== UC[25]: Interrompere una _routine_ dalla _dashboard_ <UC25>

- *Attore principale*: utente autenticato.

- *Pre-condizioni*: l'utente si trova nella _dashboard_ e ha una _routine_ in esecuzione.

- *Post-condizioni*: l'esecuzione della _routine_ viene interrotta.

- *Scenario principale*:
  1. L'utente preme l'icona di interruzione della _routine_.
  2. Il sistema interrompe l'esecuzione della _routine_ all'operazione corrente.




=== UC[26]: Interrompere una _routine_ tramite la propria pagina di modifica <UC26>

- *Attore principale*: utente autenticato.

- *Pre-condizioni*: l'utente si trova nella pagina di modifica di un flusso in esecuzione.

- *Post-condizioni*: l'esecuzione della _routine_ viene interrotta.

- *Scenario principale*:
  1. L'utente preme l'icona di interruzione della _routine_.
  2. Il sistema interrompe l'esecuzione della _routine_ all'operazione corrente.






=== UC[27]: Visualizzazione errore "Impossibile bloccare la _routine_" <UC27>

- *Attore principale*: utente autenticato.

- *Pre-condizioni*: l'utente ha provato a bloccare una _routine_ in esecuzione.

- *Post-condizioni*: il sistema mostra un errore.

- *Scenario principale*:
  1. L'utente prova a bloccare una _routine_ in _esecuzione_.
  2. Se l'azione della _routine_ non è bloccabile, il sistema mostra un messaggio di errore all'utente.
  3. Se la _routine_ non è più in esecuzione, il sistema mostra un messaggio di errore all'utente.

#figure(image("../../assets/usecasediagrams/5,24,25,26,27.svg"), caption: [Diagramma casi d'uso UC[5], UC[24], UC[25], UC[26], UC[27]])








=== UC[28]: Aggiunta di un blocco ad una _routine_ esistente <UC28>
- *Attore principale*: utente esperto autenticato.

- *Pre-condizioni*: l'utente si trova sulla pagina di modifica di un flusso.

- *Post-condizioni*: viene modificato il comportamento della _routine_.

- *Scenario principale*:
  1. L'utente aggiunge un blocco alla _routine_.
  2. Il sistema mostra il blocco aggiunto.


- *Estensioni*:
  - Errore generico (#link(<UC5>)[*UC[5]*]).






=== UC[29]: Aggiunta del blocco "_Telegram_ - Send Bot Message" ad una _routine_ esistente <UC29>

- *Attore principale*: utente esperto autenticato.

- *Pre-condizioni*: l'utente si trova sulla pagina di modifica di un flusso.

- *Post-condizioni*: viene aggiunto il blocco "_Telegram_ - Send Bot Message" nella _routine_.

- *Scenario principale*:
  1. L'utente apre il menù dei blocchi disponibili.
  2. L'utente preme l'apposito pulsante per aggiungere il blocco "_Telegram_ - Send Bot Message" alla routine.
  3. L'utente collega il blocco appena aggiunto a quelli già esistenti.






=== UC[30]: Aggiunta del blocco "_Pastebin_ - Create Paste" ad una _routine_ esistente <UC30>

- *Attore principale*: utente esperto autenticato.

- *Pre-condizioni*: l'utente si trova sulla pagina di modifica di un flusso.

- *Post-condizioni*: viene aggiunto il blocco "_Pastebin_ - Create Paste" nella _routine_.

- *Scenario principale*:
  1. L'utente apre il menù dei blocchi disponibili.
  2. L'utente preme l'apposito pulsante per aggiungere il blocco alla routine.
  3. L'utente collega il blocco appena aggiunto a quelli già esistenti.





=== UC[31]: Aggiunta del blocco "_AI_ - Summarize" ad una _routine_ esistente <UC31>

- *Attore principale*: utente esperto autenticato.

- *Pre-condizioni*: l'utente si trova sulla pagina di modifica di un flusso.

- *Post-condizioni*: viene aggiunto il blocco "_AI_ - Summarize" nella _routine_.

- *Scenario principale*:
  1. L'utente apre il menù dei blocchi disponibili.
  2. L'utente preme l'apposito pulsante per aggiungere il blocco alla routine.
  3. L'utente collega il blocco appena aggiunto a quelli già esistenti.






=== UC[32]: Aggiunta del blocco "_System_ - Wait Second(s)" ad una _routine_ esistente <UC32>

- *Attore principale*: utente esperto autenticato.

- *Pre-condizioni*: l'utente si trova sulla pagina di modifica di un flusso.

- *Post-condizioni*: viene aggiunto il blocco "_System_ - Wait Second(s)" nella _routine_.

- *Scenario principale*:
  1. L'utente apre il menù dei blocchi disponibili.
  2. L'utente preme l'apposito pulsante per aggiungere il blocco alla routine.
  3. L'utente collega il blocco appena aggiunto a quelli già esistenti.






=== UC[33]: Aggiunta del blocco "_Notion_ - Get Page" ad una _routine_ esistente <UC33>

- *Attore principale*: utente esperto autenticato.

- *Pre-condizioni*: l'utente si trova sulla pagina di modifica di un flusso.

- *Post-condizioni*: viene aggiunto il blocco "_Notion_ - Get Page" nella _routine_.

- *Scenario principale*:
  1. L'utente apre il menù dei blocchi disponibili.
  2. L'utente preme l'apposito pulsante per aggiungere il blocco alla routine.
  3. L'utente collega il blocco appena aggiunto a quelli già esistenti.


#figure(
  image("../../assets/usecasediagrams/5,28,29,30,31,32,33.svg"),
  caption: [Diagramma casi d'uso UC[5], UC[28], UC[29], UC[30], UC[31], UC[32], UC[33]],
)






=== UC[34]: Visualizza le impostazioni di un singolo blocco <UC34>

- *Attore principale*: utente autenticato.

- *Pre-condizioni*: si trova nella pagina di modifica di un flusso contenente almeno un blocco provvisto di impostazioni.

- *Post-condizioni*: vengono visualizzati i campi di impostazione di un blocco.

- *Scenario principale*:
  1. L'utente visualizza le impostazioni di un blocco.




=== UC[35]: Visualizzazione impostazioni del blocco "_Telegram_ - Send Bot Message" <UC35>

- *Attore principale*: utente esperto autenticato.

- *Pre-condizioni*: l'utente si trova sulla pagina di modifica di un flusso.

- *Post-condizioni*: vengono visualizzate le impostazioni del blocco "_Telegram_ - Send Bot Message".

- *Scenario principale*:
  1. L'utente preme il pulsante dedicato per visualizzare le impostazioni del blocco.
  2. Il sistema mostra impostazioni del blocco, come il messaggio da inviare e le chiavi di accesso all'API.





=== UC[36]: Visualizzazione impostazioni del blocco "_Pastebin_ - Create Paste" <UC36>

- *Attore principale*: utente esperto autenticato.

- *Pre-condizioni*: l'utente si trova sulla pagina di modifica di un flusso.

- *Post-condizioni*: vengono visualizzate le impostazioni del blocco "_Pastebin_ - Create Paste".

- *Scenario principale*:
  1. L'utente preme il pulsante dedicato per visualizzare le impostazioni del blocco.
  2. Il sistema mostra impostazioni del blocco, come il nome del _paste_, se il _paste_ è privato, pubblico o non in elenco, il formato, il contenuto del _paste_ e le chiavi di accesso all'API.



=== UC[37]: Visualizzazione impostazioni del blocco "_System_ - Wait Second(s)" <UC37>

- *Attore principale*: utente esperto autenticato.

- *Pre-condizioni*: l'utente si trova sulla pagina di modifica di un flusso.

- *Post-condizioni*: vengono visualizzate le impostazioni del blocco "_System_ - Wait Second(s)".

- *Scenario principale*:
  1. L'utente preme il pulsante dedicato per visualizzare le impostazioni del blocco.
  2. Il sistema mostra impostazioni del blocco, come il numero di secondi da attendere prima di eseguire il blocco successivo.






=== UC[38]: Visualizzazione impostazioni del blocco "_Notion_ - Get Page" <UC38>

- *Attore principale*: utente esperto autenticato.

- *Pre-condizioni*: l'utente si trova sulla pagina di modifica di un flusso.

- *Post-condizioni*: vengono visualizzate le impostazioni del blocco "_Notion_ - Get Page".

- *Scenario principale*:
  1. L'utente preme il pulsante dedicato per visualizzare le impostazioni del blocco.
  2. Il sistema mostra impostazioni del blocco, come il token di accesso all'API Notion ed il PAGE_ID della pagina da cui prendere i contenuti.


#figure(image("../../assets/usecasediagrams/34,35,36,37,38.svg"), caption: [Diagramma casi d'uso UC[34], UC[35], UC[36], UC[37], UC[38]])


=== UC[39]: Modificare le impostazioni di un singolo blocco <UC39>

- *Attore principale*: utente autenticato.

- *Pre-condizioni*: si trova nella pagina di modifica di un flusso contenente almeno un blocco provvisto di impostazioni.

- *Post-condizioni*: le impostazioni del singolo blocco vengono modificate.

- *Scenario principale*:
  1. L'utente modifica le impostazioni di un blocco.
  2. Il sistema salva le modifiche del blocco.


- *Estensioni*:
  - Errore generico (#link(<UC5>)[*UC[5]*]).
  - Visualizzazione errore "Impostazioni non valide" (#link(<UC44>)[*UC[44]*]).




=== UC[40]: Modifica impostazioni del blocco "_Telegram_ - Send Bot Message" <UC40>

- *Attore principale*: utente esperto autenticato.

- *Pre-condizioni*: l'utente si trova sulla pagina di modifica di un flusso.

- *Post-condizioni*: vengono modificate le impostazioni del blocco.

- *Scenario principale*:
  1. L'utente preme il pulsante dedicato per visualizzare le impostazioni del blocco.
  2. L'utente modifica le impostazioni del blocco, come il messaggio da inviare.
  3. Il sistema salva le modifiche apportate.




=== UC[41]: Modifica impostazioni del blocco "_Pastebin_ - Create Paste" <UC41>

- *Attore principale*: utente esperto autenticato.

- *Pre-condizioni*: l'utente si trova sulla pagina di modifica di un flusso.

- *Post-condizioni*: vengono modificate le impostazioni del blocco "_Pastebin_ - Create Paste".

- *Scenario principale*:
  1. L'utente preme il pulsante dedicato per visualizzare le impostazioni del blocco.
  2. L'utente modifica le impostazioni del blocco, come il nome del _paste_, se il _paste_ è privato, pubblico o non in elenco, il formato, il contenuto del _paste_ e le chiavi di accesso all'API.
  3. Il sistema salva le modifiche apportate.





=== UC[42]: Modifica impostazioni del blocco "_System_ - Wait Second(s)" <UC42>

- *Attore principale*: utente esperto autenticato.

- *Pre-condizioni*: l'utente si trova sulla pagina di modifica di un flusso.

- *Post-condizioni*: vengono modificate le impostazioni del blocco "_System_ - Wait Second(s)".

- *Scenario principale*:
  1. L'utente preme il pulsante dedicato per visualizzare le impostazioni del blocco.
  2. L'utente modifica le impostazioni del blocco, come il numero di secondi da attendere prima di eseguire il blocco successivo.
  3. Il sistema salva le modifiche apportate.





=== UC[43]: Modifica impostazioni del blocco "_Notion_ - Get Page" <UC43>

- *Attore principale*: utente esperto autenticato.

- *Pre-condizioni*: l'utente si trova sulla pagina di modifica di un flusso.

- *Post-condizioni*: vengono modificate le impostazioni del blocco "_Notion_ - Get Page".

- *Scenario principale*:
  1. L'utente preme il pulsante dedicato per visualizzare le impostazioni del blocco.
  2. L'utente modifica le impostazioni del blocco, come il token di accesso all'API Notion e il PAGE_ID della pagina da cui prendere i contenuti.
  3. Il sistema salva le modifiche apportate.



=== UC[44]: Visualizzazione errore "Impostazioni non valide" <UC44>

- *Attore principale*: utente autenticato.

- *Pre-condizioni*: l'utente ha inserito nuove impostazioni all'interno di un blocco.

- *Post-condizioni*: le impostazioni inserite non sono valide.

- *Scenario principale*:
  1. L'utente modifica le impostazioni di un blocco.
  2. Il sistema mostra un errore se le impostazioni non sono considerate valide.



#figure(
  image("../../assets/usecasediagrams/5,39,40,41,42,43,44.svg"),
  caption: [Diagramma casi d'uso UC[5], UC[39], UC[40], UC[41], UC[42], UC[43], UC[44]],
)

=== UC[45]: Salvare una _routine_ <UC45>

- *Attore principale*: utente autenticato.

- *Pre-condizioni*: l'utente ha modificato qualcosa nella pagina di modifica di un flusso.

- *Post-condizioni*: il sistema ha salvato le modifiche.

- *Scenario principale*:
  1. L'utente preme il tasto per salvare le modifiche.
  2. Il sistema verifica che le informazioni inserite siano valide.
  3. Il sistema salva le modifiche.

- *Estensioni*:
  - Errore generico (#link(<UC5>)[*UC[5]*]).
  - Visualizzazione errore "Flusso incompleto" (#link(<UC46>)[*UC[46]*]).







=== UC[46]: Visualizzazione errore "Flusso incompleto" <UC46>

- *Attore principale*: utente autenticato.

- *Pre-condizioni*: l'utente ha premuto il tasto per salvare le modifiche.

- *Post-condizioni*: il sistema ritorna un messaggio di errore.

- *Scenario principale*:
  1. L'utente preme il testo per salvare.
  2. Il sistema verifica che il flusso sia completo e che nessun blocco sia staccato.
  3. Se il flusso non è completo, il sistema mostra un messaggio di errore all'utente.


#figure(image("../../assets/usecasediagrams/5,45,46.svg"), caption: [Diagramma casi d'uso UC[5], UC[45], UC[46]])








=== UC[47]: Eliminare un blocco da una _routine_ esistente <UC47>

- *Attore principale*: utente autenticato.

- *Pre-condizioni*: l'utente si trova nella pagina di modifica di una _routine_.

- *Post-condizioni*: il blocco selezionato viene rimosso dalla _routine_.

- *Scenario principale*:
  1. Il sistema rimuove il blocco dalla routine.

- *Estensioni*:
  - Errore generico (#link(<UC5>)[*UC[5]*]).




=== UC[48]: Eliminare un blocco da una _routine_ esistente da tastiera <UC48>

- *Attore principale*: utente autenticato.

- *Pre-condizioni*: l'utente si trova nella pagina di modifica di una _routine_.

- *Post-condizioni*: il blocco selezionato viene rimosso dalla _routine_.

- *Scenario principale*:
  1. L'utente seleziona il blocco da rimuovere.
  2. L'utente preme il tasto dedicato sulla tastiera (_backspace_) per rimuovere il blocco.
  3. Il sistema rimuove il blocco dalla _routine_.




=== UC[49]: Eliminare un blocco da una _routine_ esistente da interfaccia grafica <UC49>

- *Attore principale*: utente autenticato.

- *Pre-condizioni*: l'utente si trova nella pagina di modifica delle impostazioni del blocco da rimuovere.

- *Post-condizioni*: il blocco selezionato viene rimosso dalla _routine_.

- *Scenario principale*:
  1. L'utente preme il tasto dedicato per rimuovere il blocco.
  2. Il sistema chiude il menù di modifica delle impostazioni del blocco.
  3. Il sistema rimuove il blocco dalla _routine_.


#figure(image("../../assets/usecasediagrams/5,47,48,49.svg"), caption: [Diagramma casi d'uso UC[5], UC[47], UC[48], UC[49]])



=== UC[50]: Collegare due blocchi di una _routine_ esistente <UC50>

- *Attore principale*: utente esperto autenticato.

- *Pre-condizioni*: l'utente si trova nella pagina di modifica di un flusso.

- *Post-condizioni*: vengono collegati tra loro due blocchi.

- *Scenario principale*:
  1. L'utente preme e trascina l'_handle_ destro di un blocco all'_handle_ sinistro di un altro blocco creando un collegamento.
  2. Il sistema crea un collegamento tra i due blocchi.


#figure(image("../../assets/usecasediagrams/50.svg"), caption: [Diagramma casi d'uso UC[50]])





=== UC[51]: Scollegare due blocchi di una _routine_ esistente <UC51>

- *Attore principale*: utente esperto autenticato.

- *Pre-condizioni*: l'utente si trova nella pagina di modifica di un flusso.

- *Post-condizioni*: vengono scollegati due blocchi di una automazione.

- *Scenario principale*:
  1. L'utente seleziona il collegamento tra due blocchi.
  2. L'utente preme il tasto dedicato sulla tastiera (_backspace_) per scollegare i due blocchi.
  3. Il sistema rimuove il collegamento tra i due blocchi.

#figure(image("../../assets/usecasediagrams/51.svg"), caption: [Diagramma casi d'uso UC[51]])







=== UC[52]: Modifica della _password_ dell'account <UC52>

- *Attore principale*: utente autenticato.

- *Pre-condizioni*: l'utente si trova nella _dashboard_.

- *Post-condizioni*: la _password_ dell'utente viene aggiornata.

- *Scenario principale*:
  1. L'utente preme il tasto dedicato alla modifica della _password_ dell'account.
  2. Il sistema mostra una pagina con le impostazioni dell'account.
  3. L'utente inserisce la nuova _password_.
  4. L'utente reinserisce la _password_ creata.
  5. L'utente conferma la modifica della _password_.
  6. Il sistema salva le credenziali nel generico.

- *Estensioni*:
  - Errore generico (#link(<UC5>)[*UC[5]*]).

#figure(image("../../assets/usecasediagrams/5,7,8,52.svg"), caption: [Diagramma casi d'uso UC[5], UC[7], UC[8], UC[52]])








=== UC[53]: Impostare _Dark Mode_ o _Light Mode_ del _client_ <UC53>

- *Attore principale*: utente autenticato o non autenticato.

- *Pre-condizioni*: l'utente ha attiva una preferenza di tema.

- *Post-condizioni*: l'utente ha cambiato il tema del _client_.

- *Scenario principale*:
  1. L'utente preme l'icona del cambio tema del _client_.
  2. Il sistema cambia il tema selezionato del _client_.

#figure(image("../../assets/usecasediagrams/53.svg"), caption: [Diagramma casi d'uso UC[53]])






=== UC[54]: _Logout_ <UC54>

- *Attore principale*: utente autenticato.

- *Pre-condizioni*: l'utente si trova nella pagina di visualizzazione di tutte le routine.

- *Post-condizioni*: l'utente non è autenticato.

- *Scenario principale*:
  1. L'utente preme l'icona per effettuare il _logout_.
  2. Il sistema disconnette l'utente e lo riporta alla pagina di _login_.


#figure(image("../../assets/usecasediagrams/54.svg"), caption: [Diagramma casi d'uso UC[54]])



=== UC[55]: Visualizzare la dashboard / lista automazioni in seguito al login <UC55>
- *Attore principale*: utente autenticato.

- *Pre-condizioni*: l'utente si trova nella pagina di login.

- *Post-condizioni*: l'utente viene reindirizzato alla dashboard.

- *Scenario principale*:
  1. L'utente effettua l'accesso.
  2. Il sistema rimanda l'utente alla _dashboard_.

#figure(image("../../assets/usecasediagrams/55.svg"), caption: [Diagramma casi d'uso UC[55]])

=== UC[56]: Ritornare alla dashboard dalla pagina di modifica di un flusso <UC56>
- *Attore principale*: utente autenticato.

- *Pre-condizioni*: l'utente si trova nella pagina di modifica di un flusso.

- *Post-condizioni*: l'utente viene riportato alla _dashboard_.

- *Scenario principale*:
  1. L'utente preme il tasto dedicato per tornare alla _dashboard_.
  2. Il sistema riporta l'utente alla _dashboard_.

#figure(image("../../assets/usecasediagrams/56.svg"), caption: [Diagramma casi d'uso UC[56]])











#pagebreak()
= Requisiti
Questa sezione del documento descrive i requisiti del progetto proposto da _Var Group S.p.A._, individuati tramite un'attenta analisi del capitolato, colloqui interni tra i membri del gruppo e riunioni esterne con l'azienda proponente.\

Ciascun requisito è identificato da un codice univoco composto come segue:
#align(center)[*R[Rilevanza][Tipologia]-[ID]*]
dove:
- *R*: indica che si tratta di un requisito.

- *Rilevanza*: indica la rilevanza del requisito, che può essere:

  - *O*: requisito obbligatorio, pertanto indispensabile per lo sviluppo del progetto;

  - *D*: requisito desiderabile, pertanto non necessario ma fornisce un valore aggiunto al progetto;

  - *F*: requisito facoltativo, pertanto non necessario ma può essere implementato in accordo con l'azienda se vi sono le condizioni appropriate.

- *Tipologia*: indica la tipologia del requisito, che può essere:

  - *F*: requisito funzionale, che descrive una funzionalità del sistema;

  - *Q*: requisito qualitativo, che descrive un aspetto di qualità del prodotto per soddisfare esigenze specifiche;

  - *V*: requisito di vincolo, che descrive un vincolo imposto dal proponente nel capitolato e non può essere trascurato.

- *ID*: numero progressivo del requisito, univoco all'interno della rispettiva categoria.

Nella colonna "fonti" di della tabella viene indicato in quale contesto è stato stabilito ciascun requisito, tra cui:

- *UC[numero_caso_uso]*, se il requisito è stato stabilito durante la stesura dei casi d'uso;

- *Riunione esterna*, se il requisito è stato stabilito durante una riunione con l'azienda proponente;

- *Riunione interna*, se il requisito è stato stabilito durante una riunione interna tra i membri del gruppo;

- *Capitolato*, se il requisito è stato esplicitato nel capitolato.



== Requisiti funzionali
#table(
  columns: (1fr, 5fr, 2.5fr),
  rows: auto,
  inset: 6pt,
  table.header([*Codice*], [*Descrizione*], [*Fonti*]),
  [ROF-1],
  [L'utente deve poter effettuare _login_ con il proprio account per autenticarsi nel _client_],
  [#link(<UC1>)[*UC[1]*], Riunione esterna],

  [ROF-2],
  [L'utente autenticato deve poter inserire la sua _e-mail_ per accedere all'applicativo],
  [#link(<UC1>)[*UC[1]*], #link(<UC2>)[*UC[2]*], Riunione esterna],

  [ROF-3],
  [L'utente deve poter inserire la sua _password_ per accedere all'applicativo],
  [#link(<UC1>)[*UC[1]*], #link(<UC3>)[*UC[3]*], Riunione esterna],

  [ROF-4], [L'utente deve potersi registrare con la creazione di un nuovo account], [ #link(<UC6>)[*UC[6]*]],
  [ROF-5],
  [L'utente non autenticato deve poter inserire la sua _e-mail_ per registrarsi nell'applicativo],
  [#link(<UC6>)[*UC[6]*], #link(<UC2>)[*UC[2]*], Riunione esterna],

  [ROF-6],
  [L'utente deve poter creare la sua _password_ per registrarsi nell'applicativo],
  [#link(<UC6>)[*UC[7]*], #link(<UC3>)[*UC[3]*], Riunione esterna],

  [ROF-7],
  [L'utente deve poter reinserire la sua password per la registrazione nell'applicativo],
  [#link(<UC6>)[*UC[6]*], #link(<UC8>)[*UC[8]*]],

  [ROF-8],
  [Il sistema restituisce un errore per credenziali non valide inserite dall'utente],
  [#link(<UC1>)[*UC[1]*], #link(<UC4>)[*UC[4]*], #link(<UC6>)[*UC[6]*]],

  [ROF-9], [Il sistema restituisce un errore nel caso si riscontrino problemi], [#link(<UC5>)[*UC[5]*]],
  [ROF-10],
  [Il sistema deve restituire un errore se l'_e-mail_ è già in uso in fase di registrazione],
  [#link(<UC6>)[*UC[6]*], #link(<UC9>)[*UC[9]*]],

  [ROF-11],
  [Il sistema deve restituire un errore se la _password_ non adempie ai requisiti di sicurezza o le _password_ non coincidono tra loro in fase di registrazione],
  [#link(<UC4>)[*UC[4]*], #link(<UC6>)[*UC[6]*]],

  [ROF-12], [L'utente deve poter creare una nuova _routine_ ], [#link(<UC10>)[*UC[10]*], Capitolato],
  [ROF-13],
  [Il sistema deve restituire un errore se il nome della _routine_ da creare o modificare è già in uso],
  [#link(<UC11>)[*UC[11]*]],

  [ROF-14],
  [L'utente deve poter generare una _routine_ tramite linguaggio naturale],
  [#link(<UC10>)[*UC[10]*], #link(<UC12>)[*UC[12]*], Capitolato],

  [ROF-15],
  [L'utente deve poter visualizzare il modello di GenAI utilizzato per la generazione],
  [#link(<UC12>)[*UC[12]*] ,#link(<UC13>)[*UC[13]*]],

  [ROF-16], [L'utente deve poter modificare il modello di GenAI utilizzato per la generazione], [#link(<UC14>)[*UC[14]*]],
  [ROF-17],
  [Il sistema deve restituire un errore se non é possibile generare il flusso],
  [#link(<UC12>)[*UC[12]*], #link(<UC15>)[*UC[15]*]],

  [ROF-18], [L'utente deve poter visualizzare i dettagli di una _routine_ esistente], [#link(<UC16>)[*UC[16]*]],
  [ROF-19], [L'utente deve poter visualizzare il nome di una _routine_ esistente], [#link(<UC16>)[*UC[16]*], #link(<UC17>)[*UC[17]*]],
  [ROF-20],
  [L'utente deve poter visualizzare il diagramma dei blocchi di una _routine_ esistente],
  [#link(<UC16>)[*UC[16]*], #link(<UC18>)[*UC[18]*]],

  [ROF-21], [L'utente deve poter eliminare una _routine_ esistente], [#link(<UC19>)[*UC[19]*], Riunione esterna],
  [ROF-22], [L'utente deve poter avviare una routine esistente], [#link(<UC21>)[*UC[21]*]],
  [ROF-23], [L'utente deve poter avviare una routine esistente dalla dashboard], [#link(<UC21>)[*UC[21]*], #link(<UC22>)[*UC[22]*]],
  [ROF-24],
  [L'utente deve poter avviare una routine esistente dalla pagina di modifica del flusso],
  [#link(<UC21>)[*UC[21]*], #link(<UC23>)[*UC[23]*]],

  [ROF-25], [L'utente deve poter interrompere una routine avviata], [#link(<UC24>)[*UC[24]*]],
  [ROF-26], [L'utente deve poter interrompere una routine avviata dalla dashboard], [#link(<UC24>)[*UC[24]*], #link(<UC25>)[*UC[25]*] ],
  [ROF-27],
  [L'utente deve poter interrompere una routine tramite la propria pagina di modifica],
  [#link(<UC24>)[*UC[24]*], #link(<UC26>)[*UC[26]*] ],

  [ROF-28],
  [Il sistema deve restituire un errore nel caso non sia possibile interrompere una _routine_ in esecuzione],
  [#link(<UC24>)[*UC[24]*], #link(<UC27>)[*UC[27]*], #link(<UC5>)[*UC[5]*]],

  [ROF-29], [L'utente deve poter aggiungere un blocco ad una _routine_ esistente], [#link(<UC28>)[*UC[28]*] ],
  [ROF-30],
  [L'utente deve poter aggiungere un blocco del tipo "_Telegram_ - Send Bot Message" ad una _routine_ esistente],
  [#link(<UC28>)[*UC[28]*],#link(<UC29>)[*UC[29]*]],

  [ROF-31],
  [L'utente deve poter aggiungere un blocco del tipo "_Pastebin_ - Create Paste" ad una _routine_ esistente],
  [#link(<UC28>)[*UC[28]*],#link(<UC30>)[*UC[30]*] ],

  [ROF-32],
  [L'utente deve poter aggiungere un blocco del tipo "_AI_ - Summarize" ad una _routine_ esistente],
  [#link(<UC28>)[*UC[28]*], #link(<UC31>)[*UC[31]*] ],

  [ROF-33],
  [L'utente deve poter aggiungere un blocco del tipo "_System_ - Wait Second(s)" ad una _routine_ esistente],
  [#link(<UC28>)[*UC[28]*], #link(<UC32>)[*UC[32]*] ],

  [ROF-34],
  [L'utente deve poter aggiungere un blocco del tipo "_Notion_ - Get Page" ad una _routine_ esistente],
  [#link(<UC28>)[*UC[28]*], #link(<UC33>)[*UC[33]*] ],

  [ROF-35], [L'utente deve poter visualizzare le impostazioni di un singolo blocco], [#link(<UC34>)[*UC[34]*]],
  [ROF-36],
  [L'utente deve poter visualizzare le impostazioni di un blocco del tipo "_Telegram_ - Send Bot Message"],
  [#link(<UC34>)[*UC[34]*], #link(<UC35>)[*UC[35]*]],

  [ROF-37],
  [L'utente deve poter visualizzare le impostazioni di un blocco del tipo "_Pastebin_ - Create Paste"],
  [#link(<UC34>)[*UC[34]*], #link(<UC36>)[*UC[36]*]],

  [ROF-38],
  [L'utente deve poter visualizzare le impostazioni di un blocco del tipo "_System_ - Wait Second(s)"],
  [#link(<UC34>)[*UC[34]*], #link(<UC37>)[*UC[37]*]],

  [ROF-39],
  [L'utente deve poter visualizzare le impostazioni di un blocco del tipo "_Notion_ - Get Page"],
  [#link(<UC34>)[*UC[34]*], #link(<UC38>)[*UC[38]*]],

  [ROF-40], [L'utente deve poter modificare le impostazioni di un singolo blocco"], [#link(<UC39>)[*UC[39]*]],
  [ROF-41],
  [L'utente deve poter modificare le impostazioni di un blocco del tipo "_Telegram_ - Send Bot Message"],
  [#link(<UC39>)[*UC[39]*],#link(<UC40>)[*UC[40]*]],

  [ROF-42],
  [L'utente deve poter modificare le impostazioni di un blocco del tipo "_Pastebin_ - Create Paste"],
  [#link(<UC39>)[*UC[39]*],#link(<UC41>)[*UC[41]*] ],

  [ROF-43],
  [L'utente deve poter modificare le impostazioni di un blocco del tipo "_System_ - Wait Second(s)"],
  [#link(<UC39>)[*UC[39]*], #link(<UC42>)[*UC[42]*] ],

  [ROF-44],
  [L'utente deve poter modificare le impostazioni di un blocco del tipo "_Notion_ - Get Page"],
  [#link(<UC39>)[*UC[39]*], #link(<UC43>)[*UC[43]*] ],

  [ROF-45],
  [Il sistema deve restituire un errore se le impostazioni del blocco non sono considerate valide],
  [#link(<UC44>)[*UC[44]*],#link(<UC5>)[*UC[5]*], Riunione interna],

  [ROF-46],
  [Il sistema deve salvare le modifiche apportate dall'utente alla _routine_ appena viene premuto il tasto di salvataggio],
  [#link(<UC45>)[*UC[45]*], Riunione interna],

  [ROF-47],
  [Il sistema deve restituire un errore se il flusso è incompleto e non può essere salvato],
  [#link(<UC46>)[*UC[46]*], #link(<UC5>)[*UC[5]*], Riunione interna],

  [ROF-48],
  [L'utente deve potere eliminare un blocco da una _routine_ esistente ],
  [#link(<UC47>)[*UC[47]*], #link(<UC48>)[*UC[48]*], #link(<UC49>)[*UC[49]*] ],

  [ROF-49],
  [L'utente deve potere eliminare un blocco da una _routine_ esistente da tastiera],
  [#link(<UC47>)[*UC[47]*], #link(<UC48>)[*UC[48]*] ],

  [ROF-50],
  [L'utente deve potere eliminare un blocco da una _routine_ esistente da interfaccia grafica],
  [#link(<UC47>)[*UC[47]*], #link(<UC48>)[*UC[49]*] ],

  [ROF-51], [L'utente deve potere collegare due blocchi di una _routine_ esistente], [#link(<UC50>)[*UC[50]*], Capitolato ],
  [ROF-52], [L'utente deve potere scollegare due blocchi di una _routine esistente_], [#link(<UC51>)[*UC[51]*], Capitolato ],
  [ROF-53], [L'utente deve poter modificare la propria _password_], [#link(<UC52>)[*UC[52]*], Riunione interna],
  [RDF-54], [L’utente può impostare la modalità del client in dark mode o light mode], [#link(<UC53>)[*UC[53]*], Riunione esterna],
  [ROF-55], [L'utente deve poter effettuare il _logout_ dall'applicativo], [#link(<UC54>)[*UC[54]*], Riunione interna],
  [ROF-56],
  [L'utente deve poter visualizzare la dashboard in seguito al login nell'applicativo],
  [#link(<UC55>)[*UC[55]*], Riunione interna],

  [ROF-57], [L'utente deve poter ritornare alla dashboard dalla pagina di modifica flusso], [#link(<UC56>)[*UC[56]*]],
  [ROF-58], [L'utente deve poter modificare il nome di una _routine_ esistente], [#link(<UC20>)[*UC[20]*], Riunione esterna],
)


== Requisiti qualitativi
#table(
  columns: (1fr, 5fr, 2.5fr),
  rows: auto,
  inset: 6pt,
  table.header([*Codice*], [*Descrizione*], [*Fonti*]),
  [ROQ-1],
  [Condivisione del codice prodotto in formato sorgente utilizzando sistemi di versionamento del codice come #glossario("Git") o _repository online_ con _Var Group S.p.A._],
  [Capitolato, Riunione interna],

  [ROQ-2], [Progettazione e implementazione di opportuni test di unità], [Capitolato],
  [ROQ-3], [Progettazione e implementazione di opportuni test di integrazione], [Capitolato],
  [ROQ-4], [Progettazione e implementazione di opportuni test di sistema], [Capitolato],
  [ROQ-5], [Progettazione e implementazione di opportuni test di accettazione], [Capitolato],
  [ROQ-6],
  [Documentazione dei test effettuati nel #link("https://sigma18unipd.github.io/documentiCompilati/2-RTB/documentidiprogetto/pianodiqualifica_1.0.0.pdf")[Piano di qualifica (1.0.0)]],
  [Capitolato, Riunione interna],

  [ROQ-7],
  [Rispetto di tutte le norme presenti nel documento #link("https://sigma18unipd.github.io/documentiCompilati/2-RTB/documentidiprogetto/normediprogetto_1.0.0.pdf")[Norme di progetto (1.0.0)]],
  [Capitolato, Riunione interna],
)


== Requisiti di vincolo
#table(
  columns: (1fr, 5fr, 2.5fr),
  rows: auto,
  inset: 6pt,
  table.header([*Codice*], [*Descrizione*], [*Fonti*]),
  [ROV-1], [Utilizzo delle seguenti tecnologie: NodeJS, Python, Typescript, AWS, Docker, React e MongoDB.], [Capitolato, Riunione esterna],
  [ROV-2], [Il prodotto deve funzionare sulle versioni stabili di _Chromium 138_ e _Firefox ESR 140_.], [Capitolato],
  [ROV-3], [Creazione dell'applicativo in ottica modulare per estendere le funzioni della piattaforma], [Capitolato],
  [ROV-4], [Creazione di almeno 3 blocchi di automazione inerenti a servizi diversi], [Capitolato],
)

== Tracciamento
#table(
  columns: (1fr, 1fr),
  rows: auto,
  inset: 6pt,
  table.header([*Fonte*], [*Requisito*]),
  [UC1], [ROF-1, ROF-2, ROF-3, ROF-8 ],
  [UC2], [ROF-2, ROF-5],
  [UC3], [ROF-3, ROF-6],
  [UC4], [ROF-8, ROF-11],
  [UC5], [ROF-9],
  [UC6], [ROF-4, ROF-5, ROF-6, ROF-7, ROF-8, ROF-10, ROF-11,],
  [UC7], [ROF-6],
  [UC8], [ROF-7],
  [UC9], [ROF-10],
  [UC10], [ROF-12, ROF-14],
  [UC11], [ROF-13],
  [UC12], [ROF-14, ROF-15, ROF-17],
  [UC13], [ROF-15],
  [UC14], [ROF-16],
  [UC15], [ROF-17],
  [UC16], [ROF-18, ROF-19],
  [UC17], [ROF-19],
  [UC18], [ROF-20],
  [UC19], [ROF-21],
  [UC20], [ROF-58],
  [UC21], [ROF-22, ROF-23, ROF-24],
  [UC22], [ROF-23],
  [UC23], [ROF-24],
  [UC24], [ROF-25, ROF-26, ROF-27, ROF-28],
  [UC25], [ROF-26],
  [UC26], [ROF-27],
  [UC27], [ROF-28],
  [UC28], [ROF-29, ROF-30, ROF-31, ROF-32, ROF-33, ROF-34],
  [UC29], [ROF-30],
  [UC30], [ROF-31],
  [UC31], [ROF-32],
  [UC32], [ROF-33],
  [UC33], [ROF-34],
  [UC34], [ROF-35, ROF-37, ROF-38, ROF-39],
  [UC35], [ROF-36],
  [UC36], [ROF-37],
  [UC37], [ROF-38],
  [UC38], [ROF-39],
  [UC39], [ROF-41, ROF-42, ROF-43, ROF-44],
  [UC40], [ROF-41],
  [UC41], [ROF-42],
  [UC42], [ROF-43],
  [UC43], [ROF-44],
  [UC44], [ROF-45],
  [UC45], [ROF-46],
  [UC46], [ROF-47],
  [UC47], [ROF-48, ROF-49, ROF-50],
  [UC48], [ROF-48, ROF-49],
  [UC49], [ROF-48, ROF-50],
  [UC50], [ROF-51],
  [UC51], [ROF-52],
  [UC52], [ROF-53],
  [UC53], [RDF-54],
  [UC54], [ROF-55],
  [UC55], [ROF-56],
  [UC56], [ROF-57],
  [Capitolato], [ROF-12, ROF-14, ROF-51, ROF-52, ROQ-1, ROQ-2, ROQ-3, ROQ-4, ROQ-5, ROQ-6, ROQ-7, ROV-1, ROV-2, ROV-3, ROV-4],
  [Riunioni interne], [ROF-45, ROF-46, ROF-47, ROF-53, ROF-55, ROF-56, ROQ-1, ROQ-6, ROQ-7],
  [Riunioni esterne], [ROF-1, ROF-2, ROF-3, ROF-5, ROF-6, ROF-21, RDF-54, ROF-58, ROV-1],
)
#pagebreak()
== Riepilogo

#table(
  columns: (1fr, 1fr, 1fr, 1fr, 1fr),
  rows: auto,
  inset: 6pt,
  table.header([*Tipologia*], [*Obbligatori*], [*Desiderabili*], [*Facoltativi*], [*Totale*]),
  [*Funzionali*], [57], [1], [0], [58],
  [*Qualitativi*], [7], [0], [0], [7],
  [*Vincolo*], [4], [0], [0], [4],
  [*Totale*], [68], [1], [0], [69],
)
