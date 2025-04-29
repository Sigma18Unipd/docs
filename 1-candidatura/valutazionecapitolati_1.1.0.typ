#import "../templates/template.typ": *

#show: content => verbale(
  titoloDocumento: "Valutazione dei capitolati",
  abstract: "Valutazione dei capitolati proposti e motivazioni per la scelta del capitolato C3.",
  responsabili: "Marco Egidi",
  redattori: ("Alessandro Bernardello", "Aleena Mathew"),
  verificatori: "Carmelo Russello",
  tipo: "Documento Esterno",
  destinatari: ("Prof. Tullio Vardanega", "Prof. Riccardo Cardin"),
  versioneAttuale: "1.1.0",
  versioni: (
    "1.1.0",
    "2025-03-11",
    "Alessandro Bernardello",
    "Carmelo Russello",
    "Aggiunta Sezioni",
    "1.0.0",
    "2025-03-10",
    "Aleena Mathew",
    "Carmelo Russello",
    "Prima stesura del documento",
  ),
  content: content,
)
= Riferimenti generali
Il documento contiene la valutazione dei capitolati proposti per il progetto e le motivazioni per cui è stato scelto il capitolato *C3*.

= Capitolato C1: Artificial QI
== Descrizione
Il capitolato *C1*, _Artificial QI_, proposto dall'azienda *Zucchetti*, richiede lo sviluppo di un sistema che valuti la performance degli LLM valutando la correttezza delle risposte fornite a domande predeterminate.

== Tecnologie utilizzate
Per la realizzazione del progetto è necessario:
- L'uso di API Rest secondo lo _standard_ *OpenAPI* 3.1.
- L'uso di formati strutturati come *JSON* o *XML* per la memorizzazione delle risposte.
Viene lasciata libertà nella scelta delle tecnologie specifiche da utilizzare nelle altri parti del progetto.

== Valutazione
Nonostante il capitolato permettesse di avere libertà nella scelta delle tecnologie da utilizzare, il gruppo ha deciso di non scegliere questo capitolato in quanto il tema trattato non era di interesse per tutti i membri del gruppo.

= Capitolato C3: Automatizzare le routine digitali tramite l'intelligenza generativa

== Descrizione
Il capitolato *C3*, proposto dall'azienda *Var Group S.p.A.*, richiede lo sviluppo di un'applicazione che permetta di automatizzare le routine digitali tramite l'intelligenza generativa in cloud.

Si vuole creare un client per ambiente Windows e/o Mac per disegnare dei _workflow_ usando blocchi funzionali che accedono alle _API_ esposte dalle varie applicazioni sul sistema.\
Il client deve avere un'interfaccia _drag & drop_ per il posizionamento dei vari blocchi.\
L'utente deve essere in grado di esprimere in linguaggio naturale la logica funzionale desiderata per ogni passaggio del _workflow_, che verrà poi interpretata con l'uso dell'intelligenza artificiale.
== Tecnologie utilizzate
È stato consigliato l'utilizzo delle tecnologie riportate di seguito:
- *Generative AI* di AWS.
- *MongoDB* per il database.
- Sviluppo Agent
  - Ambiente Windows: *Python* / *C\# *e *React* per l'interfaccia applicativa web.
  - Ambiente Apple: *Swift* e *Swift UI* per l'interfaccia.
- Sviluppo API Cloud con *Node.js*, *Python*, *TypeScript*.

== Valutazione
Il gruppo ha mostrato una forte inclinazione per questo capitolato, poiché il tema trattato è di rilevante interesse per i membri e permette di sfruttare tecnologie innovative. Inoltre, il capitolato offre un'ottima esperienza e supporto tecnico. Nonostante la presenza di numerose tecnologie richieste, la proposta è stata ritenuta molto interessante e stimolante, motivo per cui il gruppo ha espresso unanime interesse per questo capitolato.

= Capitolato C4: NearYou - Smart custom advertising platform
== Descrizione
Il capitolato *C4*, _NearYou - Smart custom advertising platform_, proposto dall'azienda *Sync Lab S.r.l.*, richiede lo sviluppo di un sistema che permetta di generare annunci pubblicitari dedicati agli utenti, sfruttando i dati ottenuti tramite la loro profilazione e la loro posizione geografica, utilizzando LLM.
Inoltre è richiesta la generazione di dati GPS che simulino i tragitti e posizione attuale degli utenti lungo il percorso.
Lo scopo è creare annunci personalizzati per massimizzare la loro l'efficacia, migliorando in modo significativo il ritorno sull'investimento.

== Tecnologie utilizzate
Viene consigliato l'utilizzo delle seguenti tecnologie:
- Framework per la simulazione dei dati geospaziali. *Python* con eventuali librerie per generazione dati, come _faker_
- _Broker_ per il disaccoppiamento dello _stream_ di informazioni provenienti dai simulatori, come *Apache Kafka*, *RabbitMQ*, *HiveMQ*
- *Apache Airflow*, *Apache NiFi* o altri strumenti di data stream processing per prelevare e processare i vari dati provenienti dagli stream.
- *LangChain*, *Flow* per processare i messaggi in input e fornire una risposta tramite LLM.
- Database in grado di:
  - gestire ingenti quantità di dati in `INSERT`
  - gestire comodamente messaggi di tipo _timeseries_
  - elaborare dati geospaziali
- *Superset*, *Grafana*, *Tableau* per la _data visualization_.

== Valutazione
Il gruppo ha valutato positivamente il capitolato *C4*, ha suscitato molto interesse nel gruppo e ha concordato di tenere la proposta come seconda opzione.

= Capitolato C6: Sistema di Gestione di un Magazzino Distribuito

== Descrizione
Il capitolato *C6*, _Sistema di Gestione di un Magazzino Distribuito_, proposto dall'azienda *M31 S.r.l.*, richiede lo sviluppo di un sistema che permetta una gestione ottimale dell'inventario in una rete logistica distribuita.
Si desidera consentire una gestione fluida delle operazioni logistiche, come il riassortimento, il trasferimento di prodotti tra le diverse sedi e la riduzione dei livelli medi di scorte, pur mantenendo scorte di sicurezza per prevenire carenze dovute a variazioni della domanda o ritardi nella consegna.

== Tecnologie utilizzate
È stato consigliato l'utilizzo delle tecnologie riportate di seguito:
- *Node.js* e *Nest.js* per lo sviluppo dei microservizi.
- *Go* per lo sviluppo di componenti ad alte prestazioni.
- *NATS* o *Apache Kafka* per la comunicazione tra i microservizi.
- *Google Cloud Platform* per l'hosting del sistema di orchestrazione.
- *MongoDB* per la memorizzazione di dati non strutturati.
- *PostgreSQL* per la persistenza di dati strutturati.
- *Redis* come sistema di caching.
- *Angular* per l'interfaccia utente.

== Valutazione
Dopo un'attenta discussione, il gruppo ha scelto di scartare il capitolato *C6* per via dell'elevata complessità delle tecnologie richieste e per lo scarso interesse mostrato nella problematica trattata.
