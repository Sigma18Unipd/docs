#import "../../templates/templateGlossario.typ": *

#show: content => verbale(
  titoloDocumento: "Glossario",
  responsabili: "Matteo Marangon",
  redattori: ("Mirco Borella", "Aleena Mathew"),
  verificatori: ("Alessandro Bernardello", "Carmelo Russello", "Marco Egidi", "Pietro Crotti"),
  tipo: "Documento Interno",
  destinatari: ("Sigma18", "Prof. Tullio Vardanega", "Prof. Riccardo Cardin"),
  versioneAttuale: "0.5.0",
  versioni: (
    "0.5.0",
    "2025/05/14",
    "Mirco Borella",
    "Carmelo Russello",
    "Aggiunta termini",
    "0.4.0",
    "2025/05/05",
    "Aleena Mathew",
    "Alessandro Bernardello",
    "Aggiunta termini",
    "0.3.0",
    "2025/04/29",
    "Mirco Borella",
    "Pietro Crotti",
    "Aggiunta termini",
    "0.2.0",
    "2025/04/16",
    "Mirco Borella",
    "Pietro Crotti",
    "Modifica alla nomenclatura e aggiunta termini",
    "0.1.0",
    "2025/04/09",
    "Mirco Borella",
    "Marco Egidi",
    "Prima stesura del documento",
  ),
  content: content,
)

= Introduzione
Lo scopo di questo documento è quello di fornire definizioni chiare e concise dei termini utilizzati nella documentazione del capitolato che possano causare ambiguità o dubbi in modo da permetterne la corretta lettura.

Per evidenziare che una parola è presente all'interno del glossario, è stata utilizzata una nomenclatura così definita:

#set align(center)
#glossario("parola")
#set align(left)
dove *parola* è il termine che si intende definire. La nomenclatura è stata scelta in modo da non interferire con le altre nomenclature utilizzate nel capitolato.

Il glossario è organizzato in senso alfabetico e ogni termine indicato è univoco.

#pagebreak()
= A

== Agenti
Un agente è un'entità software che esegue attività in maniera autonoma per conto dell'utente.

== Agile
Metodologia di sviluppo che si basa su un approccio iterativo e adattivo, favorendo la collaborazione con il cliente e la consegna continua.

== API (_Application Programming Interface_)
Insieme di regole o protocolli atti a consentire la comunicazione tra diversi prodotti o servizi e per far scambiare loro dati, caratteristiche e funzionalità.

== Audit
Il processo di "Audit" ha lo scopo di determinare in maniera indipendente la conformità di prodotti e processi selezionati ai requisiti, piani e accordi. L'attività di auditing è svolta da personale che non ha partecipato direttamente allo sviluppo dei prodotti, sei servizi o dei sistemi oggetto delle revisioni.

== AWS
Amazon Web Services (AWS) è una piattaforma di servizi _cloud_ offerta da Amazon. Si suddivide in base al servizio offerto come ad esempio: calcolo, archiviazione, database, _machine learning_ e altro.

#pagebreak()
= B

== Backend
Il backend denota la parte di un programma che gestisce la logica e l'interazione con il database, fornendo dati e servizi al frontend.

== Backlog
Elenco di attività, funzionalità o requisiti da completare in un progetto. Il backlog viene utilizzato per pianificare e gestire il lavoro all'interno di un team di sviluppo.

== Branch
Ramo di un repository Git che consente di lavorare su una copia separata del codice sorgente. I branch vengono utilizzati per sviluppare nuove funzionalità o correggere bug senza influenzare il codice principale.

#pagebreak()
= C

== Client
Componente o programma che accede ad un servizio reso disponibile da un _server_.

== Commit
Operazione di salvataggio delle modifiche apportate al codice sorgente in un repository Git. Ogni commit rappresenta uno stato specifico del codice.

#pagebreak()
= D

== Design Thinking
Approccio di progettazione di un software centrato sull'esperienza utente che prende in considerazione il target di riferimento per costruire un'esperienza solida e mirata, particolarmente funzionale in un ambiente agile.

== Diagrammi UML
Un diagramma UML è uno schema che permette di analizzare, descrivere e documentare un sistema software mediante l'utilizzo di modelli visuali.

== Drag & Drop
Tecnica di interazione grafica che si basa sul trascinamento di elementi a schermo. Si tratta di una rappresentazione intuitiva anche per utenti inesperti poiché si basa su
intuizione e facilità d'uso.

#pagebreak()
= F

== Feedback
Rappresenta l'insieme di informazioni o valutazioni che gli utenti possono fornire per contribuire al miglioramento dei servizi o delle funzionalità.

== Frontend
Con Frontend si denota la parte visibile di un programma con cui l'utente interagisce direttamente.

#pagebreak()
= G

== Gen AI
L'intelligenza artificiale generativa (o Gen AI) è un tipo di intelligenza artificiale che è in grado di generare testo, immagini, video o altro in risposta a richieste dette _prompt_.

== Git
Sistema di controllo di versione distribuito che consente a più utenti di lavorare contemporaneamente su un progetto tenendo traccia delle modifiche apportate al codice sorgente.

== GitHub
Piattaforma web basata su Git che fornisce strumenti per l'hosting di repository, il versionamento del codice e la collaborazione tra sviluppatori.

#pagebreak()
= I

== ISO/IEC 12207:1995
Standard internazionale che definisce i processi di ciclo di vita del software, fornendo un framework per la pianificazione, lo sviluppo, il collaudo e la manutenzione del software.

== Issue
Un problema o un difetto identificato in un progetto software e registrato in una piattaforma di gestione dei problemi. Le issue possono riguardare bug, funzionalità mancanti o miglioramenti richiesti.

#pagebreak()
= L

== LaTeX
Linguaggio di marcatura per produrre documenti di alta qualità. È ampiamente utilizzato per la scrittura di articoli scientifici, tesi e libri.

== Log
Elenco cronologico delle attività svolte all'interno di un sistema, utile per il monitoraggio e la risoluzione dei problemi.

#pagebreak()
= M

== Merge
Operazione di unione di due o più branch in un repository Git. Il merge consente di combinare le modifiche apportate in diversi rami del codice sorgente.

== MVP (_Minimum Viable Product_)
Il prodotto minimo funzionante (in inglese _Minimum Viable Product_) è la versione di un prodotto con caratteristiche appena sufficienti per essere funzionante e utilizzabile dai primi clienti, i quali possono fornire _feedback_ per migliorare il prodotto stesso.

#pagebreak()
= N

== Nest.JS
Un insieme di librerie in _Node.JS_ basato su _Typescript_ dedicate alla costruzione di applicazioni lato _server_ (_backend_) scalabili ed efficienti.

#pagebreak()
= P

== PB (_Product Baseline_)
Fase del processo di sviluppo software in cui viene definita la versione finale del prodotto, pronta per il rilascio. Durante questa fase vengono completate le attività di sviluppo, test e validazione del prodotto, garantendo il soddisfacimento dei requisiti e delle specifiche concordate.

== PoC (_Proof of Concept_)
Prototipo o modello iniziale che dimostra la fattibilità o conferma la validità di un principio o concetto, senza dover sviluppare un prodotto completo.

== Prompt
Istruzione o richiesta testuale fornita a un modello di intelligenza artificiale per ottenere un'elaborazione specifica.

== Pull request
Richiesta di integrazione delle modifiche apportate in un branch di un repository Git nel branch principale. Le pull request vengono utilizzate per revisionare e discutere le modifiche prima di unirle al codice sorgente principale.

#pagebreak()
= R

== React
React è una libreria _JavaScript_ sviluppata da _Facebook_ utilizzata per creare interfacce utente interattive e dinamiche.

== Root directory
Cartella principale di un progetto o di un sistema, che contiene tutti i file e le sottocartelle necessarie per il funzionamento del software.

== Routine
Sequenza di istruzioni che consentono di eseguire un'operazione di frequente esecuzione.

== RTB (Requirements and Technology Baseline)
Fase del processo di sviluppo software in cui vengono definiti i requisiti del sistema e le tecnologie da utilizzare per la sua realizzazione. In questa fase vengono identificati i requisiti funzionali e non funzionali del sistema, le interfacce utente, le tecnologie di sviluppo e le risorse necessarie per il progetto.

#pagebreak()
= S

== Script
File di testo che contiene una sequenza di istruzioni o comandi da eseguire.

== Server
Macchina o programma che fornisce un qualsiasi tipo di servizio ad altre componenti connesse.

== Shadcn
È una collezione di componenti visivi da utilizzare per la creazione di interfaccie grafiche pratiche ed efficaci.

== Sistema di ticketing
Sistema di gestione delle richieste e dei problemi degli utenti, che consente di registrare, monitorare e risolvere le segnalazioni in modo organizzato.

== Slack
Slack è uno strumento di collaborazione aziendale utilizzato per scambiarsi messaggi istantanei tra vari membri all'interno di un team.

== Sprint
Intervallo di tempo fisso, definito nella metodologia di sviluppo software Agile, durante il quale un team di sviluppo lavora per completare un insieme specifico di attività e/o funzionalità definite nello _sprint planning_.

== Sprint Planning
Processo nel quale si definiscono le attività da svolgere e i prodotti attesi da ogni ciclo di sviluppo (sprint).

#pagebreak()
= T

== Test
Processo di valutazione e verifica di un sistema software per garantire che soddisfi i requisiti e funzioni correttamente. I test possono includere test unitari, test di integrazione, test di sistema e test di accettazione.

== top-down
Tecnica di progettazione e sviluppo software che inizia con una visione generale del sistema e poi si suddivide in componenti più piccoli e dettagliati.

#pagebreak()
= W

== Way of Working
Modalità di lavoro adottata da un team o un'organizzazione per gestire progetti e attività. Include pratiche, processi e strumenti utilizzati per ottimizzare la collaborazione e l'efficienza.

== WebApp
Un software che viene eseguito in un browser Web, accessibile attraverso una connessione ad Internet.

== Wireframe
Rappresentazione grafica semplificata di una pagina web o di una schermata di un'app, che evidenzia la struttura e la disposizione degli elementi dell'interfaccia.
