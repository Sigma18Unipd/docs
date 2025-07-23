#import "../../../templates/template.typ": *

#show: content => verbale(
  titoloDocumento: "Undicesima Riunione",
  abstract: "Retrospettiva incontro con il Prof. Cardin",
  responsabili: "Mirco Borella",
  redattori: "Marco Egidi",
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

L'incontro di revisione #glossario("RTB (Requirements and Technology Baseline)") con il Prof. Riccardo Cardin, inizialmente previsto per mercoledì *9 luglio 2025*, è stato posticipato a giovedì *10 luglio 2025* a causa dell'assenza di un membro del gruppo.

In seguito alla riprogrammazione dell'incontro, il gruppo si è presentato al completo il giorno seguente, presentando il #glossario("PoC (Proof of Concept)") e le tecnologie scelte per lo sviluppo del progetto.

Sono emerse diverse criticità riguardanti la gestione del glossario, l'assenza di Norme di Progetto dentro i riferimenti all'interno dell'Analisi dei Requisiti, mancanza delle versioni nei riferimenti dentro all'Analisi dei Requisiti, revisione dei casi d'uso e dei Requisiti di vincolo, aggiunta di una tabella per il tracciamento.

In seguito alle problematiche segnalate dal Prof. Cardin, il gruppo si impegna a risolvere le criticità emerse e rivedere la documentazione in modo da rispettare le indicazioni ricevute, in particolare effettuando una sostanziale ristrutturazione del documento di Analisi dei Requisiti.

= Conclusioni e decisioni prese
Il gruppo _Sigma18_ ha deciso di procedere con l'implementazione delle modifiche emerse durante l'incontro.

= Attività programmate
#tabellaAttivitaProgrammate(attivita: (
  link("https://github.com/Sigma18Unipd/docs/issues/109")[00109],
  "Aggiornamento Analisi dei Requisiti",
  link("https://github.com/Sigma18Unipd/docs/issues/111")[00111],
  "Aggiornamento Piano di Qualifica",
  link("https://github.com/Sigma18Unipd/docs/issues/117")[00117],
  "Stesura verbale interno 2025/07/15",
))
