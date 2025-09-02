#import "../../../templates/template.typ": *

#show: content => verbale(
  titoloDocumento: "Incontro finale con Var Group S.p.A.",
  abstract: "Riunione finale con l'azienda proponente Var Group S.p.A. per la presentazione del prodotto e la verifica dei test di accettazione",
  responsabili: "Carmelo Russello",
  redattori: ("Pietro Crotti", "Mirco Borella"),
  verificatori: ("Matteo Marangon", "Aleena Mathew"),
  tipo: "Verbale Esterno",
  destinatari: "Sigma18",
  versioneAttuale: "1.1.0",
  versioni: (
    "1.1.0",
    "2025/09/01",
    "Mirco Borella",
    "Aleena Mathew",
    "Aggiunta conclusione e modifiche strutturali",
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
Il seguente documento riporta il resoconto della riunione esterna del gruppo _Sigma18_ con l'azienda _Var Group S.p.A._, tenutasi presso la sede di Guizza (Padova) in data *1 settembre 2025* e dalla durata di *un'ora* e *30 minuti*.

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
Durante la riunione, il gruppo _Sigma18_ ha presentato il prodotto sviluppato all'azienda, illustrandone le funzionalità implementate e le architetture software di deployment utilizzate.

Durante la presentazione il proponente ha testato il prodotto nelle sue varie caratteristiche in prima persona, provandone le varie funzionalità con successo.
Tutti i test di accettazione sono stati effettuati e superati con successo al momento della presentazione.

== Funzionalità esposte e feedback relativi
Durante l'incontro sono state esposte le seguenti funzionalità:
- Architettura di deployment su _AWS_
- Registrazione di un nuovo utente
- Verifica del nuovo profilo tramite Amazon SES
- Login con Amazon Cognito
- Creazione di un nuovo workflow
- Eliminazione di un workflow
- Generazione contenuto di un workflow tramite _LLM_
- Creazione manuale di un workflow
- Test dei vari blocchi disponibili
  - Invio di un messaggio su Telegram
  - Ottenimento di una pagina Notion
  - Riassunto di un testo
  - Aggiunta di un ritardo in un flusso
- Utilizzo dell'interfaccia drag and drop
- Salvataggio di un workflow
- Esecuzione di un workflow
- Visualizzazione della lista dei workflow sulla dashboard
- Passaggio al tema scuro
- Rinominazione di un workflow
- Terminazione di una sessione utente
- Zoom in e zoom out nella visualizzazione del workflow

Il feedback ricevuto è stato positivo e l'azienda si è detta soddisfatta del lavoro svolto dal gruppo.
Durante l'incontro sono anche stati discussi i possibili sviluppi futuri del prodotto, ipotizzando future aggiunte e modifiche.
Nello specifico è stato proposto l'inserimento di un animazione di progresso per visualizzare lo stato di avanzamento di varie operazioni all'interno dell'applicativo.
Data l'udienza a cui l'applicativo si rivolge, è stato concluso che si tratta di un'aggiunta qualitativa e non strettamente necessaria per il funzionamento dell'applicativo stesso.

= Conclusioni


Complessivamente l'azienda proponente si è ritenuta soddisfatta del lavoro svolto e presentato in quanto conforme alle aspettative espresse e dettagliate nell'incontro di design thinking tenutosi ad inizio capitolato.
