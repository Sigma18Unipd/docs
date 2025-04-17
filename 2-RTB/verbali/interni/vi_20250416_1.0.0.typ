#import "../../../templates/template.typ": *

#show: content => verbale(
  titoloDocumento: "Terza Riunione",
  abstract: "Resoconto incontro con l'azienda proponente, pianificazione secondo sprint, programmazione incontri di formazione",
  responsabili: "Mirco Borella",
  redattori: "Matteo Marangon",
  verificatori: "Carmelo Russello",
  tipo: "Verbale Interno",
  destinatari: "Sigma18",
  versioneAttuale: "1.0.0",
  versioni: (
    "1.0.0",
    "2025/04/16",
    "Matteo Marangon",
    "Carmelo Russello",
    "Prima stesura del documento",
  ),
  content: content,
)

= Riferimenti generali
Il seguente documento contiene il resoconto della riunione interna del gruppo _Sigma18_ tenutasi in modalità *virtuale* tramite la piattaforma _Discord_, avvenuta in data *16 Aprile 2025* e dalla durata di *un'ora e mezza*.

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
== Resoconto incontro con l'azienda proponente
In seguito alla sessione di #glossario("design thinking") svolta in sede dell'azienda il giorno 14/04/2025, il gruppo ha proseguito con l'organizzazione degli impegni orari e dei ruoli da adempiere secondo il way of working.
Il gruppo ha avuto modo di confrontarsi con alcuni referenti dell'azienda Var Group S.p.A. e ha potuto chiarire alcuni dubbi riguardo le tecnologie da utilizzare e le modalità di lavoro. Sono stati infine concordati degli incontri per la formazione sulle tecnologie scelte, che verranno programmati in seguito.

== Pianificazione secondo sprint
Il gruppo ha analizzato in retrospettiva lo #glossario("sprint") appena concluso per pianificare il successivo di conseguenza. Il primo #glossario("sprint") ha avuto inizio il 28/03/2025 e si è concluso il 15/04/2025 in seguito ad alcune complicazioni organizzative, specificate più dettagliatamente nel #link("https://sigma18unipd.github.io/documentiCompilati/2-RTB/documentidiprogetto/pianodiprogetto_1.1.0.pdf")[Piano di Progetto]. Il secondo #glossario("sprint") invece avrà una durata standard che è stata stabilita pari a 2 settimane, dal 16/04/2025 al 29/04/2025. Questo intervallo di tempo regolare permetterà un'organizzazione completa sia fra i membri interni del gruppo Sigma18 che con il personale di riferimento dell'azienda Var Group. Durante questo periodo il gruppo si concentrerà principalmente sulla stesura della documentazione di *Analisi dei Requisiti* e *Norme di Progetto*.

== Programmazione incontri di formazione
Previa comunicazione con l'azienda tramite la piattaforma #glossario("Slack") da loro proposta, è stato stabilito di comune accordo tra i membri del gruppo la programmazione di 3 *incontri di formazione* in presenza e 1 in remoto. Questi verranno distribuiti in 4 mattinate ancora da definire nelle settimane tra il 5 e il 16 maggio 2025.
Gli argomenti che verranno trattati sono i seguenti, ciascuno in una sessione di 4 ore circa:
- introduzione ad AWS
- introduzione BackEnd e MongoDB
- introduzione FrontEnd
- introduzione GenAI
È possibile visionare nel dettaglio il contenuto dell'incontro nel #link("https://sigma18unipd.github.io/documentiCompilati/2-RTB/verbali/esterni/ve_20250414_1.0.0.pdf")[Verbale Esterno] del 14/04/2025, dove sono descritte le tecnologie scelte e le decisioni intraprese.


= Conclusioni e decisioni prese
Il gruppo ha stabilito di redigere i documenti di *Analisi dei Requisiti* e *Norme di Progetto* in parallelo, in modo da velocizzare il processo di stesura e permettere una revisione incrociata tra i membri del gruppo. È stato redatto un glossario contenente terminologie ambigue o specifiche che verrà aggiornato nel corso del tempo. Sigma18 si impegna inoltre a studiare le tecnologie proposte avvalendosi del supporto offerto dall'azienda Var Group S.p.A. 


= Attività programmate
#tabellaAttivitaProgrammate(
  attivita: (
    link("https://github.com/Sigma18Unipd/docs/issues/17")[00017],
    "Stesura Piano di Qualifica",
    link("https://github.com/Sigma18Unipd/docs/issues/19")[00019],
    "Stesura Norme di Progetto",
    link("https://github.com/Sigma18Unipd/docs/issues/20")[00020],
    "Stesura Analisi dei Requisiti",
    link("https://github.com/Sigma18Unipd/docs/issues/27")[00027],
    "Stesura verbale esterno 2025-04-14",
    link("https://github.com/Sigma18Unipd/docs/issues/29")[00029],
    "Stesura verbale interno 2025-04-16",
    link("https://github.com/Sigma18Unipd/docs/issues/30")[00030],
    "Creazione di uno script Python per la verifica dei termini del glossario",
  ),
)