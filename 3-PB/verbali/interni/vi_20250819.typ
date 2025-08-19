#import "../../../templates/template.typ": *

#show: content => verbale(
  titoloDocumento: "Quattordicesima Riunione",
  abstract: "Retrospettiva decimo sprint e pianificazione undicesimo sprint",
  responsabili: "Carmelo Russello",
  redattori: "Aleena Mathew",
  verificatori: "Matteo Marangon",
  tipo: "Verbale Interno",
  destinatari: "Sigma18",
  versioneAttuale: "1.0.0",
  versioni: (
    "1.0.0",
    "2025/08/19",
    "Aleena Mathew",
    "Matteo Marangon",
    "Prima stesura del documento",
  ),
  content: content,
)

= Riferimenti generali
Il seguente documento riporta il resoconto della riunione interna del gruppo _Sigma18_, tenutasi in modalità *virtuale* tramite la piattaforma _Discord_ il *19 agosto 2025* della durata di *un'ora*.

== Partecipanti
- Alessandro Bernardello
- Mirco Borella
- Pietro Crotti
- Marco Egidi
- Matteo Marangon
- Aleena Mathew
- Carmelo Russello

= Ordine del giorno
== Retrospettiva del decimo sprint
Il gruppo ha analizzato in retrospettiva lo #glossario("sprint") appena concluso per discutere eventuali problemi riscontrati.

Il gruppo ha discusso lo stato di avanzamento dell'#glossario("MVP (Minimum Viable Product)"), che ha raggiunto un livello di sviluppo soddisfacente.


Si può affermare che il decimo sprint è stato molto proficuo, i risultati ottenuti sono in linea con gli obiettivi prefissati e il team si ritiene soddisfatto dei progressi raggiunti finora e si impegna a mantenere tale ritmo di lavoro.
.

Attualmente sono state completate le seguenti attività:
- Definizione dell'architettura MVP;
- Configurazione del servizio #glossario("AWS Cognito") con user pools e policy di accesso;
- Conversione del sistema di login da database locale a AWS Cognito;
- Ristrutturazione e sviluppo di autenticazione con #glossario("JWT (JSON Web Token)") ;
- Aggiunta la verifica OTP (One Time Password) via e-mail per la registrazione;
- Completa ristrutturazione del codice per l’esecuzione dei workflow nel backend.

Inoltre, il gruppo ha predisposto una struttura iniziale per i nuovi documenti, quali il _Manuale Utente_ e la _Specifica Tecnica_, che si prevede di completare nell'undicesimo sprint.


È possibile trovare un resoconto più dettagliato nel #link("https://sigma18unipd.github.io/documentiCompilati/3-PB/documentidiprogetto/pianodiprogetto_1.3.0.pdf")[Piano di Progetto].

== Pianificazione undecimo sprint
L'undicesimo _sprint_ avrà una durata di 2 settimane, dal 19/08/2025 al 01/09/2025.

Durante questo periodo il gruppo si dedicherà alla conclusione dell'MVP e alla stesura dei documenti.\

Il gruppo prevede di completare l'MPV ed effettuare la fase di testing nella prima metà dello sprint. L'obiettivo è concludere la fase di sviluppo nella prima parte dello sprint e dedicare la seconda metà dello sprint alla redazione e revisione dei documenti necessari.


Il gruppo ha in programma di richiedere un'incontro con l'azienda proponente per discutere i progressi raggiunti.


Al fine di garantire la leggibilità e la coerenza della documentazione, tutti i termini introdotti verranno integrati nel glossario del progetto.

= Conclusioni e decisioni prese
Il gruppo _Sigma18_ si ritiene soddisfatto dei progressi raggiunti nel decimo sprint e si impegna a mantenere tale ritmo di lavoro anche nell'undicesimo sprint, con l'obiettivo di rispettare le scadenze previste.
Il team è consapevole delle possibili criticità che potrebbero emergere e causare ritardi, ma si impegna a rispettare le scadenze previste.


= Attività programmate
#tabellaAttivitaProgrammate(attivita: (
  link("https://github.com/Sigma18Unipd/docs/issues/132")[00132],
  "Stesura Manuale Utente",
  link("https://github.com/Sigma18Unipd/docs/issues/133")[00133],
  "Stesura Specifica Tecnica",
  link("https://github.com/Sigma18Unipd/docs/issues/146")[00146],
  "Aggiornamento piano di qualifica decimo sprint",
))
