#import "../templates/template.typ": *

#show: content => verbale(
  titoloDocumento: "Preventivo dei costi e dichiarazione impegni",
  abstract: "Divisione ore per membro, definizione dei ruoli, riassunto dei costi e stima data di consegna",
  responsabili: "Marco Egidi",
  redattori: "Mirco Borella",
  verificatori: ("Carmelo Russello", "Alessandro Bernardello"),
  tipo: "Documento Esterno",
  destinatari: ("Prof. Tullio Vardanega", "Prof. Riccardo Cardin"),
  versioneAttuale: "1.0.0",
  versioni: (
    "1.0.0",
    "2025/03/18",
    "Mirco Borella",
    "Carmelo Russello\nAlessandro Bernardello",
    "Prima stesura del documento",
  ),
  content: content,
)
= Riferimenti generali
Il documento ha lo scopo di definire i ruoli, i costi stimati e fornire una stima della data di consegna per lo svolgimento del capitolato proposto dall'azienda _*Var Group S.p.A*_ dal titolo: _*C3 - Automatizzare le routine digitali tramite l'intelligenza generativa*_.

= Definizione dei ruoli
== Amministratore
L'ammministratore si occupa della gestione degli strumenti IT necessari all'avanzamento dello sviluppo. La figura, che conosce e comprende approfonditamente il _way of working_ offre supporto agli altri ruoli.
Si ritiene che la figura abbia maggior importanza nelle fasi iniziali dello sviluppo, con alcuni picchi nei momenti di rilascio del prodotto.

== Analista
L'analista è la figura che svolge l'attività di analisi dei requisiti del _software_, i quali potranno essere funzionalità in accordo con il proponente o specifiche minime di funzionamento.
Il quantitativo di ore non è elevato in quanto il ruolo è di maggiore importanza nelle fasi iniziali del progetto.

La figura produrrà il documento di analisi dei requisiti.

== Progettista
Il progettista è responsabile della definizione dell'architettura del sistema e della progettazione delle componenti _software_.
Deve essere in grado di comunicare efficacemente con gli altri membri del team, inclusi programmatori e verificatori, per assicurarsi che la visione progettuale sia compresa e implementata correttamente e con l'analista per assicurarsi che i requisiti siano tradotti in una soluzione tecnica adatta.

Le ore stimate ammontano ad un valore compreso tra le ore dell'analista e quelle del programmatore.

== Programmatore
È la figura incaricata a trasformare le direttive di _design_ fornite dal progettista in codice. Il ruolo richiede che la persona abbia familiarità e padronanza delle tecnologie che andranno ad essere implementate. A causa di ciò, si prevede di assegnare un quantitativo di ore superiore alla media dei ruoli.

== Responsabile
Il responsabile è la figura che si occupa di coordinare e supervisionare l'intero progetto, assicurandosi che tutte le attività siano svolte nei tempi e nei modi previsti.
Il ruolo si occupa anche del dialogo tra l'interno e l'esterno del gruppo garantendo una comunicazione chiara e tempestiva.

Considerato il costo orario della figura, è stato ipotizzato il quantitativo essenziale di ore da distribuire per tutta la durata dello sviluppo del progetto.

== Verificatore
È la figura che garantisce che il _software_ mantenga alti standard di qualità.
Il verificatore esegue test approfonditi per identificare _bug_ e problemi, assicurandosi che il prodotto finale sia conforme ai requisiti specificati.

Sono state stimate numerose ore al fine di raggiungere il 70% di _coverage_ del codice realizzato attraverso l'implementazione di test automatici, come richiesto dal proponente.

Ai fini di rispettare la richiesta di condividere il _bug reporting_ avvenuto durante la fase di sviluppo, il verificatore dovrà gestire la piattaforma ITS (_Issue Tracking System_) utilizzata (_GitHub_).

= Divisione oraria
Ogni membro del _team Sigma18_ s'impegna a dedicare al capitolato *92 ore* produttive distribuite in *20 settimane* ai fini del completamento dei requisiti richiesti dal proponente, per un totale di *644 ore complessive*.

Le ore sopracitate verranno distruibuite nei seguenti ruoli descritti successivamente:
- *Amministratore _(Amm)_*
- *Analista _(Ana)_*
- *Progettista _(Prg)_*
- *Programmatore _(Pro)_*
- *Responsabile _(Res)_*
- *Verificatore _(Ver)_*

Si prevede di applicare una rotazione *settimanale* ai ruoli in modo tale che ogni membro del gruppo possa assumere tutte le posizioni precedentemente dichiarate. Le specifiche definitive come la frequenza delle rotazioni e le durate di ogni _sprint_ verranno stabilite in accordo con l'azienda proponente a candidatura completata.

== Tabella suddivisione ore per ruolo:
#table(
  columns: (2fr, 1fr, 1fr, 1fr),
  rows: auto,
  inset: 9pt,
  table.header([*Ruolo*], [*Costo orario*], [*Ore per ruolo*], [*Costo ruolo*]),
  [Amministratore], [€20,00], [63], [€1260,00],
  [Analista], [€25,00], [73], [€1825,00],
  [Progettista], [€25,00], [134], [€3350,00],
  [Programmatore], [€15,00], [175], [€2625,00],
  [Responsabile], [€30,00], [60], [€1800,00],
  [Verificatore], [€15,00], [139], [€2085,00],
  [*Totali*], [], [*644*], [*€12945,00*],
)

== Tabella suddivisione ore per membro:
#table(
  columns: (3fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
  align: center,
  rows: auto,
  inset: 9pt,
  table.header([], [*Amm*], [*Ana*], [*Prg*], [*Pro*], [*Res*], [*Ver*]),
  [Alessandro Bernardello], [9], [11], [20], [25], [8], [19],
  [Mirco Borella], [9], [11], [19], [25], [8], [20],
  [Pietro Crotti], [9], [11], [19], [25], [8], [20],
  [Marco Egidi], [9], [10], [19], [25], [9], [20],
  [Matteo Marangon], [9], [10], [19], [25], [9], [20],
  [Aleena Mathew], [9], [10], [19], [25], [9], [20],
  [Carmelo Russello], [9], [10], [19], [25], [9], [20],
)

= Analisi dei rischi
== Ritardi e rallentamenti
Il gruppo prende atto delle possibilità di ritardi dovuti alle circostanze in seguito specificate.

=== Chiusura estiva azienda proponente
Considerando che il periodo di consegna preferibile coincide con le settimane centrali del mese di Agosto, teniamo in considerazione la possibilità che l'azienda proponente del capitolato sia chiusa per ferie.

=== Imprevisti personali
Prendiamo atto che possano sorgere imprevisti personali che potrebbero andare a compromettere lo svolgimento delle mansioni assegnate ad un componente entro le scadenze assegnate, causando ritardi.

== Difficoltà nello sviluppo
Riconosciamo che l'uso di nuove tecnologie assieme alla complessità del progetto possano portare a rallentamenti o scelte sbagliate durante lo sviluppo.

= Riassunto dei costi e stima di consegna
In base alla ripartizione delle ore definita in precedenza, si propone un preventivo di spesa pari a *€12945,00*.

Considerati i rischi citati, il gruppo _Sigma18_ s'impegna a portare a termine quanto dichiarato entro il giorno *29/08/2025*.


