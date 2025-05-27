#import "../../../templates/template.typ": *

#show: content => verbale(
  titoloDocumento: "Settima Riunione",
  abstract: "Retrospettiva quarto sprint, pianificazione quinto sprint, monitoraggio dello sviluppo del PoC .",
  responsabili: "Matteo Marangon",
  redattori: "Carmelo Russello",
  verificatori: "Marco Egidi",
  tipo: "Verbale Interno",
  destinatari: "Sigma18",
  versioneAttuale: "1.0.0",
  versioni: (
    "1.0.0",
    "2025/05/27",
    "Carmelo Russello",
    "Marco Egidi",
    "Prima stesura del documento",
  ),
  content: content,
)

= Riferimenti generali
Il seguente documento contiene il resoconto della riunione interna del gruppo _Sigma18_ tenutasi in modalità *virtuale* tramite la piattaforma _Discord_, avvenuta in data *27 Maggio 2025* e dalla durata di *un'ora*.

== Partecipanti
- Alessandro Bernardello
- Mirco Borella
- Pietro Crotti
- Marco Egidi
- Matteo Marangon
- Aleena Mathew
- Carmelo Russello

= Ordine del giorno
== Retrospettiva del quarto sprint
Il gruppo ha analizzato in retrospettiva lo #glossario("sprint") appena concluso per discutere eventuali problemi riscontrati.

Nel corso dello svolgimento di questo _sprint_ sono state riscontrate difficoltà correlate alla documentazione delle tecnologie utilizzate per lo sviluppo del #glossario("PoC (_Proof of Concept_)"), a causa di ciò il gruppo ha preso la decisione di approfondire lo studio delle tecnologie scelte e di contattare l'azienda proponente in caso di ulteriori dubbi.

È possibile trovare un resoconto più dettagliato nel #link("https://sigma18unipd.github.io/documentiCompilati/2-RTB/documentidiprogetto/pianodiprogetto_0.5.0.pdf")[Piano di Progetto].

== Pianificazione quinto sprint
Il quinto _sprint_ avrà una durata di 2 settimane, dal 27/05/2025 al 10/06/2025.

Durante questo periodo, il gruppo si dedicherà alla verifica dei documenti di *Norme di Progetto* e *Piano di Qualifica*, in parallelo allo sviluppo del #glossario("Backend") e #glossario("Frontend") del _PoC_.

Inoltre, al fine di garantire la leggibilità e la coerenza della documentazione, tutti i nuovi termini introdotti durante lo sviluppo del _PoC_ verranno integrati nel glossario del progetto.


== Monitoraggio dello sviluppo del _PoC_
I membri del gruppo ai quali è stato assegnato il ruolo di programmatori nel corso del quarto _sprint_ hanno mostrato i progressi compiuti nello sviluppo del _frontend_ e _backend_ del _PoC_ al fine di aggiornare gli altri componenti del gruppo.\
Sono state inoltre illustrate le problematiche emerse durante lo sviluppo e le soluzioni adottate per risolverle.


= Conclusioni e decisioni prese
Il gruppo Sigma18 si impegna a portare a termine la verifica dei documenti rimanenti, al fine di concentrare in maniera efficace le proprie risorse sullo sviluppo del _PoC_ e rispettare le scadenze stabilite, garantendo il regolare avanzamento del progetto didattico\




= Attività programmate
#tabellaAttivitaProgrammate(
  attivita: (
    link("https://github.com/Sigma18Unipd/docs/issues/58")[00058],
    "Sviluppo Frontend PoC",
    link("https://github.com/Sigma18Unipd/docs/issues/59")[00059],
    "Sviluppo Backend PoC",
    link("https://github.com/Sigma18Unipd/docs/issues/51")[00066],
    "Stesura verbale interno 2025-05-27",
  ),
)
