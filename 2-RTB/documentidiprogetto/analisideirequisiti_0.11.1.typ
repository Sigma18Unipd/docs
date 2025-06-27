#import "../../templates/template.typ": *
#show: content => verbale(
  titoloDocumento: "Analisi dei Requisiti",
  abstract: "",
  responsabili: "Pietro Crotti",
  redattori: ("Pietro Crotti", "Matteo Marangon", "Carmelo Russello", "Mirco Borella", "Alessandro Bernardello"),
  verificatori: ("Pietro Crotti", "Matteo Marangon", "Aleena Mathew", "Carmelo Russello"),
  tipo: "Documento Esterno",
  destinatari: ("Sigma18", "Prof. Tullio Vardanega", "Prof. Riccardo Cardin", "Var Group S.p.A."),
  versioneAttuale: "0.11.1",
  content: content,
  versioni: (
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

- #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C3.pdf")[Capitolato C3: Automatizzare le _routine_ digitali tramite l'intelligenza generativa]

- #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf")[Regolamento progetto didattico]

- #link("https://www.iso.org/standard/65694.html")[ISO/IEC 31000:2018]

=== Riferimenti informativi

- #link("https://sigma18unipd.github.io/documentiCompilati/2-RTB/documentidiprogetto/glossario.pdf")[Glossario]

- #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T05.pdf")[Dispensa T05: Analisi dei requisiti]

- #link("https://www.math.unipd.it/~rcardin/swea/2022/Diagrammi%20Use%20Case.pdf")[Diagrammi dei casi d'uso]
#pagebreak()




= Descrizione del prodotto
== Obiettivi del prodotto
L'obiettivo del nostro prodotto è automatizzare _routine_ digitali che richiederebbero interventi manuali impegnativi oppure onerosi in termini di tempo, sfruttando anche l'ausilio dell'intelligenza artificiale per permettere la creazione di queste automazioni anche ad utenti inesperti.

== Utenti
Il prodotto è destinato a due tipologie di utenti: utente base e utente avanzato.

=== Utente base
L'utente base è colui che non ha particolari conoscenze tecniche o tecnologiche, pertanto ha bisogno di essere aiutato tramite un'interfaccia semplice e intuitiva per poter utilizzare il prodotto senza difficoltà.

=== Utente avanzato
L'utente avanzato, è colui che dispone di una conoscenza più approfindita sul funzionamento dei vari componenti che devono interagire tra loro per la creazione di un flusso di lavoro. Dunque può volere un livello di configurazione maggiore e talvolta anche creare intere automazioni manualmente.
L'utente avanzato può anche aver necessità di modificare i vari parametri dell'#glossario("LLM") come ad esempio la temperatura.

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
  2. L'utente inserisce la propria _e-mail_ (#link(<UC2>)[*UC[2]*]).
  3. L'utente inserisce la propria _password_.
  4. Il sistema verifica le credenziali e permette di accedere alla #glossario("dashboard").
- *Estensioni*:
  - Credenziali non valide (#link(<UC3>)[*UC[3]*]).
  - Errore _database_ (#link(<UC4>)[*UC[4]*]).




=== UC[2]: Verifica formato _e-mail_ <UC2>

- *Attore principale*: utente non autenticato.

- *Pre-condizioni*: l'utente ha inserito la propria _e-mail_.

- *Post-condizioni*: il sistema verifica il formato dell'_e-mail_.

- *Scenario principale*:
  1. L'utente inserisce la propria _e-mail_.
  2. Il sistema verifica il formato dell'_e-mail_.
  3. Se il formato è valido, il sistema procede con l'autenticazione.
  4. Se il formato non è valido, il sistema mostra un messaggio di errore.






=== UC[3]: Errore "Credenziali non valide" <UC3>

- *Attore principale*: utente non autenticato.

- *Pre-condizioni*: l'utente inserisce le proprie credenziali.

- *Post-condizioni*: il sistema individua credenziali errate.

- *Scenario principale*:
  1. L'utente inserisce le proprie credenziali.
  2. Il sistema individua le credenziali errate e invia un messaggio di errore all'utente.
  3. L'utente può ripetere l'inserimento delle credenziali precedentemente errate.





=== UC[4]: Errore _database_ <UC4>

- *Attore principale*: utente.

- *Pre-condizioni*: il sistema riceve dei dati.

- *Post-condizioni*: il sistema mostra un errore.

- *Scenario principale*:
  1. Il sistema riceve dei dati da processare.
  2. Il sistema non riesce a processare i dati e mostra un messaggio di errore all'utente.

#figure(image("../../assets/usecasediagrams/UC_1_2_3_4.png"), caption: [Diagramma casi d'uso UC[1], UC[2], UC[3], UC[4]])










//Rigenerare il diagramma UML da nuovi usecase
=== UC[5]: Registrazione <UC5>

- *Attore principale*: utente non autenticato.

- *Pre-condizioni*: l'utente non ha un _account_.

- *Post-condizioni*: l'account utente viene creato.

- *Scenario principale*:
  1. L'utente accede all'applicativo.
  2. L'utente accede alla pagina di registrazione.
  3. L'utente inserisce la propria _e-mail_ (#link(<UC2>)[*UC[2]*]).
  4. L'utente inserisce la _password_ (#link(<UC6>)[*UC[6]*], #link(<UC7>)[*UC[7]*]).
  5. L'utente reinserisce la _password_ creata (#link(<UC6>)[*UC[6]*], #link(<UC7>)[*UC[7]*]).
  6. Il sistema crea l'_account_ e salva le credenziali nel _database_.
- *Estensioni*:
  - _E-mail_ già in uso (#link(<UC8>)[*UC[8]*]).
  - Errore _database_ (#link(<UC4>)[*UC[4]*]).






=== UC[6]: Verifica formato _password_ <UC6>

- *Attore principale*: utente non autenticato.

- *Pre-condizioni*: l'utente ha inserito la propria _password_.

- *Post-condizioni*: il sistema verifica il formato della _password_.

- *Scenario principale*:
  1. L'utente inserisce la propria _password_.
  2. Il sistema verifica il formato della _password_.
  3. Se il formato è valido, il sistema procede con l'autenticazione.
  4. Se il formato non è valido, il sistema mostra un messaggio di errore.






=== UC[7]: Verifica _password_ uguali <UC7>
- *Attore principale*: utente non autenticato.

- *Pre-condizioni*: l'utente non possiede un _account_, l'utente ha inserito le due _password_ nell'apposito campo nella pagina di registrazione.

- *Post-condizioni*: il sistema verifica che le due _password_ inserite siano uguali.

- *Scenario principale*:
  1. L'utente inserisce le due _password_.





=== UC[8]: Errore "_E-mail_ già in uso" <UC8>
- *Attore principale*: utente non autenticato.

- *Pre-condizioni*: l'utente non possiede un _account_, l'utente ha confermato il _form_ di registrazione.

- *Post-condizioni*: la _e-mail_ scelta dall'utente è già in uso.

- *Scenario principale*:
  1. L'utente inserisce i suoi dati nell'apposito form di registrazione.
  2. Il sistema individua che esiste già un _account_ che utilizza la _e-mail_ scelta.
  3. Il sistema ritorna un messaggio di errore all'utente.


#figure(
  image("../../assets/usecasediagrams/UC_2_4_5_6_7_8.png"),
  caption: [Diagramma casi d'uso UC[2], UC[4], UC[5], UC[6], UC[7], UC[8]],
)








\
=== UC[9]: Creazione nuova _routine_ <UC9>
- *Attore principale*: utente autenticato.

- *Pre-condizioni*: l'utente ha effettuato l'accesso e si trova nella _dashboard_.

- *Post-condizioni*: viene creata una nuova _routine_.

- *Scenario principale*:
  1. L'utente preme il tasto di creazione di una nuova _routine_ nella _dashboard_.
  2. L'utente inserisce il nome della _routine_.
  3. Il sistema crea una nuova _routine_ e l'utente viene portato alla pagina di modifica del flusso.

- *Estensioni*:
  - Nome _routine_ già in uso (#link(<UC10>)[*UC[10]*])
  - Errore _database_ (#link(<UC4>)[*UC[4]*]).





=== UC[10]: Errore "Nome _routine_ già in uso" <UC10>
- *Attore principale*: utente autenticato.

- *Pre-condizioni*: il sistema riceve il nome della _routine_ da creare.

- *Post-condizioni*: il sistema verifica se il nome della _routine_ è univoco.

- *Scenario principale*:
  1. L'utente inserisce il nome della _routine_.
  2. Il sistema verifica se il nome della _routine_ è univoco.
  3. Se il nome è univoco, il sistema crea la _routine_ e l'utente viene portato alla pagina di modifica del flusso.
  4. Se il nome non è univoco, il sistema mostra un messaggio di errore all'utente.




#figure(
  image("../../assets/usecasediagrams/UC_4_9_10.png"),
  caption: [Diagramma casi d'uso UC[4], UC[9], UC[10]],
)
\

=== UC[11]: Generare una _routine_ mediante linguaggio naturale <UC11>

- *Attore principale*: utente autenticato.

- *Pre-condizioni*: l'utente si trova nella pagina di un flusso.

- *Post-condizioni*: vengono generati i blocchi all'interno dell'interfaccia.

- *Scenario principale*:
  1. L'utente preme il tasto dedicato nella pagina.
  2. L'utente inserisce la descrizione della _routine_ in linguaggio naturale.
  3. Il sistema genera i blocchi e gli archi all'interno dell'interfaccia.
  4. Il sistema mostra il flusso generato all'utente.

- *Estensioni*:
  - Errore "Impossibile generare il flusso" (#link(<UC12>)[*UC[12]*]).
  - Errore _database_ (#link(<UC4>)[*UC[4]*]).






=== UC[12]: Visualizzazione dell'errore "Impossibile generare il flusso" <UC12>

- *Attore principale*: utente autenticato.

- *Pre-condizioni*: l'utente sta tentando di generare i blocchi del flusso tramite linguaggio naturale, ma si verifica un errore.

- *Post-condizioni*: il sistema mostra il messaggio di errore all'utente.

- *Scenario principale*:
  1. L'utente l'inserisce il _prompt_ in linguaggio naturale.
  2. L'LLM non riesce a generare il flusso dei blocchi
  3. Il sistema mostra un messaggio di errore.


#figure(
  image("../../assets/usecasediagrams/UC_4_11_12.png"),
  caption: [Diagramma casi d'uso UC[4], UC[11], UC[12]],
)

\

=== UC[13]: Modificare parametri di generazione <UC13>

- *Attore principale*: utente esperto autenticato.

- *Pre-condizioni*: l'utente clicca sul dialogo per la modifica dei parametri di generazione, nella pagina di un flusso

- *Post-condizioni*: le impostazioni di generazione vengono modificate secondo le preferenze dell'utente.

- *Scenario principale*:
  1. L'utente preme l'icona delle impostazioni del modello.
  2. Il sistema mostra nell'interfaccia grafica le impostazioni di generazione e dei modelli.
  3. L'utente modifica le impostazioni desiderate.
  4. Il sistema salva le modifiche per il flusso corrente.

- *Estensioni*:
- Errore _database_ (#link(<UC4>)[*UC[4]*]).




#figure(
  image("../../assets/usecasediagrams/UC_4_13.png"),
  caption: [Diagramma casi d'uso UC[4], UC[13],],
)
\




=== UC[14]: Visualizzare i dettagli di una _routine_ esistente <UC14>
- *Attore principale*: utente autenticato.

- *Pre-condizioni*: l'utente si trova nella _dashboard_.

- *Post-condizioni*: l'utente si trova nella pagina di modifica di un flusso.

- *Scenario principale*
  1. L'utente seleziona una _routine_ esistente dalla lista delle automazioni nella _dashboard_.
  2. Il sistema mostra una pagina con i dettagli della _routine_ selezionata.

#figure(image("../../assets/usecasediagrams/UC_14.png"), caption: [Diagramma casi d'uso UC[14]])
\







=== UC[15]: Eliminare una _routine_ esistente <UC15>
- *Attore principale*: utente autenticato.

- *Pre-condizioni*: l'utente si trova nella pagina di un flusso.

- *Post-condizioni*: utente viene ritornato alla _dashboard_ e la _routine_ viene eliminata.

- *Scenario principale*:
  1. L'utente accede alla pagina di dettagli di una _routine_ (#link(<UC14>)[*UC[14]*]).
  2. L'utente seleziona l'opzione di eliminazione della _routine_.
  3. Il sistema mostra un messaggio di conferma dell'eliminazione.
  4. Se l'utente conferma l'eliminazione, il sistema elimina la _routine_ e ritorna l'utente alla _dashboard_.

#figure(image("../../assets/usecasediagrams/UC_15.png"), caption: [Diagramma casi d'uso UC[15]])







=== UC[16]: Modifica del nome di una _routine_ <UC16>

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
  - Nome _routine_ già in uso (#link(<UC10>)[*UC[10]*]).
  - Errore _database_ (#link(<UC4>)[*UC[4]*]).

#figure(
  image("../../assets/usecasediagrams/UC_4_10_16.png"),
  caption: [Diagramma casi d'uso UC[4], UC[10], UC[16],],
)
\





=== UC[17]: Avviare una _routine_ esistente dalla _dashboard_ <UC17>

- *Attore principale*: utente autenticato.

- *Pre-condizioni*: l'utente si trova nella _dashboard_.

- *Post-condizioni*: una _routine_ viene avviata.

- *Scenario principale*:
  1. L'utente preme l'icona di avvio della _routine_ interessata.
  2. Il sistema avvia la _routine_.

- *Estensioni*:
  - Errore _database_ (#link(<UC4>)[*UC[4]*]).


#figure(
  image("../../assets/usecasediagrams/UC_4_17.png"),
  caption: [Diagramma casi d'uso UC[4], UC[17]],
)
\


=== UC[18]: Avviare una _routine_ esistente tramite la pagina di modifica del flusso <UC18>

- *Attore principale*: utente autenticato.

- *Pre-condizioni*: l'utente si trova nella pagina di modifica del flusso.

- *Post-condizioni*: la relativa _routine_ viene avviata.

- *Scenario principale*:
  1. L'utente preme l'icona di avvio della _routine_ interessata.
  2. Il sistema avvia la _routine_.

- *Estensioni*:
  - Errore _database_ (#link(<UC4>)[*UC[4]*]).



#figure(
  image("../../assets/usecasediagrams/UC_4_18.png"),
  caption: [Diagramma casi d'uso UC[4], UC[18]],
)
\





=== UC[19]: Interrompere una _routine_ avviata <UC19>

- *Attore principale*: utente autenticato.

- *Pre-condizioni*: l'utente ha una _routine_ attiva o in esecuzione.

- *Post-condizioni*: l'esecuzione della _routine_ viene interrotta.

- *Scenario principale*:
  1. L'utente preme l'icona di _stop_ della _routine_.
  2. Il sistema interrompe l'esecuzione della _routine_ all'operazione corrente.

- *Estensioni*:
  - Visualizzazione errore "Impossibile bloccare la _routine_" (#link(<UC20>)[*UC[20]*]).
  - Errore _database_ (#link(<UC4>)[*UC[4]*]).






=== UC[20]: Visualizzazione errore "Impossibile bloccare la _routine_" <UC20>

- *Attore principale*: utente autenticato.

- *Pre-condizioni*: l'utente ha provato a bloccare una _routine_ in esecuzione.

- *Post-condizioni*: il sistema mostra un errore.

- *Scenario principale*:
  1. L'utente prova a bloccare una _routine_ in _esecuzione_.
  2. Se l'azione della _routine_ non è bloccabile, il sistema mostra un messaggio di errore all'utente.
  3. Se la _routine_ non è più in esecuzione, il sistema mostra un messaggio di errore all'utente.




#figure(
  image("../../assets/usecasediagrams/UC_4_19_20.png"),
  caption: [Diagramma casi d'uso UC[4], UC[19], UC[20]],
)
\



=== UC[21]: Aggiunta di un blocco ad una _routine_ esistente <UC21>
- *Attore principale*: utente esperto autenticato.

- *Pre-condizioni*: l'utente si trova sulla pagina di modifica di un flusso.

- *Post-condizioni*: viene modificato il comportamento della _routine_.

- *Scenario principale*:
  1. L'utente seleziona dalla lista dei blocchi un elemento.
  2. L'utente trascina un blocco dalla barra laterale e lo rilascia nella posizione desiderata.
  3. L'utente collega il blocco a quelli già esistenti.
  4. Il sistema mostra il blocco rilasciato nella posizione desiderata, aggiornando il comportamento della _routine_.


- *Estensioni*:
  - Errore _database_ (#link(<UC4>)[*UC[4]*]).
#figure(image("../../assets/usecasediagrams/UC_4_21.png"), caption: [Diagramma casi d'uso UC[4], UC[21]])
\








=== UC[22]: Modificare le impostazioni di un singolo blocco <UC22>

- *Attore principale*: utente autenticato.

- *Pre-condizioni*: Si trova nella pagina di modifica di un flusso contenente almeno un blocco provvisto di impostazioni.

- *Post-condizioni*: le impostazioni del singolo blocco vengono modificate.

- *Scenario principale*:
  1. L'utente preme sull'icona delle impostazioni di un blocco all'interno del flusso.
  2. Il sistema mostra una finestra con le impostazioni del blocco.
  3. L'utente modifica le impostazioni desiderate.
  4. Il sistema salva le modifiche per il relativo blocco.


- *Estensioni*:
  - Errore _database_ (#link(<UC4>)[*UC[4]*]).
  - Visualizzazione errore "Impostazioni non valide" (#link(<UC23>)[*UC[23]*]).







=== UC[23]: Visualizzazione errore "Impostazioni non valide" <UC23>

- *Attore principale*: utente autenticato.

- *Pre-condizioni*: l'utente ha inserito nuove impostazioni all'interno di un blocco.

- *Post-condizioni*: le impostazioni inserite non sono valide.

- *Scenario principale*:
  1. L'utente modifica le impostazioni di un blocco.
  2. Il sistema mostra un errore se le impostazioni non sono considerate valide.






=== UC[24]: Autenticazione ad un servizio tramite impostazioni del blocco <UC24>

- *Attore principale*: utente autenticato.

- *Pre-condizioni*: l'utente si trova nelle impostazione del blocco (#link(<UC22>)[*UC[22]*]).

- *Post-condizioni*: l'utente ha eseguito l'accesso al servizio del blocco.

- *Scenario principale*:
  1. L'utente preme il tasto di accesso al servizio del blocco selezionato.
  2. Il sistema mostra la pagina di accesso al servizio del blocco selezionato.
  3. L'utente inserisce le credenziali del servizio del blocco selezionato.
  4. Il sistema attende il server di autenticazione del servizio del blocco selezionato.

- *Estensioni*:
  - Errore _database_ (#link(<UC4>)[*UC[4]*]).
  - Visualizzazione errore "Impostazioni non valide" (#link(<UC23>)[*UC[23]*]).


  #figure(
    image("../../assets/usecasediagrams/UC_4_22_23_24.png"),
    caption: [Diagramma casi d'uso UC[4], UC[22], UC[23], UC[24],],
  )
  \





=== UC[25]: Salvare una _routine_ <UC25>

- *Attore principale*: utente autenticato.

- *Pre-condizioni*: l'utente ha modificato qualcosa nella pagina di modifica di un flusso.

- *Post-condizioni*: il sistema ha salvato le modifiche.

- *Scenario principale*:
  1. L'utente preme il tasto per salvare le modifiche.
  2. Il sistema verifica che le informazioni inserite siano valide.
  3. Il sistema salva le modifiche.

- *Estensioni*:
  - Errore _database_ (#link(<UC4>)[*UC[4]*]).
  - Visualizzazione errore "Flusso incompleto" (#link(<UC26>)[*UC[26]*]).





=== UC[26]: Visualizzazione errore "Flusso incompleto" <UC26>

- *Attore principale*: utente autenticato.

- *Pre-condizioni*: l'utente ha premuto il tasto per salvare le modifiche.

- *Post-condizioni*: il sistema ritorna un messaggio di errore.

- *Scenario principale*:
  1. L'utente preme il testo per salvare.
  2. Il sistema verifica che il flusso sia completo e che nessun blocco sia staccato.
  3. Se il flusso non è completo, il sistema mostra un messaggio di errore all'utente.


#figure(
  image("../../assets/usecasediagrams/UC_4_25_26.png"),
  caption: [Diagramma casi d'uso UC[4], UC[25], UC[26],],
)
\




=== UC[27]: Modifica della _password_ dell'account <UC27>
- *Attore principale*: utente autenticato.

- *Pre-condizioni*: l'utente si trova nella _dashboard_.

- *Post-condizioni*: la _password_ dell'utente viene aggiornata.

- *Scenario principale*:
  1. L'utente preme il tasto dedicato alla modifica della _password_ dell'account.
  2. Il sistema mostra una pagina con le impostazioni dell'account.
  3. L'utente inserisce la nuova _password_ (#link(<UC6>)[*UC[6]*], #link(<UC7>)[*UC[7]*]).
  4. L'utente reinserisce la _password_ creata (#link(<UC6>)[*UC[6]*], #link(<UC7>)[*UC[7]*]).
  5. L'utente conferma la modifica della _password_.
  6. Il sistema salva le credenziali nel _database_.

- *Estensioni*:
  - Errore _database_ (#link(<UC4>)[*UC[4]*]).


#figure(image("../../assets/usecasediagrams/UC_4_6_7_27.png"), caption: [Diagramma casi d'uso UC[4], UC[6], UC[7], UC[27]])
\



=== UC[28]: Impostare _Dark Mode_ o _Light Mode_ del _client_ <UC28>
- *Attore principale*: utente autenticato o non autenticato.

- *Pre-condizioni*: l'utente ha attiva una preferenza di tema.

- *Post-condizioni*: l'utente ha cambiato il tema del _client_.

- *Scenario principale*:
  1. l'utente preme l'icona del cambio tema del _client_.
  2. Il sistema cambia il tema selezionato del _client_.

#figure(image("../../assets/usecasediagrams/UC_28.png"), caption: [Diagramma casi d'uso UC[28],])
\





=== UC[29]: _Logout_ <UC29>
- *Attore principale*: utente autenticato.

- *Pre-condizioni*: l'utente è autenticato.

- *Post-condizioni*: l'utente non è autenticato.

- *Scenario principale*:
  1. l'utente preme l'icona per effettuare il _logout_.
  2. Il sistema disconnette l'utente e lo riporta alla pagina di _login_.



  #figure(image("../../assets/usecasediagrams/UC_29.png"), caption: [Diagramma casi d'uso UC[29],])
\







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
  [#link(<UC1>)[*UC[1]*], #link(<UC2>)[*UC[2]*], Riunione esterna],

  [ROF-2], [Il sistema restituisce un errore per credenziali non valide inserite dall'utente], [#link(<UC3>)[*UC[3]*]],
  [ROF-3], [Il sistema restituisce un errore nel caso si riscontrino problemi con il _database_], [#link(<UC4>)[*UC[4]*]],
  [ROF-4],
  [L'utente deve potersi registrare con la creazione di un nuovo account],
  [#link(<UC2>)[*UC[2]*], #link(<UC5>)[*UC[5]*], #link(<UC6>)[*UC[6]*], #link(<UC7>)[*UC[7]*]],

  [ROF-5], [Il sistema deve restituire un errore se l'_e-mail_ è già in uso in fase di registrazione], [#link(<UC8>)[*UC[8]*]],
  [ROF-6],
  [Il sistema deve restituire un errore se la _password_ non adempie ai requisiti di sicurezza o le _password_ non coincidono tra loro in fase di registrazione],
  [#link(<UC6>)[*UC[6]*], #link(<UC7>)[*UC[7]*]],

  [ROF-7], [L'utente deve poter creare una nuova _routine_ ], [#link(<UC9>)[*UC[9]*], Capitolato],
  [ROF-8], [Il sistema deve restituire un errore se il nome della _routine_ da creare o modificare è già in uso], [#link(<UC10>)[*UC[10]*]],
  [ROF-9], [L'utente deve poter generare una _routine_ tramite linguaggio naturale], [#link(<UC11>)[*UC[11]*], Capitolato],
  [ROF-10], [Il sistema deve restituire un errore se non é possibile generare il flusso], [#link(<UC12>)[*UC[12]*]],
  [RDF-11], [L'utente deve poter modificare i parametri di generazione di una _routine_], [#link(<UC13>)[*UC[13]*], Capitolato],
  [ROF-12], [L'utente deve poter visualizzare i dettagli di una _routine_ esistente], [#link(<UC14>)[*UC[14]*]],
  [ROF-13], [L'utente deve poter eliminare una _routine_ esistente], [#link(<UC15>)[*UC[15]*]],
  [RDF-14], [L'utente deve poter modificare il nome di una _routine_ esistente], [#link(<UC16>)[*UC[16]*]],
  [ROF-15],
  [L'utente deve poter avviare una _routine_ esistente per eseguire il flusso di automazioni desiderato],
  [#link(<UC17>)[*UC[17]*], #link(<UC18>)[*UC[18]*], Riunione esterna],

  [ROF-16], [L'utente deve poter interrompe una _routine_ avviata in qualsiasi momento della sua esecuzione], [#link(<UC19>)[*UC[19]*]],
  [ROF-17],
  [Il sistema deve restituire un errore nel caso non sia possibile interrompere una _routine_ in esecuzione],
  [#link(<UC20>)[*UC[20]*]],

  [ROF-18], [L'utente deve poter aggiungere un blocco ad una _routine_ esistente], [#link(<UC21>)[*UC[21]*] ],
  [RDF-19],
  [L'utente modifica le impostazioni di un singolo blocco di automazione relativo ad una #glossario("task")],
  [#link(<UC22>)[*UC[22]*], Riunione interna],

  [ROF-20],
  [Il sistema deve restituire un errore se le impostazioni del blocco non sono considerate valide],
  [#link(<UC23>)[*UC[23]*], Riunione interna],

  [ROF-21],
  [L'utente deve potersi autenticare al servizio di un blocco specifico che richiede un'integrazione con un servizio esterno o un account di terze parti],
  [#link(<UC24>)[*UC[24]*], Riunione esterna],

  [ROF-22],
  [Il sistema deve salvare le modifiche apportate dall'utente alla _routine_ appena viene premuto il tasto di salvataggio],
  [#link(<UC25>)[*UC[25]*], Riunione interna],

  [ROF-23],
  [Il sistema deve restituire un errore se il flusso è incompleto e non può essere salvato],
  [#link(<UC26>)[*UC[26]*], Riunione interna],

  [ROF-24], [L'utente deve poter modificare la propria _password_], [#link(<UC27>)[*UC[27]*], Riunione interna],
  [ROF-25], [L'utente deve poter effettuare il _logout_ dall'applicativo], [#link(<UC29>)[*UC[29]*], Riunione interna],
)


== Requisiti qualitativi
#table(
  columns: (1fr, 5fr, 2.5fr),
  rows: auto,
  inset: 6pt,
  table.header([*Codice*], [*Descrizione*], [*Fonti*]),
  [RFQ-1], [L'utente può impostare la modalità del _client_ in _dark mode_ o _light mode_], [#link(<UC28>)[*UC[28]*], Riunione esterna],
)


== Requisiti di vincolo
#table(
  columns: (1fr, 5fr, 2.5fr),
  rows: auto,
  inset: 6pt,
  table.header([*Codice*], [*Descrizione*], [*Fonti*]),
  [ROV-1],
  [Creazione di un sistema di #glossario("Gen AI") in #glossario("cloud") in grado di ricevere dati _software_ locali e produrre delle automazioni da eseguire localmente o direttamente tramite API ai servizi finali, a partire da una descrizione in linguaggio naturale da parte dell'utente],
  [Capitolato],

  [ROV-2],
  [Utilizzo di linguaggi di programmazione proposti, come: NodeJS, Python e Typescript per lo sviluppo API cloud; Python o C\# per lo sviluppo dell'agent],
  [Capitolato, Riunione esterna],

  [ROV-3],
  [Condivisione del codice prodotto in formato sorgente utilizzando sistemi di versionamento del codice come #glossario("Git") o _repository online_ con _Var Group S.p.A._],
  [Capitolato],

  [ROV-4], [Creazione dell'applicativo in ottica modulare per estendere le funzioni della piattaforma], [Capitolato],
)
