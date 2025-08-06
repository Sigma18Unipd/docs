#import "../../../templates/template.typ": *

#show: content => verbale(
  titoloDocumento: "Tredicesima Riunione",
  abstract: "Retrospettiva nono sprint e pianificazione decimo sprint con inizio PB",
  responsabili: "Carmelo Russello",
  redattori: "Aleena Mathew",
  verificatori: "Mirco Borella",
  tipo: "Verbale Interno",
  destinatari: "Sigma18",
  versioneAttuale: "1.0.0",
  versioni: (
    "1.0.0",
    "2025/08/05",
    "Aleena Mathew",
    "Mirco Borella",
    "Prima stesura del documento",
  ),
  content: content,
)

= Riferimenti generali
Il seguente documento riporta il resoconto della riunione interna del gruppo _Sigma18_, tenutasi in modalità *virtuale* tramite la piattaforma _Discord_ il *05 agosto 2025* della durata di *un'ora*.

== Partecipanti
- Alessandro Bernardello
- Mirco Borella
- Pietro Crotti
- Marco Egidi
- Matteo Marangon
- Aleena Mathew
- Carmelo Russello

= Ordine del giorno
== Retrospettiva del nono sprint
Il gruppo ha analizzato in retrospettiva lo #glossario("sprint") appena concluso per discutere eventuali problemi riscontrati.

Durante lo svolgimento di questo _sprint_, è stata effettuata la revisione #glossario("RTB (Requirements and Technology Baseline)") con il Prof. Tullio Vardanega, tenutasi il *30 luglio 2025*.\ Il professore ha approvato la revisione della RTB, consentendo così l'avvio della fase di #glossario("PB (Project Baseline)").

Durante la riunione il gruppo ha presentato il capitolato selezionato, illustrando le tecnologie individuate per lo sviluppo del progetto, le principali criticità emerse e le relative soluzioni adottate. Successivamente, è stata effettuata un'autovalutazione del lavoro svolto, seguita dall'analisi del consuntivo di periodo e dal preventivo a finire.

In particolare, è emerso che il gruppo ha accumulato un ritardo nel concludere la fase di RTB ed è stato richiesto di riflettere sulle cause di questo ritardo e sulle possibili soluzioni da adottare per evitare che si ripeta in futuro, tali riflessioni sono state riportate nella #link("https://sigma18unipd.github.io/documentiCompilati/2-RTB/relazioni/relazioneritardiemersi.pdf")[Relazione relativa ai ritardi emersi nell'avanzamento del progetto].

La relazione in questione è stata inviata al Prof. Tullio Vardanega il *31 luglio 2025*, che ha richiesto al gruppo più concretezza nell'individuazione delle soluzioni da adottare per prevenire ulteriori ritardi.

Durante la riunione, il gruppo ha analizzato le cause del ritardo accumulato e ha discusso le possibili strategie da adottare per evitare il ripetersi di un tale ritardo nella fase di PB. In particolare, il gruppo ha deciso di pianificare sia il prossimo sprint sia quello successivo, con l'obiettivo di concludere la fase di PB entro il *31 agosto 2025*.

Si è deciso di pianificare anche l'undicesimo sprint al fine di ottenere una visione più chiara e concreta del tempo rimasto per poterlo sfruttare al meglio, naturalmente si tratta di una pianificazione preliminare che potrà essere soggetta a modifiche in corso d'opera.

Questa scelta è stata ritenuta utile per ottenere una visione di insieme e organizzare al meglio le attività, tenendo conto sia del tempo a disposizione sia degli eventuali impegni personali dei membri del gruppo.

Il gruppo ha compreso che sarà richiesto un costante impegno da parte di tutti i membri per poter rispettare le scadenze e portare a termine il progetto con successo.\ I membri si impegnano a lavorare in modo collaborativo e proattivo per raggiungere gli obiettivi prefissati.


È possibile trovare un resoconto più dettagliato nel #link("https://sigma18unipd.github.io/documentiCompilati/3-PB/documentidiprogetto/pianodiprogetto_1.2.0.pdf")[Piano di Progetto].

== Pianificazione decimo sprint
Il decimo _sprint_ avrà una durata di 2 settimane, dal 05/08/2025 al 18/08/2025.

Durante questo periodo il gruppo si dedicherà alla comprensione e all'implementazione dell'architettura del #glossario("MVP (Minimum Viable Product)"), continuando lo sviluppo dello stesso.
Parallelamente i membri si impegneranno a fare attività di «palestra» per comprendere come e cosa vuol dire stendere i documenti di «Manuale Utente» e «Specifica Tecnica», in vista della stesura degli stessi, prevista verso la fine dello sprint.\
Nel dettaglio, le "attività di palestra" includono anche la comprensione delle pratiche di progettazione software, lo sviluppo e l'automatizzazione dei test, fondamentali per la qualità del progetto.


Al fine di garantire la leggibilità e la coerenza della documentazione, tutti i termini introdotti verranno integrati nel glossario del progetto.

= Conclusioni e decisioni prese
Il gruppo _Sigma18_ ha deciso di concentrarsi sullo studio dell'architettura del MVP e sullo sviluppo dello stesso e sulle attività di «palestra» in vista della stesura dei documenti di «Manuale Utente» e «Specifica Tecnica».

= Attività programmate
#tabellaAttivitaProgrammate(attivita: (
  link("https://github.com/Sigma18Unipd/docs/issues/132")[00132],
  "Stesura Manuale Utente",
  link("https://github.com/Sigma18Unipd/docs/issues/133")[00133],
  "Stesura Specifica Tecnica",
  link("https://github.com/Sigma18Unipd/docs/issues/136")[00136],
  "Aggiornamento piano di qualifica nono sprint",
  link("https://github.com/Sigma18Unipd/docs/issues/138")[00138],
  "Stesura verbale interno 2025-08-04",
))
