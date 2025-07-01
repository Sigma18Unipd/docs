#import "../../../templates/template.typ": *
#show: content => verbale(
  titoloDocumento: "Resoconto dell'Incontro con Var Group S.p.A.",
  abstract: "Durante l'incontro con Var Group S.p.A., il gruppo Sigma18 ha presentato il PoC sviluppato, ricevendo feedback positivi e concordando modifiche funzionali e tecniche.",
  responsabili: "Carmelo Russello",
  redattori: ("Pietro Crotti", "Matteo Marangon"),
  verificatori: ("Pietro Crotti", "Matteo Marangon"),
  tipo: "Verbale Esterno",
  destinatari: ("Var Group S.p.A.", "Prof. Tullio Vardanega", "Prof. Riccardo Cardin"),
  versioneAttuale: "1.0.1",
  versioni: (
    "1.0.1",
    "2025/07/01",
    "Matteo Marangon",
    "Pietro Crotti",
    "Modifiche minori",
    "1.0.0",
    "2025/07/01",
    "Pietro Crotti",
    "Matteo Marangon",
    "Prima stesura del documento",
  ),
  content: content,
  firmaEsterna: true,
)

= Riferimenti generali
Il seguente documento contiene il resoconto dell'incontro con l'azienda proponente, _Var Group S.p.A._, tenutosi in modalità *remota* l'*1 Luglio 2025* e della durata di *30 minuti*.
Nell'incontro sono stati trattati i punti descritti nella sezione _ordine del giorno_.

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

#pagebreak()
= Ordine del giorno
Durante l'incontro svolto con l'azienda, il gruppo _Sigma18_ ha mostrato il #glossario("PoC (Proof of Concept)") sviluppato e in particolare sono stati trattati i seguenti punti:

== Presentazione del PoC
Il gruppo ha presentato il _PoC_ sviluppato, mostrando le caratteristiche finora implementate e il funzionamento generale del sistema.\
Sono stati illustrati i seguenti aspetti:
- Login e registrazione degli utenti;
- Visualizzazione della lista delle automazioni;
- Creazione di una nuova automazione;
- Creazione dei blocchi dell'automazione tramite #glossario("Gen AI");
- Modifiche ai parametri di un blocco generato;
- Eliminazione di un'automazione;

== Feedback del proponente
L'azienda ha espresso un feedback positivo sul _PoC_ sviluppato, facendo tuttavia notare la mancanza della possibilità di avviare le automazioni. È stato quindi richiesto di implementare dei _runner_ che permettano di eseguire alcune automazioni già create.
Inoltre, l'azienda ha specificato che l'utilizzo esclusivo di _Python_ per il #glossario("backend") del _PoC_ non rappresenta un problema. Tuttavia, in caso di difficoltà nell'integrazione con i servizi di #glossario("AWS"), il gruppo potrebbe non ricevere supporto desiderato, poiché l'azienda non utilizza _Python_.\
Il proponente ha comunque assicurato che per la #glossario("PB (Product Baseline)") è possibile utilizzare _Python_ per interfacciarsi con #glossario("LLM (Large Language Model)").

== Discussione requisito funzionale
Il gruppo, infine, ha richiesto la modifica di un requisito funzionale. In particolare, si è discusso del requisito _ROF-18_, il quale prevede che l'utente possa aggiungere un blocco a una #glossario("routine") esistente. Tale requisito era stato inizialmente pensato per essere implementato tramite l'utilizzo del #glossario("drag & drop"), ma durante la presente riunione esterna il gruppo si è accordato con il proponente per adottare un approccio modale: un pulsante permetterà di aggiungere un blocco alla routine, dopodiché l'utente potrà collegare e modificare i blocchi a proprio piacimento.


= Conclusioni
Tutto il gruppo _Sigma18_ ringrazia l'azienda per il tempo fornito e per la loro disponibilità.\
L'azienda si è resa disponibile a fornire supporto e chiarimenti in caso di necessità.
