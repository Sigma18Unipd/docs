#import "../../../templates/template.typ": *

#show: content => verbale(
  titoloDocumento: "Decima Riunione",
  abstract: "Retrospettiva settimo sprint e pianificazione ottavo sprint con revisione RTB",
  responsabili: "Mirco Borella",
  redattori: "Pietro Crotti",
  verificatori: "Matteo Marangon",
  tipo: "Verbale Interno",
  destinatari: "Sigma18",
  versioneAttuale: "1.0.0",
  versioni: (
    "1.0.0",
    "2025/07/08",
    "Pietro Crotti",
    "Matteo Marangon",
    "Prima stesura del documento",
  ),
  content: content,
)

= Riferimenti generali
Il seguente documento riporta il resoconto della riunione interna del gruppo _Sigma18_, tenutasi in modalità *virtuale* tramite la piattaforma _Discord_ l'*8 luglio 2025* della durata di *un'ora*.

== Partecipanti
- Alessandro Bernardello
- Mirco Borella
- Pietro Crotti
- Marco Egidi
- Matteo Marangon
- Aleena Mathew
- Carmelo Russello

= Ordine del giorno
== Retrospettiva del settimo sprint
Il gruppo ha analizzato in retrospettiva lo #glossario("sprint") appena concluso per discutere eventuali problemi riscontrati.

Durante lo svolgimento di questo _sprint_ è stato conclusa la codifica del #glossario("PoC (Proof of Concept)"), nonostante la sovrapposizione con la parte finale della sessione di esami per alcuni membri del gruppo.

È stato pianificato un incontro formale con il Prof. Riccardo Cardin per il giorno *9 luglio 2025* per effettuare la revisione #glossario("RTB (Requirements and Technology Baseline)"), presentando il *PoC* e le tecnologie scelte per lo sviluppo del progetto.

È possibile trovare un resoconto più dettagliato nel #link("https://sigma18unipd.github.io/documentiCompilati/2-RTB/documentidiprogetto/pianodiprogetto_1.0.1.pdf")[Piano di Progetto].

== Pianificazione ottavo sprint
L'ottavo _sprint_ avrà una durata di 2 settimane, dal 08/07/2025 al 21/07/2025.

Durante questo periodo il gruppo si dedicherà all'organizzazione e alla preparazione degli incontri di revisione con il Prof. Riccardo Cardin e il Prof. Tullio Vardanega, all'aggiornamento del #glossario("Piano di Progetto") e al continuo aggiornamento del #glossario("Glossario").

A causa delle tempistiche previste per l'organizzazione degli incontri, il gruppo ha preventivato poche ore per l'ottavo _sprint_, ma resta disponibile ad aumentare le ore in caso si riesca ad ottenere l'approvazione prima della fine dello _sprint_.

Al fine di garantire la leggibilità e la coerenza della documentazione, tutti i termini introdotti verranno integrati nel glossario del progetto.

= Conclusioni e decisioni prese
Il gruppo _Sigma18_ attende gli esiti degli incontri riguardanti la baseline di RTB, prima di concentrarsi nella fase di PB.

= Attività programmate
#tabellaAttivitaProgrammate(attivita: (
  link("https://github.com/Sigma18Unipd/docs/issues/101")[00101],
  "Aggiornamento Piano di Progetto Settimo Sprint",
  link("https://github.com/Sigma18Unipd/docs/issues/105")[00105],
  "Stesura verbale interno 2025-07-08",
  link("https://github.com/Sigma18Unipd/docs/issues/107")[00107],
  "Stesura relazione per il 2025-07-16",
))
