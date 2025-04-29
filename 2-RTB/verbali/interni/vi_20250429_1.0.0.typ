#import "../../../templates/template.typ": *

#show: content => verbale(
  titoloDocumento: "Quarta Riunione",
  abstract: "Retrospettiva secondo sprint, pianificazione terzo sprint, modifica del versionamento, definizione dell'utilizzo del glossario .",
  responsabili: "Aleena Mathew",
  redattori: "Aleena Mathew",
  verificatori: "Marco Egidi",
  tipo: "Verbale Interno",
  destinatari: "Sigma18",
  versioneAttuale: "1.0.0",
  versioni: (
    "1.0.0",
    "2025/04/29",
    "Aleena Mathew",
    "Marco Egidi",
    "Prima stesura del documento",
  ),
  content: content,
)

= Riferimenti generali
Il seguente documento contiene il resoconto della riunione interna del gruppo _Sigma18_ tenutasi in modalità *virtuale* tramite la piattaforma _Discord_, avvenuta in data *29 Aprile 2025* e dalla durata di *un'ora*.

Nella riunione sono stati trattati i punti all'ordine del giorno.

== Partecipanti
- Alessandro Bernardello
- Mirco Borella
- Pietro Crotti
- Matteo Marangon
- Aleena Mathew
- Carmelo Russello

= Ordine del giorno
== Retrospettiva del secondo sprint
Il gruppo ha analizzato in retrospettiva lo #glossario("sprint") appena concluso per discutere eventuali problemi riscontrati.

Il problema principale riscontrato è la difficoltà di comunicazione con l'azienda, che ha portato a un ritardo nella redazione del verbale esterno relativo all'incontro del 14 Aprile 2025, a causa della temporanea indisponibilità dei referenti dovuta alle festività.
Per ovviare a questo problema, il gruppo ha deciso di completare il verbale, includendo i #glossario("wireframe"), richiedendo così un'unica approvazione da parte dell'azienda.

È possibile trovare un resoconto più dettagliato nel #link("https://sigma18unipd.github.io/documentiCompilati/2-RTB/documentidiprogetto/pianodiprogetto_1.1.0.pdf")[Piano di Progetto].

== Pianificazione terzo sprint
Il terzo sprint avrà una durata di 2 settimane, dal 30/04/2025 al 13/05/2025.

Durante questo periodo il gruppo si concentrerà principalmente sulla redazione e sulla verifica della documentazione di *Analisi dei Requisiti*, *Norme di Progetto* e *Piano di Qualifica*.

Inoltre durante queste due settimane si terranno due incontri di formazione con l'azienda, il primo in data 06 Maggio 2025 e il secondo in data 8 Maggio 2025.

== Modifica della versionamento
Il gruppo ha deciso di modificare il versionamento dei documenti di progetto, adottando una numerazione che inizi da 0.0.0, ritenuta più utile e chiara per la documentazione.\
Questa modifica è stata proposta per permettere una numerazione più intuitiva, in quanto la versione 1.0.0 corrisponderà al rilascio in #glossario("RTB"), e la 2.0.0 in #glossario("PB"), dato che questi documenti richiedono un numero maggiore di modifiche rispetto ai verbali.

L'avanzamento rimane invariato rispetto a quanto stabilito in precedenza.

== Definizione dell'utilizzo del glossario
Il gruppo ha deciso che solo alla prima occorrenza di un termine presente nel glossario, sarà necessario indicarne il riferimento. In questo modo si evita di appesantire il testo con riferimenti ripetuti, mantenendo una buona leggibilità del documento.\
Inoltre, è stato automatizzato il controllo sui termini del glossario, garantendo la presenza della definizione di tutti i termini contrassegnati con un riferimento al glossario.


= Conclusioni e decisioni prese
Il gruppo ha deciso di procedere con la redazione dei documenti in parallelo, per velocizzare il processo di stesura e permettere una revisione incrociata tra i membri.\
Inoltre, è stata creata una tabella esterna privata su Excel per una gestione più efficiente delle ore.
Sigma18 si impegna a sfruttare al meglio il supporto offerto dall'azienda tramite i due incontri di formazione previsti e a completare i documenti di *Analisi dei Requisiti*, *Norme di Progetto* e *Piano di Qualifica* entro il termine dello sprint.



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
    link("https://github.com/Sigma18Unipd/docs/issues/38")[00038],
    "Stesura verbale interno 2025-04-29",
  ),
)
