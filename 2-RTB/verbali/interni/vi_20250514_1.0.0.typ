#import "../../../templates/template.typ": *

#show: content => verbale(
  titoloDocumento: "Quinta Riunione",
  abstract: "Retrospettiva terzo sprint, pianificazione quarto sprint, preparazione allo sviluppo del PoC .",
  responsabili: "Pietro Crotti",
  redattori: "Marco Egidi",
  verificatori: "Carmelo Russello",
  tipo: "Verbale Interno",
  destinatari: "Sigma18",
  versioneAttuale: "1.0.0",
  versioni: (
    "1.0.0",
    "2025/05/15",
    "Marco Egidi",
    "Carmelo Russello",
    "Prima stesura del documento",
  ),
  content: content,
)

= Riferimenti generali
Il seguente documento contiene il resoconto della riunione interna del gruppo _Sigma18_ tenutasi in modalità *virtuale* tramite la piattaforma _Discord_, avvenuta in data *14 Maggio 2025* e dalla durata di *un'ora e mezza*.

Nella riunione sono stati trattati i punti all'ordine del giorno.

== Partecipanti
- Alessandro Bernardello
- Mirco Borella
- Pietro Crotti
- Marco Egidi
- Matteo Marangon
- Aleena Mathew
- Carmelo Russello

= Ordine del giorno
== Retrospettiva del terzo sprint
Il gruppo ha analizzato in retrospettiva lo #glossario("sprint") appena concluso per discutere eventuali problemi riscontrati.

Durante lo svolgimento di questo sprint non sono stati riscontrati problemi significativi che possano influenzare l'andamento del progetto didattico.

È possibile trovare un resoconto più dettagliato nel #link("https://sigma18unipd.github.io/documentiCompilati/2-RTB/documentidiprogetto/pianodiprogetto_0.4.0.pdf")[Piano di Progetto].

== Pianificazione quarto sprint
Il quarto sprint avrà una durata di 2 settimane, dal 13/05/2025 al 26/05/2025.

Durante questo periodo, il gruppo si concentrerà principalmente sulla verifica del documento di *Analisi dei Requisiti*, sull'ultimazione e verifica dei documenti di *Norme di Progetto* e *Piano di Qualifica* in parallelo allo sviluppo del #glossario("PoC").

Sono infine previsti due incontri di formazione con l'azienda sull'uso di #glossario("Gen AI"), il primo in data 19 Maggio 2025 e il secondo in data 20 Maggio 2025 per un totale di 6 ore.

== Preparazione allo sviluppo del PoC
Il team ha deciso di iniziare a prepararsi per lo sviluppo del PoC, che avverrà durante il quarto sprint.
A tal fine i membri del gruppo si impegneranno ad approfondire le tecnologie apprese nelle scorse settimane in attesa degli incontri di formazione del 19 Maggio 2025 e del 20 Maggio 2025 per poi avere tutte le conoscenze necessarie per l'avanzamento del progetto.


= Conclusioni e decisioni prese
Il gruppo ha deciso di procedere con la redazione in parallelo dei documenti rimasti per rendere piú rapido il processo di stesura e permettere una revisione incrociata tra i membri.\
Il gruppo Sigma18 si impegna a procedere con lo sviluppo del PoC e ad ultimare la documentazione necessaria.\



= Attività programmate
#tabellaAttivitaProgrammate(
  attivita: (
    link("https://github.com/Sigma18Unipd/docs/issues/17")[00017],
    "Stesura Piano di Qualifica",
    link("https://github.com/Sigma18Unipd/docs/issues/19")[00019],
    "Stesura Norme di Progetto",
    link("https://github.com/Sigma18Unipd/docs/issues/51")[00051],
    "Stesura verbale interno 2025-05-14",
    link("https://github.com/Sigma18Unipd/docs/issues/53")[00053],
    "Verifica Analisi dei Requisiti",
  ),
)
