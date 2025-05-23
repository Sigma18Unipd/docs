#import "../../../templates/template.typ": *

#show: content => verbale(
  titoloDocumento: "Sesta Riunione",
  abstract: "Retrospettiva quarto sprint e pianificazione attività.",
  responsabili: "Pietro Crotti",
  redattori: "Pietro Crotti",
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

== Analisi e scelta della libreria per la gestione dei blocchi di un flusso
Il gruppo ha analizzato le librerie disponibili per la gestione dei blocchi di un flusso e ha deciso di utilizzare #glossario("React Flow") per la sua semplicità d'uso.

Il gruppo _Sigma18_ si impegna a studiare la tecnologia e ad analizzarne in dettaglio le funzionalità al fine di integrarla nel #glossario("PoC (Proof of Concept)").

== Programmazione attività future
Il gruppo ha deciso di completare la stesura dei documenti di piano di qualifica e norme di progetto in parallelo, in modo da velocizzarne il processo di stesura e consentire di arrivare ad una revisione incrociata tra i membri in un tempo breve.

È stata pianificata la stesura del diario di bordo che si terrà il giorno *26 Maggio 2025* alle ore *12:30*.

I membri del gruppo continueranno in autonomia ad approfondire le tecnologie apprese nelle sessioni di formazione svolte nelle settimane precedenti, nello specifico #glossario("NestJS"), #glossario("React") e #glossario("Shadcn").

= Conclusioni e decisioni prese
Il gruppo ha deciso di procedere con la redazione in parallelo dei documenti rimasti per rendere piú rapido il processo di stesura e permettere una revisione incrociata tra i membri.

Il gruppo Sigma18 si impegna a procedere con lo sviluppo del PoC e ad ultimare la documentazione necessaria.



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
