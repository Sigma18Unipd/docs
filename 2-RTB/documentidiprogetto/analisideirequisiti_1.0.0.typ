#import "../../templates/template.typ": *
#show: content => verbale(
  titoloDocumento: "Analisi dei Requisiti",
  abstract: "",
  responsabili: "",
  redattori: "Pietro Crotti",
  verificatori: "",
  tipo: "Documento d'uso Esterno",
  destinatari: ("Sigma18", "Prof. Tullio Vardanega", "Prof. Riccardo Cardin", "Var Group S.p.A."),
  versioneAttuale: "1.0.0",
  content: content,
  versioni: (
    "1.0.0",
    "2025/04/16",
    "Pietro Crotti",
    "",
    "Stesura iniziale documento",
  ),
)

= Introduzione
== Scopo del documento
Il seguente documento ha lo scopo di fornire un descrizione dettagliata dei *casi d'uso* e dei *requisiti* del progetto che l'azienda proponente _Var Group S.p.A._ ha presentato, grazie a uno studio approfondito del capitolato e una riunione in presenza effettuata nella sede di Padova in Via Salboro 22/B 35124 il giorno lunedi 16 Aprile 2025.\
Quindi tale documento è di elevata importanza in quanto chiarisce ogni dubbio che il gruppo aveva e costituisce una solida base per lo sviluppo del prodotto finale in quanto permette di avere una chiara visione delle *funzionalità* e dei *requisiti* richiesti dall'azienda proponente.
== Scopo del prodotto
Lo scopo del prodotto è quello di fornire un servizio che permette agli utenti di risparmiare tempo e semplificare le routine digitali che se no dovrebbero fare a mano.\
In particolare, grazie all'ausilio delle #glossario("API") esposte dagli #glossario("agenti"), l'applicativo interpreta la descrizione dell'automazione fornita dall'utente e genera il flusso di lavoro desiderato.\
Il flusso di lavoro verra quindi visualizzato attraverso un #glossario("client") che permette all'utente di modificare l'automazione creata grazie ad un interfaccia #glossario("drag & drop").\
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

- #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T05.pdf")[Dispensa T05: Analisi dei requisiti]

- #link("https://www.math.unipd.it/~rcardin/swea/2022/Diagrammi%20Use%20Case.pdf")[Diagrammi Dei Casi d'Uso]

#pagebreak()
= Descrizione del prodotto
== Obbiettivi del prodotto
L'obbiettivo del prodotto è quello di far risparmiare tempo ai nostri utenti automatizzando routine digitali ,che altrimenti dovrebbero essere svolte manualmente, tramite l'uso delle #glossario("API") esposte dagli #glossario("agenti").\
== Utenti
Il prodotto è destinato a due tipologie di utenti: utente base e utente avanzato.\
=== Utente base
L'utente base è colui che utilizza il prodotto per la prima volta e ha bisogno di un'interfaccia semplice e intuitiva per poter utilizzare il prodotto senza difficoltà.\
=== Utente avanzato
L'utente avanzato è colui che possiede una formazione tale da comprendere il funzionamento di una #glossario("LLM") e che, pertanto, è in grado di sfruttare impostazioni avanzate per un'esperienza d'uso più personalizzata.
== Funzionalità e vincoli
Il prodotto dovrà consentire all'utente di creare flussi di lavoro sia in modo automatico che manuale, per automatizzare le operazioni digitali ricorrenti di determinate applicazioni supportate.\
Infatti l'utente potrà:
- Fornire una descrizione dell'automazione desiderata e poi visualizzarla e modificarla , se necessario , tramite un'interfaccia grafica che utilizza un sistema di #glossario("drag & drop").
- Creare un flusso di lavoro in modo manuale, selezionando i blocchi e collegandoli tra loro.
- Avviare l'automazione selezionata tramite l'apposito pulsante.
- Visualizzare lo stato dell'automazione in esecuzione e ricevere eventuali messaggi di errore.
- Interrompere l'automazione in esecuzione in qualsiasi momento.
- Dare un feedback dell'automazione generata.
#pagebreak()


= Casi d'uso
== Introduzione
Questa sezione del documento descrive ogni caso d'uso del progetto proposto da _Var Group S.p.A._ , i seguenti casi d'uso sono stati individuati grazie ad un attento studio del capitolato e ad una sessione di #glossario("design thinking") svolta in presenza con l'azienda proponente.\
È stata adottata una nomenclatura standard per definire i casi d'uso nel formato seguente: *UC[numero_caso_uso]*.\
== Attori
L'applicativo ha due tipi di attori:
- *utente non autenticato* : colui che non ha effettuato il login e quindi non ha accesso al servizio.
- *utente autenticato* : colui che ha effettuato il login e ha accesso al servizio.
== Elenco dei casi d'uso
=== UC[1] : Login
- *Attori principali* : utente non autenticato
- *Pre-condizioni* : l'utente non è autenticato e possiede un _account_.
- *Post-condizioni* : l'utente è autenticato
- *Scenario principale* :
  1. L'utente accede all' applicativo.
  2. L'utente inserisce la propria email (*UC[2]*).
  3. L'utente inserisce la propria password (*UC[3]*).
  4. Il sistema verifica le credenziali e lo fa accedere alla _dashboard_.
- *Estensioni* : credenziali non valide (*UC[4]*).

=== UC[2] : Inserimento email
- *Attori principali* : utente non autenticato.
- *Pre-condizioni* : l'utente non è autenticato e possiede un _account_.
- *Post-condizioni* : l'utente ha inserito la propria email.
- *Scenario principale* :
  1. L'utente accede all'applicativo.
  2. L'utente inserisce la propria email.

=== UC[3] : Inserimento _password_
- *Attori principali* : utente non autenticato.
- *Pre-condizioni* : l'utente non è autenticato e possiede un _account_.
- *Post-condizioni* : l'utente ha inserito la propria _password_.
- *Scenario principale* :
  1. L'utente accede all'applicativo.
  2. L'utente inserisce la propria _password_.

=== UC[4] : Credenziali non valide
- *Attori principali* : utente non autenticato.
- *Pre-condizioni* : l'utente non autenticato inserisce le proprie credenziali .
- *Post-condizioni* : il sistema individua credenziali errate.
- *Scenario principale* :
  1. L'utente inserisce le proprie credenziali.
  2. Il sistema individua le credenziali errate e invia un codice di errore all'utente.
  3. L'utente può ripetere l'inserimento delle credenziali (*UC[2]*, *UC[3]*).

=== UC[5] : Registrazione
- *Attori principali* : utente non autenticato.
- *Pre-condizioni* : l'utente non ha un _account_.
- *Post-condizioni* : l'utente ha un _account_.
- *Scenario principale* :
  1. L'utente accede all'applicativo.
  2. L'utente accede alla pagina di registrazione.
  3. L'utente inserisce la propria _email_ (*UC[2]*).
  4. L'utente crea la _password_ (*UC[3]*).
  5. L'utente reinserisce la _password_ creata (*UC[6]*).
  6. Il sistema verifica che le due _password_ siano uguali.
  7. Il sistema verifica che l'email non sia già in uso.
  8. Il sistema crea l' _account_ e salva le credenziali nel database.
- *Estensioni* : email già in uso (*UC[7]*), _password_ non valide (*UC[8]*).

=== UC[6] : Conferma _password_
- *Attori principali* : utente non autenticato.
- *Pre-condizioni* : l'utente ha scelto una _password_ da utilizzare .
- *Post-condizioni* : l'utente ha reinserito la _password_ scelta.
- *Scenario principale* :
  1. L'utente conferma la _password_ scelta.
  2. Il sistema controlla che le due _password_ siano uguali.
- *Estensioni* : _password_ non valide (*UC[8]*).

=== UC[7] : Email già in uso
- *Attori principali* : utente non autenticato.
- *Pre-condizioni* : l'utente ha scelto una _email_ da utilizzare .
- *Post-condizioni* : la _email_ scelta dall'utente è gia in uso.
- *Scenario principale* :
  1. L'utente inserisce la propria _email_ per la registrazione.
  2. Il sistema individua che esiste gia un _account_ che utilizza la _email_ scelta.
  3. Il sistema invia un codice di errore all'utente.

=== UC[8] : Password non valide
- *Attori principali* : utente non autenticato.
- *Pre-condizioni* : l'utente ha inserito la _password_ e l'ha confermata .
- *Post-condizioni* : la _password_ scelta non adempie ai requisiti di sicurezza o le due _password_ non sono uguali.
- *Scenario principale* :
  1. L'utente inserisce la _password_ scelta e la conferma.
  2. Il sistema individua che le due _password_ non corrispondono o non adempiono ai requisiti minimi di sicurezza.
  3. Il sistema invia un codice di errore all'utente.

= Requisiti

