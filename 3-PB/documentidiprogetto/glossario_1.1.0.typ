#import "../../templates/templateGlossario.typ": *

#show: content => verbale(
  titoloDocumento: "Glossario",
  responsabili: "Matteo Marangon",
  redattori: ("Mirco Borella", "Matteo Marangon", "Aleena Mathew", "Pietro Crotti"),
  verificatori: ("Alessandro Bernardello", "Carmelo Russello", "Marco Egidi", "Pietro Crotti", "Matteo Marangon", "Aleena Mathew"),
  tipo: "Documento Interno",
  destinatari: ("Sigma18", "Prof. Tullio Vardanega", "Prof. Riccardo Cardin"),
  versioneAttuale: "1.1.0",
  versioni: (
    "1.1.0",
    "2025/08/19",
    "Aleena Mathew",
    "Marco Egidi",
    "Aggiunta termini",
    "2025/08/18",
    "Aleena Mathew",
    "Matteo Marangon",
    "1.0.0",
    "2025/07/23",
    "Matteo Marangon",
    "Marco Egidi",
    "Aggiunta termini",
    "0.11.0",
    "2025/06/27",
    "Matteo Marangon",
    "Aleena Mathew",
    "Aggiunta termine",
    "0.10.0",
    "2025/06/26",
    "Pietro Crotti",
    "Matteo Marangon",
    "Rimozione termini non utilizzati, aggiunta termini e fix minori",
    "0.9.0",
    "2025/06/25",
    "Aleena Mathew",
    "Carmelo Russello",
    "Aggiunta termini per retrospettiva sesto sprint",
    "0.8.0",
    "2025/06/26",
    "Pietro Crotti",
    "Matteo Marangon",
    "Aggiunta termini per retrospettiva sesto sprint",
    "0.7.0",
    "2025/06/11",
    "Matteo Marangon",
    "Alessandro Bernardello",
    "Aggiunta termini per retrospettiva quinto sprint",
    "0.6.0",
    "2025/05/23",
    "Matteo Marangon",
    "Pietro Crotti",
    "Merge per rilascio Analisi dei Requisiti",
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

== Amazon Bedrock
Piattaforma cloud che permette di accedere via API a modelli fondamentali di AI generativa offerti da più provider e di integrarli direttamente in applicazioni personalizzate con il supporto di strumenti per l'orchestrazione, la sicurezza e il monitoraggio.

== Amazon Nova
Famiglia di modelli di base di Amazon AWS per l'intelligenza artificiale generativa, progettati per essere facilmente integrati con Amazon Bedrock.

== API (_Application Programming Interface_)
Insieme di regole o protocolli atti a consentire la comunicazione tra diversi prodotti o servizi e per far scambiare loro dati, caratteristiche e funzionalità.

== Audit
Il processo di "Audit" ha lo scopo di determinare in maniera indipendente la conformità di prodotti e processi selezionati ai requisiti, piani e accordi. L'attività di auditing è svolta da personale che non ha partecipato direttamente allo sviluppo dei prodotti, sei servizi o dei sistemi oggetto delle revisioni.

== AWS
Amazon Web Services (AWS) è una piattaforma di servizi _cloud_ offerta da Amazon. Si suddivide in base al servizio offerto come ad esempio: calcolo, archiviazione, database, _machine learning_ e altro.

== AWS Cognito
Piattaforma di identità per app web e per dispositivi mobili. È una directory utente, un server di autenticazione e un servizio di autorizzazione per token e AWS credenziali di accesso OAuth 2.0.
Permette di autenticare e autorizzare gli utenti dalla directory utente integrata, dalla directory aziendale e dai provider di identità utente come Google e Facebook.

== Axios
Axios è una libreria _JavaScript_ utilizzata per effettuare richieste #glossario("HTTP") in modo semplice e intuitivo in applicazioni web per comunicare con le API.


#pagebreak()
= B

== Backend
Il backend denota la parte di un programma che gestisce la logica e l'interazione con il database, fornendo dati e servizi al frontend.

== Backlog
Elenco di attività, funzionalità o requisiti da completare in un progetto. Il backlog viene utilizzato per pianificare e gestire il lavoro all'interno di un team di sviluppo.

== Branch
Ramo di un repository Git che consente di lavorare su una copia separata del codice sorgente. I branch vengono utilizzati per sviluppare nuove funzionalità o correggere bug senza influenzare il codice principale.

== Bug
Errore di funzionamento di un sistema o di un programma che causa un comportamento indesiderato o imprevisto.


#pagebreak()
= C

== Client
Componente o programma che accede ad un servizio reso disponibile da un _server_.

== Cloud
Insieme di risorse accessibili tramite internet, che consentono di utilizzare servizi e applicazioni senza doverli installare o gestire localmente.

== Commit
Operazione di salvataggio delle modifiche apportate al codice sorgente in un repository Git. Ogni commit rappresenta uno stato specifico del codice.


#pagebreak()
= D

== Dashboard
Pagina principale del #glossario("client") contenente le #glossario("routine") create dall'utente e la possibilità di crearne di nuove.

== DeepSeek R1
Modello di intelligenza artificiale open source.

== Design Thinking
Approccio di progettazione di un software centrato sull'esperienza utente che prende in considerazione il target di riferimento per costruire un'esperienza solida e mirata, particolarmente funzionale in un ambiente agile.

== Diagrammi UML
Un diagramma UML è uno schema che permette di analizzare, descrivere e documentare un sistema software mediante l'utilizzo di modelli visuali.


== Docker
Piattaforma open source che consente di creare, distribuire ed eseguire applicazioni all'interno di container, ambienti isolati che includono tutte le dipendenze necessarie per il funzionamento dell'applicazione. L'utilizzo dei container assicura coerenza, portabilità e semplicità di gestione tra diversi ambienti di sviluppo e produzione.

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
L'intelligenza artificiale generativa (o Gen AI) è un tipo di intelligenza artificiale che è in grado di generare testo, immagini, video o altro in risposta a richieste dette #glossario("prompt").

== Git
Sistema di controllo di versione distribuito che consente a più utenti di lavorare contemporaneamente su un progetto tenendo traccia delle modifiche apportate al codice sorgente.

== GitHub
Piattaforma web basata su Git che fornisce strumenti per l'hosting di repository, il versionamento del codice e la collaborazione tra sviluppatori.


#pagebreak()
= H

== HTTP
Hypertext Transfer Protocol (HTTP) è il protocollo di comunicazione utilizzato per il trasferimento di dati su Internet, consentendo la trasmissione di pagine web e risorse tra client e server.


#pagebreak()
= I

== ISO/IEC 12207:1995
Standard internazionale che definisce i processi di ciclo di vita del software, fornendo un framework per la pianificazione, lo sviluppo, il collaudo e la manutenzione del software.

== Issue
Un problema o un difetto identificato in un progetto software e registrato in una piattaforma di gestione dei problemi. Le issue possono riguardare bug, funzionalità mancanti o miglioramenti richiesti.

#pagebreak()
= J

== JWT (JSON Web Token)
Standard che definisce un modo compatto e sicuro per trasmettere informazioni tra le parti sotto forma di oggetto JSON. I JWT possono essere utilizzati per l'autenticazione e l'autorizzazione degli utenti.


#pagebreak()
= L

== LaTeX
Linguaggio di marcatura per produrre documenti di alta qualità. È ampiamente utilizzato per la scrittura di articoli scientifici, tesi e libri.

== Llama 3.3
Modello di intelligenza artificiale sviluppato da Meta AI.

== LLM (_Large Language Model_)
I modelli linguistici di grandi dimensioni (LLM) sono una categoria di modelli di intelligenza artificiale addestrati su immense quantità di dati che li rendono in grado di comprendere e generare linguaggio naturale in modo coerente con un _input_ fornito da un utente.

== Log
Elenco cronologico delle attività svolte all'interno di un sistema, utile per il monitoraggio e la risoluzione dei problemi.


#pagebreak()
= M

== Merge
Operazione di unione di due o più branch in un repository Git. Il merge consente di combinare le modifiche apportate in diversi rami del codice sorgente.

== Milestone
Punto di riferimento o obiettivo significativo all'interno di un progetto, che segna il completamento di una fase importante o il raggiungimento di un traguardo specifico. Segnala l'avanzamento del progetto in rapporto al programma stabilito.

== MongoDB
MongoDB è un database _NoSQL_ orientato ai documenti, in grado di gestire grandi volumi di dati non strutturati e semi-strutturati.

== MVP (_Minimum Viable Product_)
Il prodotto minimo funzionante (in inglese _Minimum Viable Product_) è la versione di un prodotto con caratteristiche appena sufficienti per essere funzionante e utilizzabile dai primi clienti, i quali possono fornire _feedback_ per migliorare il prodotto stesso.


#pagebreak()
= N

== NestJS
Un insieme di librerie in #glossario("Node.JS") basato su _Typescript_ dedicate alla costruzione di applicazioni lato #glossario("server") (#glossario("backend")) scalabili ed efficienti.

== Node.JS
Node.js è un ambiente di esecuzione JavaScript che consente di eseguire codice JavaScript al di fuori di un browser. È ampiamente utilizzato per lo sviluppo di applicazioni _web_ e _server-side_.


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

== React Flow
React Flow è una libreria basata su #glossario("React") progettata per la realizzazione di diagrammi e flussi di lavoro interattivi.

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

== Task
Una singola attività, compito o procedura facente parte di un'automazione composta da molte attività. Ogni task rappresenta un'unità di lavoro individuale all'interno di un processo automatizzato più ampio.

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
