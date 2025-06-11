#import "../../../templates/template.typ": *

#show: content => verbale(
  titoloDocumento: "Ottava Riunione",
  abstract: "Retrospettiva quinto sprint, pianificazione sesto sprint, analisi dei documenti completati",
  responsabili: "Marco Egidi",
  redattori: "Marco Egidi",
  verificatori: "Aleena Mathew",
  tipo: "Verbale Interno",
  destinatari: "Sigma18",
  versioneAttuale: "1.0.0",
  versioni: (
    "1.0.0",
    "2025/05/27",
    "Marco Egidi",
    "Aleena Mathew",
    "Prima stesura del documento",
  ),
  content: content,
)

= Riferimenti generali
Il seguente documento riporta il resoconto della riunione interna del gruppo _Sigma18_, tenutasi in modalità *virtuale* tramite la piattaforma _Discord_ l' *11 Giugno 2025* per la durata di *un'ora*.

== Partecipanti
- Alessandro Bernardello
- Mirco Borella
- Pietro Crotti
- Marco Egidi
- Matteo Marangon
- Aleena Mathew
- Carmelo Russello

= Ordine del giorno
== Retrospettiva del quinto sprint
Il gruppo ha analizzato in retrospettiva lo #glossario("sprint") appena concluso per discutere eventuali problemi riscontrati.

Durante lo svolgimento di questo _sprint_ sono emerse particolari difficoltà relative alle tecnologie utilizzate per lo sviluppo lato #glossario("Backend") e un rallentamento generale delle attività riconducibile alla concomitanza con la sessione estiva di esami.\

Il gruppo ha quindi deciso di approfondire lo studio delle tecnologie scelte e di adottare una suddivisione dei ruoli flessibile per permettere ai membri del gruppo di svolgere le mansioni di un ruolo diverso da quello assegnato, in modo da garantire il regolare avanzamento del progetto didattico.

È possibile trovare un resoconto più dettagliato nel #link("https://sigma18unipd.github.io/documentiCompilati/2-RTB/documentidiprogetto/pianodiprogetto_0.6.0.pdf")[Piano di Progetto].

== Pianificazione sesto sprint
Il sesto _sprint_ avrà una durata di 2 settimane, dal 10/06/2025 al 23/06/2025.

Durante questo periodo il gruppo si dedicherà al continuo sviluppo del #glossario("PoC (Proof of Concept)"), con una particolare attenzione al _Backend_.

Al fine di garantire la leggibilità e la coerenza della documentazione, tutti i nuovi termini introdotti durante lo sviluppo del _PoC_ verranno integrati nel glossario del progetto.

== Analisi dei documenti completati
Durante la riunione, il gruppo ha effettuato collettivamente la verifica dei documenti di *Norme di Progetto* e *Piano di Qualifica* completati durante il quinto _sprint_.

Inoltre il gruppo ha contattato l'azienda proponente per l'approvazione del verbale esterno del 20/05/2025, inerente agli incontri di formazione, che è stato successivamente firmato.


= Conclusioni e decisioni prese
Il gruppo Sigma18 si impegna a continuare lo sviluppo del _PoC_ in modo tale da rispettare le scadenze stabilite, cercando di mitigare il rallentamento delle attività causato dalla sessione estiva di esami.

= Attività programmate
#tabellaAttivitaProgrammate(
  attivita: (
    link("https://github.com/Sigma18Unipd/docs/issues/58")[00058],
    "Sviluppo Frontend PoC",
    link("https://github.com/Sigma18Unipd/docs/issues/59")[00059],
    "Sviluppo Backend PoC",
    link("https://github.com/Sigma18Unipd/docs/issues/75")[00075],
    "Stesura verbale interno 2025-06-11",
  ),
)
