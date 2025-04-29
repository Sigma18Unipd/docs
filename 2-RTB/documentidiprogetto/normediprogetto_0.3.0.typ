#import "../../templates/template.typ": *

#show: content => verbale(
  titoloDocumento: "Norme di progetto",
  abstract: "Documento contenente le Norme di progetto che definiscono le modalità di lavoro del gruppo. Pertanto, questo documet",
  responsabili: "Pietro Crotti",
  redattori: "Mirco Borella",
  verificatori: "",
  tipo: "Documento Interno",
  destinatari: "Sigma18",
  versioneAttuale: "0.3.0",
  versioni: (
    "0.3.0",
    "2025/04/29",
    "Mirco Borella",
    "",
    "TESTTEST",
    "0.2.0",
    "2025/04/25",
    "Mirco Borella",
    "",
    "TESTTEST",
    "0.1.0",
    "2025/04/22",
    "Mirco Borella",
    "",
    "Stesura iniziale documento",
  ),
  content: content,
)

= Introduzione
== Scopo del documento
Questo documento nasce per la necessità di definire e documentare il #glossario("Way of Working") che verrà utilizzato dal gruppo di lavoro Sigma18 durante lo svolgimento di tutte le fasi del capitolato.

Ai fini di realizzazione del _"Way of Working"_, i membri del gruppo _Sigma18_ prenderanno come riferimento lo standard #glossario("ISO/IEC 12207:1995") che definisce i processi di sviluppo del software e le relative attività e compiti. In particolare, il gruppo _Sigma18_ si concentrerà sui seguenti processi:
- #link(<primari>)[*Primari*]
- #link(<supporto>)[*Di Supporto*]
- #link(<organizzativi>)[*Organizzativi*]

Questo documento verrà trattato con un approccio incrementale, ovvero verrà aggiornato e modificato in base all'evoluzione del progetto e delle esigenze del gruppo di lavoro. Pertanto, il documento non è da considerarsi definitivo ma un documento vivo che si evolve con il progetto.

I membri del gruppo di lavoro sono tenuti a rispettare le norme e le modalità di lavoro definite in questo documento.
Il gruppo _Sigma18_ s'impegna a prendere conoscenza delle eventuali modifiche e/o integrazioni di questo documento.

== Scopo del capitolato
Il capitolato *C3*, proposto dall'azienda *Var Group S.p.A.*, richiede lo sviluppo di un'applicazione che permetta di automatizzare le routine digitali tramite l'intelligenza generativa in cloud.

L'obiettivo è di creare un client per ambiente Windows e/o Mac in grado di generare queste #glossario("routine") in modo semplice attraverso il linguaggio naturale.
Il client deve essere in grado di interfacciarsi con le varie applicazioni installate sul sistema e con i servizi esposti dalle applicazioni stesse (#glossario("API")).
L'utente deve essere in grado di modificare la logica funzionale di un _workflow_ tramite un'interfaccia #glossario("drag & drop").
È prevista la possibilità di salvare i _workflow_ generati, in modo da poterli riutilizzare in un secondo momento, e di gestire più automazioni contemporaneamente.

Come dichiarato nella lettera di presentazione, il gruppo si impegna a realizzare il prodotto descritto dal capitolato C3 con un costo stimato di *€12945,00* e con termine previsto di consegna *29 Agosto 2025*.

== Utilizzo del glossario


#pagebreak()
= Processi primari <primari>

#pagebreak()
= Processi di supporto <supporto>

#pagebreak()
= Processi organizzativi <organizzativi>

#pagebreak()
= Standard per la qualità

#pagebreak()
= Metriche per la qualità di processo

#pagebreak()
= Metriche per la qualitá di prodotto




