#import "../../templates/template.typ": *
#show: content => verbale(
  titoloDocumento: "Manuale Utente",
  abstract: "",
  responsabili: ("Pietro Crotti",),
  redattori: ("Aleena Mathew",),
  verificatori: ("Pietro Crotti",),
  tipo: "Documento Esterno",
  destinatari: ("Sigma18", "Prof. Tullio Vardanega", "Prof. Riccardo Cardin", "Var Group S.p.A."),
  versioneAttuale: "0.1.0",
  content: content,
  versioni: (
    "0.1.0",
    "2025/08/14",
    "Aleena Mathew",
    "Pietro Crotti",
    "Stesura iniziale documento",
  ),
)


= Introduzione
== Scopo del documento
Questo documento ha l'obiettivo di fornire una guida dettagliata sull'utilizzo del prodotto software sviluppato dal gruppo Sigma18 richiesto dal capitolato C3 "Automatizzare le _routine_ digitali tramite l'intelligenza generativa" proposto da Var Group S.p.A.

A tal fine, verranno presentati i requisiti minimi necessari per l’avvio del prodotto, inclusi i programmi indispensabili per la sua esecuzione, le procedure di configurazione e le modalità per sfruttare al meglio tutte le funzionalità offerte dal sistema.


== Scopo del prodotto
Il prodotto fornisce un servizio che permette agli utenti di generare automazioni e #glossario("routine").
In particolare, grazie all'ausilio dell'intelligenza artificiale, l'applicativo può interpretare descrizioni di automazioni fornite in linguaggio naturale e generare flussi di lavoro a partire da esse.
Il flusso di lavoro verrà quindi visualizzato attraverso un #glossario("client") che permette all'utente di modificare l'automazione creata grazie ad un'interfaccia #glossario("drag & drop").\
Nell'interfaccia, i *blocchi* rappresentano le azioni effettuabili, mentre gli *archi* che li collegano tra loro corrispondono a relazioni tra i singoli componenti dell'automazione.


== Glossario
Per assicurare la massima chiarezza e prevenire possibili malintesi legati all'interpretazione dei termini utilizzati nei documenti, è stato redatto un glossario. #link("https://sigma18unipd.github.io/documentiCompilati/2-RTB/documentidiprogetto/glossario.pdf")[Questo] strumento raccoglie e definisce in maniera precisa tutti i termini che potrebbero risultare ambigui, tecnici o comunque soggetti a interpretazioni diverse.

All'interno dei documenti, ogni termine presente nel Glossario sarà opportunamente segnalato tramite la seguente notazione: #glossario("parola"), in modo da permettere al lettore di identificarne facilmente il significato esatto facendo riferimento al glossario stesso.

== Riferimenti
=== Riferimenti normativi

- #link("https://sigma18unipd.github.io/documentiCompilati/2-RTB/documentidiprogetto/normediprogetto_1.0.0.pdf")[Norme di progetto] [versione 1.0.0]

- #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C3.pdf")[Capitolato C3: Automatizzare le _routine_ digitali tramite l'intelligenza generativa] (*Ultimo accesso il: 16/08/2025*)

- #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf")[Regolamento progetto didattico], in particolare la _slide 23_ (*Ultimo accesso il: 16/08/2025*)

- #link("https://www.iso.org/standard/65694.html")[ISO/IEC 31000:2018] (*Ultimo accesso il: 16/07/2025*)

=== Riferimenti informativi
//TODO: link
- #link("https://sigma18unipd.github.io/documentiCompilati/2-RTB/documentidiprogetto/glossario.pdf")[Glossario] [versione 1.0.0]
- #link("")[Specifica tecnica] [versione 1.0.0]





= Avvio del sistema
== Requisiti minimi
Per poter utilizzare il prodotto, è necessario soddisfare i requisiti elencati di seguito.

/*
Techminds:
 Firefox 128 ESR;
• Chromium 133.*/


== Download repository
== Istruzioni Avvio
= Istruzioni all'uso
== Registrazione
== Login
== Dashboard
== Modifica flusso


