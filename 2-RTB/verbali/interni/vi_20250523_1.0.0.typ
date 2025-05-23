#import "../../../templates/template.typ": *

#show: content => verbale(
  titoloDocumento: "Sesta Riunione",
  abstract: "Retrospettiva quarto sprint e pianificazione attività.",
  responsabili: "Pietro Crotti",
  redattori: "Piero Crotti",
  verificatori: "Marco Egidi",
  tipo: "Verbale Interno",
  destinatari: "Sigma18",
  versioneAttuale: "1.0.0",
  versioni: (
    "1.0.0",
    "2025/05/23",
    "Pietro Crotti",
    "Marco Egidi",
    "Prima stesura del documento",
  ),
  content: content,
)

= Riferimenti generali
Il seguente documento contiene il resoconto della riunione interna del gruppo _Sigma18_ tenutasi in modalità *virtuale* tramite la piattaforma _Discord_, avvenuta in data *23 Maggio 2025* e dalla durata di *un'ora*.

== Partecipanti
- Alessandro Bernardello
- Mirco Borella
- Pietro Crotti
- Marco Egidi
- Matteo Marangon
- Aleena Mathew
- Carmelo Russello

= Ordine del giorno

== Verifica Analisi dei Requisiti
Il gruppo, a seguito di un'attenta revisione, ha validato il documento di Analisi dei Requisiti e ne approva la pubblicazione.


== Monitoraggio dell'avanzamento dei documenti dell'RTB.
Ciascuno dei membri del gruppo ha presentato i progressi effettuati sui documenti di propria competenza , in particolare:
- Piano di Qualifica
- Norme di Progetto

== Studio delle qualifiche di React Flow
Il gruppo ha deciso di esaminare più nel dettaglio #glossario("React Flow") per valutarne l'impiego nella realizzazione del #glossario("PoC (Proof of Concept)"), ipotizzandone l'utilizzo come strumento di supporto allo sviluppo.\

== Programmazione attività future
Il gruppo ha deciso di continuare a stilare i documenti di Piano di Qualifica e Norme di Progetto in parallelo, in modo da velocizzare il processo di stesura e consentire una revisione incrociata tra i membri.\
Inoltre è stata assegnata la stesura del Diario di Bordo che si terra il giorno *26 Maggio 2025* alle ore *12:30*.
Il gruppo continuerà a approfondire le tecnologie apprese nelle sessioni di formazione svolte nelle settimane precedenti, nello specifico #glossario("NestJS") e _React Flow_.

= Conclusioni e decisioni prese
Il gruppo ha deciso di procedere con la redazione in parallelo dei documenti rimasti per rendere piú rapido il processo di stesura e permettere una revisione incrociata tra i membri.\
Il gruppo Sigma18 si impegna a procedere con lo sviluppo del PoC e ad ultimare la documentazione necessaria.\



= Attività programmate
#tabellaAttivitaProgrammate(
  attivita: (
    link("https://github.com/Sigma18Unipd/docs/issues/56")[00056],
    "Stesura Diario di Bordo 2025/05/26",
    link("https://github.com/Sigma18Unipd/docs/issues/57")[00057],
    "Stesura Verbale Interno 2025/05/23",
    link("https://github.com/Sigma18Unipd/docs/issues/58")[00058],
    "Sviluppo Frontend PoC",
    link("https://github.com/Sigma18Unipd/docs/issues/59")[00059],
    "Sviluppo Backend PoC",
  ),
)
