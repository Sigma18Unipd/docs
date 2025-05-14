#import "../../templates/templateGlossario.typ": *

#show: content => verbale(
  titoloDocumento: "Glossario",
  responsabili: "Matteo Marangon",
  redattori: "Mirco Borella",
  verificatori: ("Marco Egidi", "Pietro Crotti"),
  tipo: "Documento Interno",
  destinatari: ("Sigma18", "Prof. Tullio Vardanega", "Prof. Riccardo Cardin"),
  versioneAttuale: "0.4.0",
  versioni: (
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

#pagebreak()
= C

== Client
Componente o programma che accede ad un servizio reso disponibile da un #glossario("server").

#pagebreak()
= D

== Design Thinking
Approccio di progettazione di un software centrato sull'esperienza utente che prende in considerazione il target di riferimento per costruire un'esperienza solida e mirata, particolarmente funzionale in un ambiente agile.

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
Piattaforma web basata su #glossario("git") che fornisce strumenti per l'hosting di repository, il versionamento del codice e la collaborazione tra sviluppatori.

#pagebreak()

= L

== Log
Elenco cronologico delle attività svolte all'interno di un sistema, utile per il monitoraggio e la risoluzione dei problemi.

#pagebreak()
= M

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

#pagebreak()
= R

== React
React è una libreria _JavaScript_ sviluppata da _Facebook_ utilizzata per creare interfacce utente interattive e dinamiche.

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

== Slack
Slack è uno strumento di collaborazione aziendale utilizzato per scambiarsi messaggi istantanei tra vari membri all'interno di un team.

== Sprint
Intervallo di tempo fisso, definito nella metodologia di sviluppo software Agile, durante il quale un team di sviluppo lavora per completare un insieme specifico di attività e/o funzionalità definite nello #glossario("Sprint Planning").

== Sprint Planning
Processo nel quale si definiscono le attività da svolgere e i prodotti attesi da ogni ciclo di sviluppo (#glossario("sprint"))

#pagebreak()
= W

== WebApp
Un software che viene eseguito in un browser Web, accessibile attraverso una connessione ad Internet.

== Wireframe
Rappresentazione grafica semplificata di una pagina web o di una schermata di un'app, che evidenzia la struttura e la disposizione degli elementi dell'interfaccia.
