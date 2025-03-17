#import "../../../templates/template.typ": *
#show: content => verbale(
  titoloDocumento: "Riunione con Var Group S.p.A.",
  abstract: "Riunione virtuale con l'azienda Var Group S.p.A. tenutasi in data 14 marzo 2025, per discutere il capitolato da loro proposto.",
  responsabili: "Marco Egidi",
  redattori: ("Pietro Crotti", "Aleena Mathew", "Alessandro Bernardello"),
  verificatori: ("Matteo Marangon", "Mirco Borella"),
  tipo: "Verbale Esterno",
  destinatari: ("Var Group S.p.A.", "Prof. Tullio Vardanega", "Prof. Riccardo Cardin"),
  versioneAttuale: "2.0.0",
  content: content,
)

= Riferimenti generali
Il seguente documento contiene il resoconto della riunione esterna del gruppo _Sigma18_ con l'azienda _Var Group S.p.A_ tenutasi in modalità *virtuale*, tramite la piattaforma _Microsoft Teams_, avvenuta in data *14 Marzo 2025* e dalla durata di* 20 minuti*.


Nella riunione sono stati trattati i punti descritti nella sezione _ordine del giorno_.

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
- Stefano Dindo (_Var Group S.p.A._)
- Michele Massaro (_Var Group S.p.A._)

= Ordine del giorno
== Presentazione dei membri del gruppo
La riunione è iniziata con una breve presentazione iniziale del gruppo _Sigma18_ e dei referenti esterni.

== Domande e risposte sul capitolato
Il gruppo ha posto alcune domande riguardo al capitolato proposto dall'azienda _Var Group S.p.A._ per delucidare alcuni dubbi sorti durante la discussione interna dei capitolati.
L'azienda ha fornito risposte dettagliate, riportate di seguito.

=== È possibile utilizzare il _framework Electron_ per lo sviluppo dell'agent?
Sì, sarà possibile utilizzare il _framework Electron_, anche se questo non fosse stato esplictamente menzionato nella presentazione del capitolato.

=== Che modelli si possono utilizzare? Ci sono preferenze?
Non ci sono preferenze particolari, al contrario _Var Group S.p.A._ è molto interessata a ricevere nuove proposte su modelli LLM (_Large Language Model_).

=== È obbligatorio utilizzare _AWS Bedrock_ per l'_hosting_ dell'_LLM_?
L'utilizzo di _AWS_ è consigliato in quanto questo rappresenta un'agevolazione per il gruppo; l'azienda è infatti disposta a fornire un _account AWS_ e a coprire i relativi costi.\
Tuttavia, ciò non costituisce una limitazione, ed il gruppo è libero di utilizzare modelli di linguaggio localmente, qualora lo ritenesse opportuno.

=== Qual'è il _budget_ a nostra disposizione per l'uso dei servizi _AWS_?
L'_account AWS_ fornito dall'azienda disporrà di un _voucher_ di 250 dollari.\
L'azienda ritiene improbabile che i costi possano superare tale _budget_, in quanto i costi per l'utilizzo di _LLM_ sono bassi durante la fase di _testing_.

=== Quanto spesso si terranno chiamate o _meeting_ con l'azienda?
L'azienda _Var Group S.p.A._ chiede inizialmente un incontro presso la sede di Guizza (Padova) per svolgere attività di _design thinking_ insieme.\
Sono previsti incontri settimanali, i quali potranno essere svolti a distanza. Inoltre, approssimativamente una volta al mese, si terranno incontri formativi in presenza su tecnologie o metodologie.

=== Quale sarà la licenza del prodotto realizzato? Si potrà indicare il progetto nel proprio _curriculum_?
Il progetto realizzato sarà interamente di proprietà di _Var Group S.p.A_. \
Sarà possibile indicare lo sviluppo del prodotto nel proprio _curriculum_, come esperienza acquisita.


=== Il progetto prevede solamente la creazione di un _client_ per lo sviluppo di _workflow_ oppure anche di un _agent_ in grado di eseguire i _workflow_?
L'azienda chiede di realizzare:
- Un client che consenta, tramite un interfaccia a blocchi, di creare automazioni per applicativi locali o remoti
- Un _agent_ in grado di eseguire le automazioni create.

= Conclusioni
Tutto il gruppo _Sigma18_ ringrazia l'azienda per il tempo fornito e per la loro disponibilità.\
L'azienda proponente ha chiarito i dubbi del gruppo riguardo al capitolato proposto, fornendo risposte dettagliate a tutte le domande poste.\
Inoltre, l'azienda ha espresso la propria disponibilità a chiarire eventuali futuri dubbi tramite _email_.
