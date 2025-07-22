#import "../../../templates/template.typ": *

#show: content => verbale(
  titoloDocumento: "Undicesima Riunione",
  abstract: "Retrospettiva incontro con il Prof. Cardin",
  responsabili: "Mirco Borella",
  redattori: "Pietro Crotti",
  verificatori: "Matteo Marangon",
  tipo: "Verbale Interno",
  destinatari: "Sigma18",
  versioneAttuale: "1.0.0",
  versioni: (
    "1.0.0",
    "2025/07/15",
    "Marco Egidi",
    "Matteo Marangon",
    "Prima stesura del documento",
  ),
  content: content,
)

= Riferimenti generali
Il seguente documento riporta il resoconto della riunione interna del gruppo _Sigma18_, tenutasi in modalità *virtuale* tramite la piattaforma _Discord_ il *15 luglio 2025* della durata di *un'ora*.

== Partecipanti
- Alessandro Bernardello
- Mirco Borella
- Pietro Crotti
- Marco Egidi
- Matteo Marangon
- Aleena Mathew
- Carmelo Russello

= Ordine del giorno
== Retrospettiva dell'incontro con il Prof. Cardin

È stato svolto un incontro formale con il Prof. Riccardo Cardin il giorno *10 luglio 2025* per effettuare la revisione #glossario("RTB (Requirements and Technology Baseline)"), presentando il *PoC* e le tecnologie scelte per lo sviluppo del progetto.

Sono emerse diverse criticità riguardanti la gestione del #glossario("Glossario"), l'assenza di #glossario("Norme di Progetto") dentro i riferimenti all'interno dell'#glossario("Analisi dei Requisiti"), mancanza delle versioni nei riferimenti dentro all'#glossario("Analisi dei Requisiti"), revisione dei casi d'uso e dei Requisiti di vincolo, aggiunta di una tabella per il tracciamento.

= Conclusioni e decisioni prese
Il gruppo _Sigma18_ ha deciso di procedere con l'implementazione delle modifiche emerse durante l'incontro.

= Attività programmate
#tabellaAttivitaProgrammate(attivita: (
  link("https://github.com/Sigma18Unipd/docs/issues/101")[00101],
  "Aggiornamento Piano di Progetto Settimo Sprint",
  link("https://github.com/Sigma18Unipd/docs/issues/105")[00105],
  "Stesura verbale interno 2025-07-08",
  link("https://github.com/Sigma18Unipd/docs/issues/107")[00107],
  "Stesura relazione per il 2025-07-16",
))
