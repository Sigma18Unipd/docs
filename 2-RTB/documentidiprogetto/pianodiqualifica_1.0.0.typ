#import "../../templates/template.typ": *

#show: content => verbale(
  titoloDocumento: "Piano di Qualifica",
  abstract: "Piano di qualifica per il capitolato C3 proposto da Var Group S.p.A.",
  responsabili: " ",
  redattori: " ",
  verificatori: " ",
  tipo: "Documento Esterno",
  destinatari: ("Prof. Tullio Vardanega", "Prof. Riccardo Cardin", "Var Group S.p.A.", "Sigma18"),
  versioneAttuale: "1.0.0",
  versioni: (
    "1.0.0",
    " ",
    " ",
    " ",
    "Prima stesura del documento",
  ),
  content: content,
)
= Introduzione
== Scopo del documento
Il presente documento ha lo scopo di definire le modalità di verifica e validazione adottate dal gruppo al fine di garantire la qualità del prodotto finale.
Il documento sarà soggetto ad aggiornamenti durante il ciclo di vita del progetto per riflettere le modifiche apportate per raggiungere una migliore efficacia ed efficienza.

== Glossario
Data la presenza di termini tecnici e acronimi, è stato creato un glossario per facilitare la comprensione del documento.
Per termini contrassegnati con il seguente apice _\*_, sarà fornita un'accurata definizione nel Glossario.

== Riferimenti
=== Riferimenti normativi
- *Norme di progetto:*
link

- * ISO/IEC 12207:1995: *
#link("https://www.math.unipd.it/~tullio/IS-1/2009/Approfondimenti/ISO_12207-1995.pdf")[https://www.math.unipd.it/~tullio/IS-1/2009/Approfondimenti/ISO_12207-1995.pdf]

- Capitolato *C3 - Automatizzare le routine digitali tramite l'intelligenza generativa*
#link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C3.pdf")[https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C3.pdf]

=== Riferimenti informativi
- *Glossario:*
link

- *Slide T07 - Qualità del prodotto*:
#link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T07.pdf")[https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T07.pdf]

- *Slide T08 - Qualità del processo*:
#link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T08.pdf")[https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T08.pdf]

= Qualità di processo
La qualità di processo è un aspetto fondamentale per garantire il successo del progetto software poiché garantisce che i processi utilizzati siano efficaci, efficienti e conformi agli standard di qualità prefissati.

Di seguito sono riportati gli obiettivi di qualità che il gruppo si propone di raggiungere, suddivisi in tre categorie di processi: _primari_, _di supporto_ e _organizzativi_, come individuato dallo standard ISO/IEC 12207:1995.

== Processi primari
I processi primari comprendono attività di acquisizione, gestione operativa, manutenzione del software, fornitura, sviluppo. Verranno esaminati solo gli ultimi due, in quanto si tratta di un progetto didattico.

=== Fornitura
Si intendono le attività e i compiti svolti dal fornitore, in accordo con il proponente nel stabilire i vincoli e requisiti del prodotto.
Con l'acronimo _MPC_ (Minimum Predictive Capability) si indica il valore minimo da raggiungere.

==== Earned Value (MPC-EV)
È il valore del lavoro completato fino a un dato momento rispetto al budget pianificato, è il risultato del prodotto tra _BAC_ (Budget At Completion) e la percentuale di lavoro completato.

==== Planned Value (MPC-PV)
È il valore del lavoro pianificato da completare entro una determinata data.
Tale valore è ricavato dal prodotto tra _BAC_ e la percentuale di lavoro pianificato da completare entro la data prefissata.

==== Actual Cost (MPC-AC)
Indica l'effettivo costo sostenuto fino ad un determinato momento per il lavoro svolto.

==== Estimated At Completion (MPC-EAC)
La stima del costo totale del progetto, basata sulle condizioni attuali, è un valore ottenuto dal rapporto tra _BAC_ e _CPI_ (Cost Performance Index).

==== Estimated To Completion (MPC-ETC)
Stima i costi aggiuntivi necessari per completare il progetto.

==== Cost Variance (MPC-CV)
Misura la differenza tra il valore guadagnato (EV) e il costo effettivo sostenuto (AC) fino a un quel momento.

==== Schedule variance (MPC-SV)
Misura la differenza tra il valore guadagnato (EV) e il valore pianificato (PV) fino a un quel momento, è utile per identificare eventuali ritardi o anticipi rispetto alla pianificazione (valori negativi indicano ritardi).

==== Cost performance index (MPC-CPI)
Misura l’efficienza del costo per il lavoro svolto fino a un determinato momento, in base al valore ottenuto per ogni unità monetaria spesa.

#align(
  center,
  table(
    columns: (auto, 1fr, auto, auto),
    align: center,
    rows: auto,
    inset: 7pt,
    table.header([*Metrica*], [*Nome*], [*Valore Accettabile*], [*Valore Ottimo*]),
    [MPC-EV], [Earned Value], [≥0], [≤EAC],
    [MPC-PV], [Planned Value], [≥0], [≤BAC],
    [MPC-AC], [Actual Cost], [≥0], [≤EAC],
    [MPC-EAC], [Estimated At Completion], [±5% BAC], [=BAC],
    [MPC-ETC], [Estimated To Completion], [≥0], [≤EAC],
    [MPC-CV], [Cost Variance ], [≥-5%], [≥0],
    [MPC-SV], [Schedule variance], [±5% BAC], [≥0],
    [MPC-CPI], [Cost performance index], [≥0], [1],
  ),
)
#align(center, text("Tabella 1: Metriche di qualità del processo di fornitura."))


=== Sviluppo
