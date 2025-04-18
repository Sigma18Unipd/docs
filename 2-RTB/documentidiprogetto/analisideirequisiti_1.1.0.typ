#import "../../templates/template.typ": *
#show: content => verbale(
  titoloDocumento: "Analisi dei Requisiti",
  abstract: "",
  responsabili: "Pietro Crotti",
  redattori: ("Pietro Crotti", "Matteo Marangon"),
  verificatori: ("Pietro Crotti", "Matteo Marangon", "Aleena Mathew"),
  tipo: "Documento d'uso Esterno",
  destinatari: ("Sigma18", "Prof. Tullio Vardanega", "Prof. Riccardo Cardin", "Var Group S.p.A."),
  versioneAttuale: "1.1.0",
  content: content,
  versioni: (
    "1.1.0",
    "2025/04/18",
    "Matteo Marangon",
    "Pietro Crotti, Aleena Mathew",
    "Aggiunta casi d'uso",
    "1.0.0",
    "2025/04/16",
    "Pietro Crotti",
    "Matteo Marangon",
    "Stesura iniziale documento",
  ),
)

= Introduzione
== Scopo del documento
Il presente documento ha lo scopo di fornire una descrizione dettagliata dei *casi d'uso* e dei *requisiti* del progetto che l'azienda proponente _Var Group S.p.A._ ha presentato, grazie ad uno studio approfondito del capitolato e ad una riunione in presenza, effettuata nella sede di Padova in Via Salboro 22/B il giorno lunedi 16 Aprile 2025.\
Questo documento è pertanto di elevata importanza in quanto costituisce una solida base per lo sviluppo del prodotto finale, permettendo di avere una chiara visione delle *funzionalità* e dei *requisiti* richiesti dall'azienda proponente.
== Scopo del prodotto
Il prodotto fornisce un servizio che permette agli utenti di generare automazioni e #glossario("routine") avvalendosi dell'intelligenza artificiale generativa.
In particolare, grazie all'ausilio delle #glossario("API") esposte dagli #glossario("agenti"), l'applicativo interpreta la descrizione dell'automazione fornita dall'utente in linguaggio naturale e genera il flusso di lavoro desiderato.\
Il flusso di lavoro verrà quindi visualizzato attraverso un #glossario("client") che permette all'utente di modificare l'automazione creata grazie ad un'interfaccia #glossario("drag & drop").\
Nell'interfaccia, i *blocchi* rappresentano le azioni effettuabili, mentre gli *archi* che li collegano tra loro corrispondono a relazioni tra i singoli componenti dell'automazione.
== Glossario
Per assicurare la massima chiarezza e prevenire possibili malintesi legati all'interpretazione dei termini utilizzati nei documenti, è stato redatto un glossario dedicato. Questo strumento raccoglie e definisce in maniera precisa tutti i termini che potrebbero risultare ambigui, tecnici o comunque soggetti a interpretazioni diverse.\
All'interno dei documenti, ogni termine presente nel Glossario sarà opportunamente segnalato tramite la seguente notazione: #glossario("parola"), in modo da permettere al lettore di identificarne facilmente il significato esatto facendo riferimento al glossario stesso.
== Riferimenti
=== Riferimenti normativi

- #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C3.pdf")[Capitolato C3: Automatizzare le _routine_ digitali tramite l'intelligenza generativa]

- #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf")[Regolamento progetto didattico]

- #link("https://www.iso.org/standard/65694.html")[ISO/IEC 31000:2018]

=== Riferimenti informativi

- #link("https://sigma18unipd.github.io/documentiCompilati/2-RTB/documentidiprogetto/glossario.pdf")[Glossario]

- #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T05.pdf")[Dispensa T05: Analisi dei requisiti]

- #link("https://www.math.unipd.it/~rcardin/swea/2022/Diagrammi%20Use%20Case.pdf")[Diagrammi Dei Casi d'Uso]

#pagebreak()
= Descrizione del prodotto
== Obiettivi del prodotto
L'obiettivo del prodotto è garantire l'ottimizzazione del tempo per i nostri utenti, automatizzando le routine digitali che altrimenti richiederebbero interventi manuali, attraverso l'utilizzo delle API fornite dagli agenti.
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
- *Estensioni* : credenziali non valide (#link(<UC4>)[*UC[4]*]).

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

=== UC[5] : Registrazione
- *Attore principale* : utente non autenticato.
- *Pre-condizioni* : l'utente non ha un _account_.
- *Post-condizioni* : l'utente ha un _account_.
- *Scenario principale* :
  1. L'utente accede all'applicativo.
  2. L'utente accede alla pagina di registrazione.
  3. L'utente inserisce la propria _email_ (#link(<UC2>)[*UC[2]*]).
  4. L'utente crea la _password_ (#link(<UC3>)[*UC[3]*]).
  5. L'utente reinserisce la _password_ creata (#link(<UC6>)[*UC[6]*]).
  6. Il sistema verifica che le due _password_ siano uguali.
  7. Il sistema verifica che l'email non sia già in uso.
  8. Il sistema crea l'_account_ e salva le credenziali nel database.
- *Estensioni* : email già in uso (#link(<UC7>)[*UC[7]*]), _password_ non valide (#link(<UC8>)[*UC[8]*]).

=== UC[6] : Conferma _password_ <UC6>
- *Attore principale* : utente non autenticato.
- *Pre-condizioni* : l'utente ha scelto una _password_ da utilizzare.
- *Post-condizioni* : l'utente ha reinserito la _password_ scelta.
- *Scenario principale* :
  1. L'utente conferma la _password_ scelta.
  2. Il sistema controlla che le due _password_ siano uguali.
- *Estensioni* : _password_ non valide (#link(<UC8>)[*UC[8]*]).

=== UC[7] : Email già in uso <UC7>
- *Attore principale* : utente non autenticato.
- *Pre-condizioni* : l'utente ha scelto una _email_ da utilizzare.
- *Post-condizioni* : la _email_ scelta dall'utente è gia in uso.
- *Scenario principale* :
  1. L'utente inserisce la propria _email_ per la registrazione.
  2. Il sistema individua che esiste gia un _account_ che utilizza la _email_ scelta.
  3. Il sistema invia un codice di errore all'utente.

=== UC[8] : Password non valida <UC8>
- *Attore principale* : utente non autenticato.
- *Pre-condizioni* : l'utente ha inserito la _password_ e l'ha confermata.
- *Post-condizioni* : la _password_ scelta non adempie ai requisiti di sicurezza o le due _password_ non combaciano.
- *Scenario principale* :
  1. L'utente inserisce la _password_ scelta e la conferma.
  2. Il sistema individua che le due _password_ non corrispondono o non adempiono ai requisiti minimi di sicurezza.
  3. Il sistema invia un codice di errore all'utente.

=== UC[9] : Creazione nuova _routine_
- *Attore principale* : utente autenticato.
- *Pre-condizioni* : l'utente ha effettuato l'accesso e si trova nella _dashboard_.
- *Post-condizioni* : viene creata una nuova _routine_ nella _dashboard_.
- *Scenario principale* :
  1. L'utente scrive in linguaggio naturale la _routine_ che vuole creare nel campo di testo dedicato.
  2. La richiesta viene elaborata da un _LLM_.
  3. Il sistema genera un flusso di lavoro in base alla richiesta dell'utente.
  4. Il sistema mostra il flusso di lavoro accanto a quelli precedentemente creati.
- *Estensioni* : modifica delle funzionalità di generazione avanzata (#link(<UC18>)[*UC[18]*]).

=== UC[10] : Creazione nuova _routine_ vuota
- *Attore principale* : utente autenticato.
- *Pre-condizioni* : l'utente ha effettuato l'accesso e si trova nella _dashboard_.
- *Post-condizioni* : viene creata una nuova _routine_ vuota nella _dashboard_.
- *Scenario principale* :
  1. L'utente seleziona l'opzione di creazione di una nuova _routine_ vuota nella _dashboard_.
  2. Il sistema crea una nuova _routine_ vuota e la mostra nella _dashboard_.
- *Estensioni* : modifica della _routine_ (#link(<UC12>)[*UC[12]*]).

=== UC[11] : Visualizzare i dettagli di una _routine_ esistente <UC11>
- *Attore principale* : utente autenticato.
- *Pre-condizioni* : l'utente ha effettuato l'accesso e si trova nella _dashboard_.
- *Post-condizioni* : viene visualizzata una pagina con i dettagli di una _routine_ già esistente.
- *Scenario principale* :
  1. L'utente seleziona una _routine_ esistente dalla lista dei flussi nella _dashboard_.
  2. Il sistema mostra una pagina con i dettagli della _routine_ selezionata.

=== UC[12] : Modifica di una _routine_ esistente tramite drag & drop <UC12> // singolo use case per la modifica o uno use case per ogni opzione di modifica?
- *Attore principale* : utente autenticato.
- *Pre-condizioni* : l'utente ha effettuato l'accesso e si trova nella _dashboard_.
- *Post-condizioni* : viene modificato il comportamento della _routine_ selezionata.
- *Scenario principale* :
  1. L'utente accede alla pagina di dettagli di una _routine_ (#link(<UC11>)[*UC[11]*]).
  2. L'utente trascina un blocco dalla barra laterale e lo rilascia nella posizione desiderata.
  3. Il sistema mostra il blocco rilasciato nella posizione desiderata, aggiornando il comportamento della _routine_.

=== UC[13] : Eliminare una _routine_ esistente
- *Attore principale* : utente autenticato.
- *Pre-condizioni* : l'utente ha effettuato l'accesso e si trova nella _dashboard_.
- *Post-condizioni* : la _dashboard_ viene aggiornata e la _routine_ selezionata viene eliminata.
- *Scenario principale* :
  1. L'utente accede alla pagina di dettagli di una _routine_ (#link(<UC11>)[*UC[11]*]).
  2. L'utente seleziona l'opzione di eliminazione della _routine_.
  3. Il sistema mostra un messaggio di conferma dell'eliminazione.
  4. L'utente conferma l'eliminazione.
  5. Il sistema elimina la _routine_ e aggiorna la _dashboard_.

=== UC[14] : Avviare una _routine_ esistente tramite _dashboard_
- *Attore principale* : utente autenticato.
- *Pre-condizioni* : l'utente ha effettuato l'accesso e si trova nella _dashboard_.
- *Post-condizioni* : la _routine_ selezionata viene avviata.
- *Scenario principale* :
  1. L'utente seleziona l'opzione di avvio della _routine_.
  2. Il sistema avvia la _routine_
  3. Il sistema registra un #glossario("log") dell'esecuzione.

=== UC[15] : Avviare una _routine_ esistente tramite _dettagli flusso_
- *Attore principale* : utente autenticato.
- *Pre-condizioni* : l'utente ha effettuato l'accesso e si trova nella pagina di dettagli del flusso.
- *Post-condizioni* : la _routine_ selezionata viene avviata.
- *Scenario principale* :
  1. L'utente seleziona l'opzione di avvio della _routine_.
  2. Il sistema avvia la _routine_.
  3. Il sistema registra un log dell'esecuzione.

=== UC[16] : Interrompere una _routine_ avviata
- *Attore principale* : utente autenticato.
- *Pre-condizioni* : l'utente ha effettuato l'accesso e ha avviato una _routine_.
- *Post-condizioni* : l'esecuzione della _routine_ in corso viene interrotta.
- *Scenario principale* :
  1. L'utente seleziona l'opzione di interruzione della _routine_.
  2. Il sistema interrompe l'esecuzione della _routine_ all'operazione corrente.
  3. Il sistema registra nel log il motivo dell'interruzione.

=== UC[17] : Modificare le impostazioni generali
- *Attore principale* : utente autenticato.
- *Pre-condizioni* : l'utente ha effettuato l'accesso.
- *Post-condizioni* : le impostazioni vengono aggiornate secondo le preferenze dell'utente.
- *Scenario principale* :
  1. L'utente seleziona l'icona delle impostazioni all'interno del _client_.
  2. Il sistema mostra una pagina con le impostazioni generali.
  3. L'utente modifica le impostazioni desiderate.
  4. Il sistema salva le modifiche.

=== UC[18] : Accedere a funzionalità di generazione avanzate <UC18>
- *Attore principale* : utente autenticato.
- *Pre-condizioni* : l'utente ha effettuato l'accesso e si trova nella _dashboard_.
- *Post-condizioni* : le impostazioni di generazione vengono modificate secondo le preferenze dell'utente.
- *Scenario principale* :
  1. L'utente seleziona l'icona delle impostazioni di generazione accanto al campo di testo per la creazione di una nuova _routine_.
  2. Il sistema mostra una finestra con le impostazioni di generazione.
  3. L'utente modifica le impostazioni desiderate, legate a scelta modello, contesto o temperatura dell'_LLM_.
  4. Il sistema salva le modifiche per la generazione corrente.

=== UC[19] : Modificare le impostazioni di un singolo blocco
- *Attore principale* : utente autenticato.
- *Pre-condizioni* : l'utente ha effettuato l'accesso e si trova nella pagina di dettagli del flusso.
- *Post-condizioni* : le impostazioni del singolo blocco vengono modificate.
- *Scenario principale* :
  1. L'utente seleziona un blocco all'interno del flusso.
  2. L'utente seleziona l'icona delle impostazioni del blocco scelto.
  3. Il sistema mostra una finestra con le impostazioni del blocco.
  4. L'utente modifica le impostazioni desiderate.
  5. Il sistema salva le modifiche per il relativo blocco.

// aggiungere use case errori

= Requisiti

