#import "../../../templates/template.typ": *

#show: content => verbale(
  titoloDocumento: "Incontro finale con Var Group S.p.A.",
  abstract: "Riunione finale con l'azienda proponente Var Group S.p.A. per la presentazione del prodotto e la verifica dei test di accettazione",
  responsabili: "Carmelo Russello",
  redattori: "Pietro Crotti",
  verificatori: "Matteo Marangon",
  tipo: "Verbale Esterno",
  destinatari: "Sigma18",
  versioneAttuale: "1.0.0",
  versioni: (
    "1.0.0",
    "2025/09/01",
    "Pietro Crotti",
    "Matteo Marangon",
    "Prima stesura del documento",
  ),
  content: content,
  firmaEsterna: true,
)

= Riferimenti generali
Il seguente documento riporta il resoconto della riunione esterna del gruppo _Sigma18_ con l'azienda _Var Group S.p.A._, tenutasi presso la sede di Guizza (Padova) in data *1 settembre 2025* e dalla durata di *un'ora*.

== Partecipanti
=== Interni
- Alessandro Bernardello
- Mirco Borella
- Pietro Crotti
- Marco Egidi
- Matteo Marangon
- Aleena Mathew
- Carmelo Russello
=== Esterni
- Francesco Battistella (_Var Group S.p.A._)
= Ordine del giorno
== Presentazione del prodotto
Durante la riunione in sede di _Var Group S.p.A._, il gruppo _Sigma18_ ha presentato il prodotto sviluppato, illustrando le tutte funzionalità, le architetture software utilizzate, motivato le decisioni di alcune tecnologie utilizzate e i benefici che il prodotto può portare. La presentazione ha incluso una dimostrazione pratica del software, dove il responsabile dell'azienda proponente ha provato in prima persona il prodotto.
== Feedback ricevuti
L'azienda _Var Group S.p.A._ ha fornito feedback positivi riguardo al prodotto presentato, apprezzando in particolare:
- L'interfaccia utente intuitiva e facile da usare.
- La robustezza e l'affidabilità del sistema.
- L'uso di _token_ di autenticazione _JWT_ per garantire la sicurezza d'accesso dell'utente.
- Il basso costo di utilizzo dell'applicativo, in quanto il gruppo ha scelto di utilizzare un _LLM_ a basso costo che garantisce buone prestazioni in relazione al dominio di applicazione.
- Il completamento dei requisiti richiesti.
- Inoltre è stato particolarmente apprezzato il fatto che il gruppo abbia seguito un approccio diverso rispetto a quanto fatto in passato dal gruppo precedente, poiché sono stati implementati tipi di blocchi differenti che richiedono un'attenzione particolare nello sviluppo.

Inoltre è stata suggerita la possibilità di integrare _spinner_ grafici che permetterebbero di migliorare l'esperienza utente mentre l'_LLM_ prepara il _workflow_.

= Conclusioni
L'azienda proponente si è detta entusiasta del lavoro svolto da gruppo ed è pienamente soddisfatta del prodotto finale.
