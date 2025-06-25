#import "../../../templates/template.typ": *

#show: content => verbale(
  titoloDocumento: "Nona Riunione",
  abstract: "Retrospettiva sesto sprint, pianificazione settimo sprint, allineamento tecnico sul PoC",
  responsabili: "Carmelo Russello",
  redattori: "Pietro Crotti",
  verificatori: "Matteo Marangon",
  tipo: "Verbale Interno",
  destinatari: "Sigma18",
  versioneAttuale: "1.0.1",
  versioni: (
    "1.0.1",
    "2025/06/25",
    "Pietro Crotti",
    "Matteo Marangon",
    "Fix minori",
    "1.0.0",
    "2025/06/25",
    "Pietro Crotti",
    "Matteo Marangon",
    "Prima stesura del documento",
  ),
  content: content,
)

= Riferimenti generali
Il seguente documento riporta il resoconto della riunione interna del gruppo _Sigma18_, tenutasi in modalità *virtuale* tramite la piattaforma _Discord_ l' *25 Giugno 2025* per la durata di *un'ora*.

== Partecipanti
- Alessandro Bernardello
- Mirco Borella
- Pietro Crotti
- Marco Egidi
- Matteo Marangon
- Aleena Mathew
- Carmelo Russello

= Ordine del giorno
== Retrospettiva del sesto sprint
Il gruppo ha analizzato in retrospettiva lo #glossario("sprint") appena concluso per discutere eventuali problemi riscontrati.

Durante lo svolgimento di questo _sprint_ sono emerse particolari difficoltà e rallentamenti relativi allo sviluppo del #glossario("PoC (Proof of Concept)") riconducibili alla concomitanza con la sessione estiva di esami che i membri del gruppo stanno affrontando.\

È possibile trovare un resoconto più dettagliato nel #link("https://sigma18unipd.github.io/documentiCompilati/2-RTB/documentidiprogetto/pianodiprogetto_0.7.0.pdf")[Piano di Progetto].

== Pianificazione settimo sprint
Il settimo _sprint_ avrà una durata di 2 settimane, dal 24/06/2025 al 07/07/2025.

Durante questo periodo il gruppo si dedicherà al completamento del #glossario("PoC (Proof of Concept)"), per presentarlo all'azienda proponente e durante la revisione RTB.

Al fine di garantire la leggibilità e la coerenza della documentazione, tutti i termini introdotti verranno integrati nel glossario del progetto.

== Allineamento tecnico sul PoC
Il gruppo ha discusso alcune problematiche riscontrate riguardanti lo sviluppo del #glossario("Backend"). Nello specifico, si è deciso di sviluppare quest'ultimo in #glossario("Python") in modo da velocizzare e semplificare la codifica del _PoC_. Il gruppo ha quindi deciso di approfondire l'argomento di #glossario("Gen AI"), in particolare per quanto riguarda l'applicazione concreta nel _PoC_ e la scelta del modello da utilizzare.

= Conclusioni e decisioni prese
È stato stabilito l'utilizzo del modello di _GenAI Deepseek R1_ per il _PoC_.
Il gruppo _Sigma18_ si impegna a continuare lo sviluppo del _backend_ e #glossario("Frontend") per raggiungerne il completamento entro la fine dello _sprint_, nel tentativo di recuperare i rallentamenti accumulati a causa della sessione estiva d'esami.


= Attività programmate
#tabellaAttivitaProgrammate(attivita: (
  link("https://github.com/Sigma18Unipd/docs/issues/58")[00058],
  "Sviluppo Frontend PoC",
  link("https://github.com/Sigma18Unipd/docs/issues/59")[00059],
  "Sviluppo Backend PoC",
  link("https://github.com/Sigma18Unipd/docs/issues/80")[00080],
  "Stesura verbale interno 2025-06-25",
  link("https://github.com/Sigma18Unipd/docs/issues/81")[00081],
  "Aggiornamento Piano di Progetto",
))
