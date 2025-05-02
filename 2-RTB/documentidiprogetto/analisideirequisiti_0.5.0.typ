#import "../../templates/template.typ": *
#show: content => verbale(
  titoloDocumento: "Analisi dei Requisiti",
  abstract: "",
  responsabili: "Pietro Crotti",
  redattori: ("Pietro Crotti", "Matteo Marangon"),
  verificatori: ("Pietro Crotti", "Matteo Marangon", "Aleena Mathew"),
  tipo: "Documento d'uso Esterno",
  destinatari: ("Sigma18", "Prof. Tullio Vardanega", "Prof. Riccardo Cardin", "Var Group S.p.A."),
  versioneAttuale: "0.5.0",
  content: content,
  versioni: (
    "0.5.0",
    "2025/05/2",
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
    "Pietro Crotti, Aleena Mathew",
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
Il presente documento ha lo scopo di fornire una descrizione dettagliata dei *casi d'uso* e dei *requisiti* del progetto che l'azienda proponente _Var Group S.p.A._ ha presentato, grazie ad uno studio approfondito del capitolato e ad una riunione in presenza, effettuata nella sede di Padova in Via Salboro 22/B il giorno lunedi 16 Aprile 2025.\
Questo documento è pertanto di elevata importanza in quanto costituisce una solida base per lo sviluppo del prodotto finale, permettendo di avere una chiara visione delle *funzionalità* e dei *requisiti* richiesti dall'azienda proponente.
== Scopo del prodotto
Il prodotto fornisce un servizio che permette agli utenti di generare automazioni e #glossario("routine") avvalendosi dell'intelligenza artificiale generativa.
In particolare, grazie all'ausilio delle API esposte dagli #glossario("agenti"), l'applicativo interpreta la descrizione dell'automazione fornita dall'utente in linguaggio naturale e genera il flusso di lavoro desiderato.\
Il flusso di lavoro verrà quindi visualizzato attraverso un #glossario("client") che permette all'utente di modificare l'automazione creata grazie ad un'interfaccia #glossario("drag & drop").\
Nell'interfaccia, i *blocchi* rappresentano le azioni effettuabili, mentre gli *archi* che li collegano tra loro corrispondono a relazioni tra i singoli componenti dell'automazione.
== Glossario
Per assicurare la massima chiarezza e prevenire possibili malintesi legati all'interpretazione dei termini utilizzati nei documenti, è stato redatto un glossario dedicato. Questo strumento raccoglie e definisce in maniera precisa tutti i termini che potrebbero risultare ambigui, tecnici o comunque soggetti a interpretazioni diverse.\
All'interno dei documenti, ogni termine presente nel Glossario sarà opportunamente segnalato tramite la seguente notazione: #glossario("parola"), in modo da permettere al lettore di identificarne facilmente il significato esatto facendo riferimento al glossario stesso.
== Riferimenti
=== Riferimenti normativi

- #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C3.pdf")[Capitolato C3: Automatizzare le routine digitali tramite l'intelligenza generativa]

- #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf")[Regolamento progetto didattico]

- #link("https://www.iso.org/standard/65694.html")[ISO/IEC 31000:2018]

=== Riferimenti informativi

- #link("https://sigma18unipd.github.io/documentiCompilati/2-RTB/documentidiprogetto/glossario.pdf")[Glossario]

- #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T05.pdf")[Dispensa T05: Analisi dei requisiti]

- #link("https://www.math.unipd.it/~rcardin/swea/2022/Diagrammi%20Use%20Case.pdf")[Diagrammi Dei Casi d'Uso]

#pagebreak()
= Descrizione del prodotto
== Obiettivi del prodotto
L'obiettivo del prodotto è garantire l'ottimizzazione del tempo per i nostri utenti, automatizzando le routine digitali che altrimenti richiederebbero interventi manuali, attraverso l'utilizzo delle #glossario("API") fornite dagli agenti.
== Utenti
Il prodotto è destinato a due tipologie di utenti: utente base e utente avanzato.\
=== Utente base
L'utente base è colui che non ha particolari conoscenze tecniche o tecnologiche, pertanto ha bisogno di essere aiutato tramite un'interfaccia semplice e intuitiva per poter utilizzare il prodotto senza difficoltà.\
=== Utente avanzato
L'utente avanzato è colui che possiede una formazione tale da comprendere il funzionamento di un #glossario("LLM") pertanto è in grado di sfruttare impostazioni avanzate per un'esperienza d'uso più approfondita e personalizzata.
== Funzionalità e vincoli
Il prodotto dovrà consentire all'utente di creare flussi di lavoro sia in modo automatico che manuale per automatizzare le operazioni digitali ricorrenti di determinate applicazioni supportate.\
L'utente potrà:
- Fornire una descrizione in linguaggio naturale dell'automazione desiderata, visualizzarla e modificarla, se necessario, tramite un'interfaccia grafica che utilizza un sistema di _drag & drop_.
- Creare un flusso di lavoro in modo manuale, selezionando i blocchi e collegandoli tra loro.
- Avviare l'automazione selezionata tramite l'apposito pulsante.
- Visualizzare lo stato dell'automazione in esecuzione e ricevere eventuali messaggi di errore.
- Interrompere l'automazione in esecuzione in qualsiasi momento.
- Dare un feedback dell'automazione generata.
#pagebreak()


= Casi d'uso
== Introduzione
Questa sezione del documento descrive ogni caso d'uso del progetto proposto da _Var Group S.p.A._ , i seguenti casi d'uso sono stati individuati grazie ad un attento studio del capitolato e ad una sessione di #glossario("design thinking") svolta in presenza con l'azienda proponente.\
È stata adottata una nomenclatura standard per definire i casi d'uso nel seguente formato: *UC[numero_caso_uso]*.\
== Attori
L'applicativo ha due tipi di attori:
- *utente non autenticato* : colui che non ha effettuato il login e quindi non ha accesso al servizio.
- *utente autenticato* : colui che ha effettuato il login e ha accesso al servizio.
== Elenco dei casi d'uso
=== UC[1] : Login
- *Attore principale* : utente non autenticato.
- *Pre-condizioni* : l'utente non è autenticato e possiede un _account_.
- *Post-condizioni* : l'utente è autenticato.
- *Scenario principale* :
  1. L'utente accede all'applicativo.
  2. L'utente inserisce la propria email (#link(<UC2>)[*UC[2]*]).
  3. L'utente inserisce la propria password (#link(<UC3>)[*UC[3]*]).
  4. Il sistema verifica le credenziali e permette di accedere alla #glossario("dashboard").
- *Estensioni* :
  - Credenziali non valide (#link(<UC4>)[*UC[4]*]).

=== UC[2] : Inserimento email <UC2>
- *Attore principale* : utente non autenticato.
- *Pre-condizioni* : l'utente non è autenticato e possiede un _account_.
- *Post-condizioni* : l'utente ha inserito la propria email.
- *Scenario principale* :
  1. L'utente accede all'applicativo.
  2. L'utente inserisce la propria email.

=== UC[3] : Inserimento _password_ <UC3>
- *Attore principale* : utente non autenticato.
- *Pre-condizioni* : l'utente non è autenticato e possiede un _account_.
- *Post-condizioni* : l'utente ha inserito la propria _password_.
- *Scenario principale* :
  1. L'utente accede all'applicativo.
  2. L'utente inserisce la propria _password_.

=== UC[4] : Credenziali non valide <UC4>
- *Attore principale* : utente non autenticato.
- *Pre-condizioni* : l'utente non autenticato inserisce le proprie credenziali.
- *Post-condizioni* : il sistema individua credenziali errate.
- *Scenario principale* :
  1. L'utente inserisce le proprie credenziali.
  2. Il sistema individua le credenziali errate e invia un codice di errore all'utente.
  3. L'utente può ripetere l'inserimento delle credenziali (#link(<UC2>)[*UC[2]*], #link(<UC3>)[*UC[3]*]).
#figure(image("../../assets/usecasediagrams/UC_1_2_3_4.png"), caption: [Diagramma casi d'uso UC[1], UC[2], UC[3], UC[4]])

=== UC[5] : Registrazione
- *Attore principale* : utente non autenticato.
- *Pre-condizioni* : l'utente non ha un _account_.
- *Post-condizioni* : l'utente ha un _account_.
- *Scenario principale* :
  1. L'utente accede all'applicativo.
  2. L'utente accede alla pagina di registrazione.
  3. L'utente inserisce la propria _email_ (#link(<UC6>)[*UC[6]*]).
  4. L'utente crea la _password_ (#link(<UC7>)[*UC[7]*]).
  5. L'utente reinserisce la _password_ creata (#link(<UC8>)[*UC[8]*]).
  6. Il sistema verifica che le due _password_ siano uguali.
  7. Il sistema verifica che l'email non sia già in uso.
  8. Il sistema crea l'_account_ e salva le credenziali nel database.
- *Estensioni* :
  - Email già in uso (#link(<UC9>)[*UC[9]*])
  - _Password_ non valide (#link(<UC10>)[*UC[10]*]).

=== UC[6] : Registrazione email <UC6>
- *Attore principale* : utente non autenticato.
- *Pre-condizioni* : l'utente non è autenticato e non possiede un _account_.
- *Post-condizioni* : l'utente ha inserito l'email scelta.
- *Scenario principale* :
  1. L'utente accede all'applicativo.
  2. L'utente inserisce la propria email.

=== UC[7] : Creazione _password_ <UC7>
- *Attore principale* : utente non autenticato.
- *Pre-condizioni* : l'utente non è autenticato e non possiede un _account_.
- *Post-condizioni* : l'utente ha inserito la _password_ scelta.
- *Scenario principale* :
  1. L'utente accede all'applicativo.
  2. L'utente inserisce la _password_ scelta.

=== UC[8] : Conferma _password_ <UC8>
- *Attore principale* : utente non autenticato.
- *Pre-condizioni* : l'utente ha scelto una _password_ da utilizzare.
- *Post-condizioni* : l'utente ha reinserito la _password_ scelta.
- *Scenario principale* :
  1. L'utente conferma la _password_ scelta.
  2. Il sistema controlla che le due _password_ siano uguali.
//- *Estensioni* : _password_ non valide (#link(<UC10>)[*UC[10]*]).

=== UC[9] : Email già in uso <UC9>
- *Attore principale* : utente non autenticato.
- *Pre-condizioni* : l'utente ha scelto una _email_ da utilizzare.
- *Post-condizioni* : la _email_ scelta dall'utente è gia in uso.
- *Scenario principale* :
  1. L'utente inserisce la propria _email_ per la registrazione.
  2. Il sistema individua che esiste gia un _account_ che utilizza la _email_ scelta.
  3. Il sistema invia un codice di errore all'utente.

=== UC[10] : Password non valida <UC10>
- *Attore principale* : utente non autenticato.
- *Pre-condizioni* : l'utente ha inserito la _password_ e l'ha confermata.
- *Post-condizioni* : la _password_ scelta non adempie ai requisiti di sicurezza o le due _password_ non combaciano.
- *Scenario principale* :
  1. L'utente inserisce la _password_ scelta e la conferma.
  2. Il sistema individua che le due _password_ non corrispondono o non adempiono ai requisiti minimi di sicurezza.
  3. Il sistema invia un codice di errore all'utente.
#figure(
  image("../../assets/usecasediagrams/UC_5_6_7_8_9_10.png"),
  caption: [Diagramma casi d'uso UC[5], UC[6], UC[7], UC[8], UC[9], UC[10]],
)
=== UC[11] : Creazione nuova routine <UC11>
- *Attore principale* : utente autenticato.
- *Pre-condizioni* : l'utente ha effettuato l'accesso e si trova nella _dashboard_.
- *Post-condizioni* : viene creata una nuova routine nella _dashboard_.
- *Scenario principale* :
  1. L'utente scrive in linguaggio naturale la routine che vuole creare nel campo di testo dedicato.
  2. La richiesta viene elaborata da un LLM.
  3. Il sistema genera un flusso di lavoro in base alla richiesta dell'utente.
  4. Il sistema mostra il flusso di lavoro accanto a quelli precedentemente creati.
- *Estensioni* :
  - Modifica delle funzionalità di generazione avanzata (#link(<UC13>)[*UC[13]*])
  - Creazione di una routine vuota (#link(<UC12>)[*UC[12]*]).

=== UC[12] : Creazione nuova routine vuota <UC12>
- *Attore principale* : utente autenticato.
- *Pre-condizioni* : l'utente ha effettuato l'accesso e si trova nella _dashboard_.
- *Post-condizioni* : viene creata una nuova routine vuota nella _dashboard_.
- *Scenario principale* :
  1. L'utente seleziona l'opzione di creazione di una nuova routine vuota nella _dashboard_.
  2. Il sistema crea una nuova routine vuota e la mostra nella _dashboard_.
//- *Estensioni* : modifica della routine  (#link(<UC14>)[*UC[14]*]).


=== UC[13] : Accedere a funzionalità di generazione avanzate <UC13>
- *Attore principale* : utente autenticato.
- *Pre-condizioni* : l'utente ha effettuato l'accesso e si trova nella _dashboard_.
- *Post-condizioni* : le impostazioni di generazione vengono modificate secondo le preferenze dell'utente.
- *Scenario principale* :
  1. L'utente seleziona l'icona delle impostazioni di generazione accanto al campo di testo per la creazione di una nuova routine .
  2. Il sistema mostra una finestra con le impostazioni di generazione.
  3. L'utente modifica le impostazioni desiderate, legate a scelta modello, contesto o temperatura dell'LLM .
  4. Il sistema salva le modifiche per la generazione corrente.

#figure(image("../../assets/usecasediagrams/UC_11_12_13.png"), caption: [Diagramma casi d'uso UC[11], UC[12], UC[13],])

=== UC[14] : Visualizzare i dettagli di una routine esistente <UC14>
- *Attore principale* : utente autenticato.
- *Pre-condizioni* : l'utente ha effettuato l'accesso e si trova nella _dashboard_.
- *Post-condizioni* : viene visualizzata una pagina con i dettagli di una routine già esistente.
- *Scenario principale* :
  1. L'utente seleziona una routine esistente dalla lista dei flussi nella _dashboard_.
  2. Il sistema mostra una pagina con i dettagli della routine selezionata.
- *Estensioni* :
  - Modifica della routine (#link(<UC15>)[*UC[15]*]).
  - Eliminazione di una routine esistente (#link(<UC16>)[*UC[16]*]).
  - Avviare una routine esistente tramite _dettagli flusso_ (#link(<UC17>)[*UC[17]*]).
  - Modificare le impostazioni di un singolo blocco (#link(<UC18>)[*UC[18]*]).
  - Autenticazione al servizio del blocco tramite dettagli del flusso(#link(<UC23>)[*UC[23]*]).

=== UC[15] : Modifica di una routine esistente tramite drag & drop <UC15> // singolo use case per la modifica o uno use case per ogni opzione di modifica?
- *Attore principale* : utente autenticato.
- *Pre-condizioni* : l'utente ha effettuato l'accesso e si trova nella _dashboard_.
- *Post-condizioni* : viene modificato il comportamento della routine selezionata.
- *Scenario principale* :
  1. L'utente accede alla pagina di dettagli di una routine (#link(<UC14>)[*UC[14]*]).
  2. L'utente trascina un blocco dalla barra laterale e lo rilascia nella posizione desiderata.
  3. Il sistema mostra il blocco rilasciato nella posizione desiderata, aggiornando il comportamento della routine .

=== UC[16] : Eliminare una routine esistente <UC16>
- *Attore principale* : utente autenticato.
- *Pre-condizioni* : l'utente ha effettuato l'accesso e si trova nella _dashboard_.
- *Post-condizioni* : la _dashboard_ viene aggiornata e la routine selezionata viene eliminata.
- *Scenario principale* :
  1. L'utente accede alla pagina di dettagli di una routine (#link(<UC14>)[*UC[14]*]).
  2. L'utente seleziona l'opzione di eliminazione della routine .
  3. Il sistema mostra un messaggio di conferma dell'eliminazione.
  4. L'utente conferma l'eliminazione.
  5. Il sistema elimina la routine e aggiorna la _dashboard_.

=== UC[17] : Avviare una routine esistente tramite _dettagli flusso_ <UC17>
- *Attore principale* : utente autenticato.
- *Pre-condizioni* : l'utente ha effettuato l'accesso e si trova nella pagina di dettagli del flusso.
- *Post-condizioni* : la routine selezionata viene avviata.
- *Scenario principale* :
  1. L'utente seleziona l'opzione di avvio della routine .
  2. Il sistema avvia la routine .
  3. Il sistema registra un #glossario("log") dell'esecuzione.
- *Estensioni* :
  - Visualizzare il _log_ di esecuzione (#link(<UC24>)[*UC[24]*]).
  - Fornire un _feedback_ della routine generata (#link(<UC25>)[*UC[25]*]).

  === UC[18] : Modificare le impostazioni di un singolo blocco <UC18>
- *Attore principale* : utente autenticato.
- *Pre-condizioni* : l'utente ha effettuato l'accesso e si trova nella pagina di dettagli del flusso.
- *Post-condizioni* : le impostazioni del singolo blocco vengono modificate.
- *Scenario principale* :
  1. L'utente seleziona un blocco all'interno del flusso.
  2. L'utente seleziona l'icona delle impostazioni del blocco scelto.
  3. Il sistema mostra una finestra con le impostazioni del blocco.
  4. L'utente modifica le impostazioni desiderate.
  5. Il sistema salva le modifiche per il relativo blocco.
- *Estensioni* :
  - Autenticazione al servizio del blocco (#link(<UC22>)[*UC[22]*]).

  #figure(
    image("../../assets/usecasediagrams/UC_14_15_16_17_18.png"),
    caption: [Diagramma casi d'uso UC[14], UC[15], UC[16], UC[17], UC[18],],
  )

=== UC[19] : Avviare una routine esistente tramite _dashboard_ <UC19>
- *Attore principale* : utente autenticato.
- *Pre-condizioni* : l'utente ha effettuato l'accesso e si trova nella _dashboard_.
- *Post-condizioni* : la routine selezionata viene avviata.
- *Scenario principale* :
  1. L'utente seleziona l'opzione di avvio della routine .
  2. Il sistema avvia la routine
  3. Il sistema registra un log dell'esecuzione.
- *Estensioni* :
  - Visualizzare il _log_ di esecuzione (#link(<UC24>)[*UC[24]*]).
  - Fornire un _feedback_ della routine generata (#link(<UC25>)[*UC[25]*]).

#figure(image("../../assets/usecasediagrams/UC_19.png"), caption: [Diagramma casi d'uso UC[19],])

=== UC[20] : Interrompere una routine avviata
- *Attore principale* : utente autenticato.
- *Pre-condizioni* : l'utente ha effettuato l'accesso e ha avviato una routine .
- *Post-condizioni* : l'esecuzione della routine in corso viene interrotta.
- *Scenario principale* :
  1. L'utente seleziona l'opzione di interruzione della routine .
  2. Il sistema interrompe l'esecuzione della routine all'operazione corrente.
  3. Il sistema registra nel log il motivo dell'interruzione.

#figure(image("../../assets/usecasediagrams/UC_20.png"), caption: [Diagramma casi d'uso UC[20],])

=== UC[21] : Modificare le impostazioni generali
- *Attore principale* : utente autenticato.
- *Pre-condizioni* : l'utente ha effettuato l'accesso.
- *Post-condizioni* : le impostazioni vengono aggiornate secondo le preferenze dell'utente.
- *Scenario principale* :
  1. L'utente seleziona l'icona delle impostazioni all'interno del _client_.
  2. Il sistema mostra una pagina con le impostazioni generali.
  3. L'utente modifica le impostazioni desiderate.
  4. Il sistema salva le modifiche.

#figure(image("../../assets/usecasediagrams/UC_21.png"), caption: [Diagramma casi d'uso UC[21],])

=== UC[22] : Autenticazione al servizio del blocco tramite impostazioni del blocco <UC22>
- *Attore principale* : utente autenticato.
- *Pre-condizioni* : l'utente ha effettuato l'accesso e si trova nelle impostazione del blocco(#link(<UC18>)[*UC[18]*]).
- *Post-condizioni* : l'utente ha eseguito l'accesso al servizio del blocco selezionato.
- *Scenario principale* :
  1. L'utente preme il tasto di accesso al servizio del blocco selezionato.
  2. Il sistema mostra la pagina di accesso al servizio del blocco selezionato.
  3. L'utente inserisce le credenziali del servizio del blocco selezionato.
  4. Il sistema attende il server di autenticazione del servizio del blocco selezionato.
  5. L'utente ha eseguito l'accesso al servizio del blocco selezionato.

=== UC[23] : Autenticazione al servizio del blocco tramite dettagli del flusso <UC23>
- *Attore principale* : utente autenticato.
- *Pre-condizioni* : l'utente ha effettuato l'accesso e si trova nella pagina di dettagli del flusso(#link(<UC14>)[*UC[14]*]).
- *Post-condizioni* : l'utente ha eseguito l'accesso al servizio del blocco selezionato.
- *Scenario principale* :
  1. L'utente preme il tasto di accesso al servizio del blocco selezionato.
  2. Il sistema mostra la pagina di accesso al servizio del blocco selezionato.
  3. L'utente inserisce le credenziali del servizio del blocco selezionato.
  4. Il sistema attende il server di autenticazione del servizio del blocco selezionato.
  5. L'utente ha eseguito l'accesso al servizio del blocco selezionato.

=== UC[24] : Visualizzare il log di esecuzione <UC24>
- *Attore principale* : utente autenticato.
- *Pre-condizioni* : l'utente ha effettuato l'accesso e ha avviato una routine (#link(<UC17>)[*UC[17]*]), (#link(<UC19>)[*UC[19]*]).
- *Post-condizioni* : l'utente visualizza il log di esecuzione della routine selezionata.
- *Scenario principale* :
  1. L'utente seleziona l'opzione di visualizzazione del log di esecuzione della routine avviata.
  2. Il sistema mostra il log di esecuzione della routine avviata.

=== UC[25] : Fornire un _feedback_ della routine generata <UC25>
- *Attore principale* : utente autenticato.
- *Pre-condizioni* : l'utente ha generato una routine e l'ha avviata (#link(<UC17>)[*UC[17]*]), (#link(<UC19>)[*UC[19]*]).
- *Post-condizioni* : l'utente ha lasciato un feedback sulla routine.
- *Scenario principale* :
  1. l'utente seleziona l'opzione di feedback della routine generata (positiva o negativa) tramite i due appositi pulsanti.
  2. Il sistema salva il feedback dell'utente.

=== UC[26] : Impostare _Dark Mode_ o _Light Mode_ del _client_ <UC26>
- *Attore principale* : utente autenticato o non autenticato.
- *Pre-condizioni* : l'utente ha attiva o la _dark mode_ o la _light mode_.
- *Post-condizioni* : l'utente ha cambiato il tema del _client_.
- *Scenario principale* :
  1. l'utente seleziona l'icona del tema del _client_ tramite il pulsante dedicato.
  2. Il sistema mostra il _client_ con il tema selezionato.

// metto UC[X] perche gli errori credo vadano alla fine e quindi ricordarsi di aggiornare i numeri
=== UC[X] : Visualizzazione dell'errore "Il #glossario("server") non risponde"
- *Attore principale* : utente autenticato.
- *Pre-condizioni* : l'utente ha effettuato l'accesso.
- *Post-condizioni* : il sistema mostra il messaggio di errore all'utente.
- *Scenario principale* :
  1. Il sistema rileva che la connessione al server non è più disponibile.
  2. Il sistema mostra un messaggio di errore all'utente.

=== UC[X] : Visualizzazione dell'errore "Impossibile generare il flusso"
- *Attore principale* : utente autenticato.
- *Pre-condizioni* : l'utente ha effettuato l'accesso e sta tentando di generare il flusso tramite linguaggio naturale (#link(<UC11>)[*UC[11]*]) , ma si verifica un errore.
- *Post-condizioni* : il sistema mostra il messaggio di errore all'utente.
- *Scenario principale* :
  1. L'utente sta generando il flusso tramite linguaggio naturale.
  2. L' LLM non riesce a generare il flusso e il sistema mostra un messaggio di errore.

=== UC[X] : Visualizzazione dell'errore "Impossibile avviare il flusso"
- *Attore principale* : utente autenticato.
- *Pre-condizioni* : l'utente ha effettuato l'accesso e sta tentando di avviare il flusso (#link(<UC17>)[*UC[17]*]) , (#link(<UC19>)[*UC[19]*]), ma si verifica un errore.
- *Post-condizioni* : il sistema mostra il messaggio di errore all'utente.
- *Scenario principale* :
  1. L'utente sta avviando il flusso.
  2. Il sistema non riesce ad avviare il flusso e mostra un messaggio di errore.


= Requisiti

