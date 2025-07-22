#import "../../../templates/template.typ": *

#show: content => verbale(
  titoloDocumento: "Dodicesima Riunione",
  abstract: "Retrospettiva ottavo sprint e pianificazione nono sprint con revisione RTB",
  responsabili: "Aleena Mathew",
  redattori: "Carmelo Russello",
  verificatori: "Mirco Borella",
  tipo: "Verbale Interno",
  destinatari: "Sigma18",
  versioneAttuale: "1.0.0",
  versioni: (
    "1.0.0",
    "2025/07/22",
    "Carmelo Russello",
    "Mirco Borella",
    "Prima stesura del documento",
  ),
  content: content,
)

= Riferimenti generali
Il seguente documento riporta il resoconto della riunione interna del gruppo _Sigma18_, tenutasi in modalità *virtuale* tramite la piattaforma _Discord_ il *22 luglio 2025* della durata di *un'ora*.

== Partecipanti
- Alessandro Bernardello
- Mirco Borella
- Pietro Crotti
- Marco Egidi
- Matteo Marangon
- Aleena Mathew
- Carmelo Russello

= Ordine del giorno
== Retrospettiva dell'ottavo sprint
Il gruppo ha analizzato in retrospettiva lo #glossario("sprint") appena concluso per discutere eventuali problemi riscontrati.

Durante lo svolgimento di questo _sprint_, è stata effettuata la revisione #glossario("RTB (Requirements and Technology Baseline)") con il Prof. Riccardo Cardin, originariamente in programma per il 9 luglio 2025 ma rimandata al 10 luglio 2025 per impegni universitari di un membro del gruppo.\
La riunione ha visto la presentazione del #glossario("PoC (Proof of Concept)") e delle tecnologie scelte per lo sviluppo del progetto.

Il gruppo ha ricevuto _feedback_ dal Prof. Riccardo Cardin, che ha suggerito una revisione del documento di analisi dei requisiti. Il gruppo ha quindi provveduto ad aggiornare il documento, tenendo conto delle criticità emerse e delle osservazioni ricevute.

Il gruppo ha ricevuto in data 22 luglio 2025 il semaforo verde per procedere con la revisione con il Prof. Tullio Vardanega.

È possibile trovare un resoconto più dettagliato nel #link("https://sigma18unipd.github.io/documentiCompilati/2-RTB/documentidiprogetto/pianodiprogetto_1.1.0.pdf")[Piano di Progetto].

== Pianificazione nono sprint
Il nono _sprint_ avrà una durata di 2 settimane, dal 22/07/2025 al 04/08/2025.

Durante questo periodo il gruppo si dedicherà all'organizzazione per l'incontro con il Prof. Tullio Vardanega in modo da poter presentare la revisione della RTB e poter procedere con la fase di #glossario("PB (Project Baseline)").

Il gruppo si impegna a fornire una documentazione completa e aggiornata, in modo da garantire la trasparenza e la tracciabilità delle attività svolte in vista della revisione RTB.

Inoltre è in programma l'inizio dello sviluppo del #glossario("MvP (Minimum Viable Product)"), nel caso in cui la revisione con il Prof. Tullio Vardanega vada a buon fine.

Al fine di garantire la leggibilità e la coerenza della documentazione, tutti i termini introdotti verranno integrati nel glossario del progetto.

= Conclusioni e decisioni prese
Il gruppo _Sigma18_ ha deciso di concentrarsi sulla revisione della RTB e sull'organizzazione dell'incontro con il Prof. Tullio Vardanega per procedere con la fase di PB.

= Attività programmate
#tabellaAttivitaProgrammate(attivita: (
  link("https://github.com/Sigma18Unipd/docs/issues/115")[00115],
  "Aggiornamento piano di qualifica ottavo sprint",
  link("https://github.com/Sigma18Unipd/docs/issues/116")[00116],
  "stesura lettera di presentazione RTB",
  link("https://github.com/Sigma18Unipd/docs/issues/117")[00117],
  "Stesura verbale interno 2025-07-15",
  link("https://github.com/Sigma18Unipd/docs/issues/118")[00118],
  "Stesura verbale interno 2025-07-22",
))
