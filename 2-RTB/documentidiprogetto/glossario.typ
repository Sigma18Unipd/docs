#import "../../templates/templateGlossario.typ": *

#show: content => verbale(
  titoloDocumento: "Glossario",
  responsabili: "Matteo Marangon",
  redattori: "Mirco Borella",
  verificatori: ("Marco Egidi", "Pietro Crotti"),
  tipo: "Documento Interno",
  destinatari: ("Sigma18", "Prof. Tullio Vardanega", "Prof. Riccardo Cardin"),
  versioneAttuale: "0.3.0",
  versioni: (
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
= G

== Git
Sistema di controllo di versione distribuito che consente a più utenti di lavorare contemporaneamente su un progetto tenendo traccia delle modifiche apportate al codice sorgente.

== GitHub
Piattaforma web basata su #glossario("git") che fornisce strumenti per l'hosting di repository, il versionamento del codice e la collaborazione tra sviluppatori.

#pagebreak()
= M

== MVP (_Minimum Viable Product_)
Il prodotto minimo funzionante (in inglese _Minimum Viable Product_) è la versione di un prodotto con caratteristiche appena sufficienti per essere funzionante e utilizzabile dai primi clienti, i quali possono fornire _feedback_ per migliorare il prodotto stesso.

#pagebreak()
= P

== PB (_Product Baseline_)
Fase del processo di sviluppo software in cui viene definita la versione finale del prodotto, pronta per il rilascio. Durante questa fase vengono completate le attività di sviluppo, test e validazione del prodotto, garantendo il soddisfacimento dei requisiti e delle specifiche concordate.

== PoC (_Proof of Concept_)
Prototipo o modello iniziale che dimostra la fattibilità o conferma la validità di un principio o concetto, senza dover sviluppare un prodotto completo.

#pagebreak()
= R

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

== Slack
Slack è uno strumento di collaborazione aziendale utilizzato per scambiarsi messaggi istantanei tra vari membri all'interno di un team.

== Sprint
Intervallo di tempo fisso, definito nella metodologia di sviluppo software Agile, durante il quale un team di sviluppo lavora per completare un insieme specifico di attività e/o funzionalità definite nello #glossario("Sprint Planning").

== Sprint Planning
Processo nel quale si definiscono le attività da svolgere e i prodotti attesi da ogni ciclo di sviluppo (#glossario("sprint"))

#pagebreak()
= W

== Wireframe
Rappresentazione grafica semplificata di una pagina web o di una schermata di un'app, che evidenzia la struttura e la disposizione degli elementi dell'interfaccia.
