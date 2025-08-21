#import "../../templates/template.typ": *
#show: content => verbale(
  titoloDocumento: "Manuale Utente",
  abstract: "",
  responsabili: ("Pietro Crotti", "Carmelo Russello"),
  redattori: ("Aleena Mathew", "Matteo Marangon", "Pietro Crotti"),
  verificatori: ("Pietro Crotti", "Marco Egidi"),
  tipo: "Documento Esterno",
  destinatari: ("Sigma18", "Prof. Tullio Vardanega", "Prof. Riccardo Cardin", "Var Group S.p.A."),
  versioneAttuale: "0.3.0",
  content: content,
  versioni: (
    "0.3.0",
    "2025/08/21",
    "Matteo Marangon
Aleena Mathew
Pietro Crotti",
    "Marco Egidi",
    "Stesura funzionalità software",
    "0.2.0",
    "2025/08/18",
    "Carmelo Russello",
    "Matteo Marangon",
    "Stesura paragrafo installazione",
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

A tal fine, verranno presentati i requisiti minimi necessari per l'avvio del prodotto, inclusi i programmi indispensabili per la sua esecuzione, le procedure di configurazione e le modalità per sfruttare al meglio tutte le funzionalità offerte dal sistema.


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





= Requisiti
<requisiti>
Per poter utilizzare il prodotto, è necessario soddisfare i requisiti elencati di seguito.

== Requisiti hardware

Data la natura web dell'applicazione, non sono richiesti requisiti hardware particolari per l'utilizzo del prodotto. Si consiglia comunque di utilizzare un computer con potenza di calcolo e memoria sufficienti per il normale utilizzo di un browser, per garantire un'esperienza utente fluida.

== Requisiti software

I requisiti software indicano le dipendenze e i programmi che devono essere installati sul sistema dell'utente per consentire l'avvio e il corretto funzionamento del prodotto.

Il sistema si appoggia a #glossario("Docker") per garantire la corretta esecuzione dell'applicativo. Pertanto, è necessario che Docker sia installato sulla propria macchina prima di procedere con l'utilizzo del prodotto.

Se non è presente, è possibile installarlo seguendo le istruzioni disponibili sul #link("https://docs.docker.com/get-docker/")[sito ufficiale] [ultimo accesso il: 18/08/2025].

== Requisiti di sistema operativo
È garantito il corretto funzionamento del prodotto sui seguenti sistemi operativi: 
//TODO elenco

Si raccomanda di utilizzare sistemi aggiornati per assicurare la massima stabilità e sicurezza.



== Requisiti browser
I requisiti browser definiscono le specifiche tecniche minime necessarie per assicurare la corretta visualizzazione e fruizione del software su un browser web specifico.
Come da requisito obbligatorio di vincolo (ROV-2), il funzionamento del prodotto è garantito sulle versioni stabili di _Chromium 138_ e _Firefox ESR 140_.


= Installazione
La seguente sezione fornisce le istruzioni dettagliate per l'installazione e l'avvio dell'applicativo.


== Clonazione della repository
<repo>
Per iniziare, è necessario clonare la repository del progetto per ottenere una copia locale. \
Per farlo, è sufficiente recarsi nella #link("https://github.com/Sigma18Unipd/ProductBaseline")[pagina Github del progetto] e utilizzare _l'url di clonazione_ fornito per clonare il progetto nella cartella desiderata.

Dopo aver scelto la cartella di destinazione, è possibile clonare la repository utilizzando uno dei seguenti comandi:

#figure(
  [
    #show raw.where(block: true): set block(fill: rgb("#f6e2e2"), inset: 1em, radius: 0.3em, width: 100%)
    ```bash
    git clone https://github.com/Sigma18Unipd/ProductBaseline.git
    ```
  ],
  caption: [Clonazione tramite HTTPS],
)

#figure(
  [
    #show raw.where(block: true): set block(fill: rgb("#f6e2e2"), inset: 1em, radius: 0.3em, width: 100%)
    ```bash
    git clone git@github.com:Sigma18Unipd/ProductBaseline.git
    ```
  ],
  caption: [Clonazione tramite SSH],
)
Si consiglia di utilizzare il metodo HTTPS se non si dispone di una chiave SSH configurata su GitHub.

Prima di poter eseguire il comando di clonazione, è necessario verificare che Git sia installato sul proprio sistema. Se Git non è presente, è possibile installarlo seguendo le istruzioni disponibili sul #link("https://git-scm.com/book/en/v2/Getting-Started-Installing-Git")[sito ufficiale di Git] [ultimo accesso il: 18/08/2025].


== Istruzioni per l'avvio
Prima di procedere con l'avvio del sistema, bisogna assicurarsi di aver soddisfatto i #link(<requisiti>)[requisiti minimi] e di aver scaricato correttamente la repository seguendo le istruzioni riportate nella #link(<repo>)[sezione 3.1].

Di seguito vengono fornite le istruzioni da seguire per il corretto avvio del sistema.\
Si noti che all'interno della repository, è disponibile un file, `README.md`, che riporta le stesse istruzioni per il corretto avvio.


+ Aprire il terminale e posizionarsi nella cartella della repository precedentemente scaricata.
+ Avviare il sistema tramite Docker Compose eseguendo uno dei seguenti comandi:
  #figure(
    [
      #show raw.where(block: true): set block(fill: rgb("#f6e2e2"), inset: 1em, radius: 0.3em, width: 100%)
      ```bash
      docker compose up --build
      ```
    ],
    caption: [In caso di primo avvio],
  )
  #figure(
    [
      #show raw.where(block: true): set block(fill: rgb("#f6e2e2"), inset: 1em, radius: 0.3em, width: 100%)
      ```bash
      docker compose up
      ```
    ],
    caption: [In caso avvii successivi],
  )
+ Attendere che il sistema venga avviato completamente, monitorando i log dei vari container per verificare che non ci siano errori.
#figure(image("../../assets/img/manualeutente/log_started.png"), caption: [Il terminale conferma che i container sono stati avviati correttamente])





== Istruzioni per lo spegnimento

È necessario assicurarsi di aver aperto il terminale nella cartella della repository precedentemente clonata prima di eseguire i comandi riportati di seguito.
- Per interrompere l'esecuzione dell'ambiente precedentemente avviato:
  #figure(
    [
      #show raw.where(block: true): set block(fill: rgb("#f6e2e2"), inset: 1em, radius: 0.3em, width: 100%)
      ```bash
      docker compose down
      ```
    ],
  )
- Per riavviare il sistema:
  #figure(
    [
      #show raw.where(block: true): set block(fill: rgb("#f6e2e2"), inset: 1em, radius: 0.3em, width: 100%)
      ```bash
      docker compose up
      ```
    ],
  )




= Istruzioni all'uso

Di seguito viene fornita una guida all'utilizzo dell'applicativo, in cui verranno esposte le funzionalità presenti e come utilizzarle

== Login
<login>
#figure(image("../../assets/img/manualeutente/login.png", width: 35%), caption: [Schermata di login])
All'avvio dell'applicativo si aprirà la schermata di _login_, l'utente  possiede già un acccount potrà accedere al servizio inserendo le sue credenziali, ovvero email e password, negli appositi campi, come mostrato in figura 1.

In caso di credenziali errate, verrà visualizzato un messaggio di errore in basso a destra, come mostrato nella figura 2.

Nel caso in cui l'utente non possegga un'account può effettuare la registrazione, come specificato nella #link(<registrazione>)[sezione 4.2].

== Registrazione
<registrazione>
#figure(image("../../assets/img/manualeutente/register.png", width: 35%), caption: [Schermata di registrazione])
La pagina di registrazione permette all'utente di registrarsi per poter accedere poi all'applicativo.
Per creare un account l'utente dovrà inserire un'email, una password e la conferma della password negli appositi campi.
#figure(image("../../assets/img/manualeutente/error_password_8char.png", width: 35%), caption: [Errore: lunghezza minima password non rispettata])

La password dovrà contenere al minimo 8 caratteri, se la password non rispetta la lunghezza minima, verrà mostrato un messaggio di errore, come mostrato in figura.

#figure(image("../../assets/img/manualeutente/error_password_match.png", width: 35%), caption: [Errrore: le password non coincidono])

Nel caso in cui le due password non coincidano verrà mostrato un messaggio di errore, come mostrato in figura.

Per verificare l'account, seguire le istruzioni definite nella #link(<confirm>)[sezione 4.3].

== Verifica account
<confirm>
L'utente riceverà un codice di verifica nella mail inserita nella fase di registrazione (vedi #link(<registrazione>)[sezione 4.2]).
L'utente dovrà inserire mail e codice di verifica negli appositi campi, come mostrato in figura.
#figure(image("../../assets/img/manualeutente/confirm_account.png", width: 35%), caption: [Schermata di verifica account])

In caso venga inserito un codice errato, verrà mostrato un messaggio d'errore in basso a destra, come mostrato in figura.
#figure(image("../../assets/img/manualeutente/error_confirmationcode.png", width: 35%), caption: [Error: codice di verifica errato])

Successivamente il sistema, reindirizza l'utente alla pagina _dashboard_ vuota, come mostrato in figura.
#figure(image("../../assets/img/manualeutente/dashboard_empty.png"), caption: [Dashboard vuota successiva alla registrazione])

Nella sez. /*da inserire */ è possibile trovare le istruzioni da eseguire per sfruttare le varie funzionalità.


== Dashboard
<dashboard>
Una volta effettuato l'accesso attraverso la pagina accesso, si viene indirizzati nella pagina della _dashboard_ dell'applicativo.
#figure(image("../../assets/img/manualeutente/dashboard.png"), caption: [Schermata della Dashboard])
In questa pagina è possibile effettuare le azione base dell'applicativo come creare un nuovo workflow, effettuare il logout, eseguire un workflow e vedere i dettagli del workflow.

=== Creazione nuovo workflow
Per creare un nuovo workflow è sufficiente selezionare l'apposito pulsante "Create a Workflow", situato in alto a destra. A questo punto verrà visualizzato un popup che consentirà all'utente di inserire il nome del workflow.
Dopo aver specificato il nome, sarà sufficiente premere il pulsante "Create" per generare un nuovo workflow vuoto.

=== Effettuare Logout
Per effettuare il logout, l'utente deve semplicemente selezionare il pulsante rosso "Logout", situato nell'interfaccia in alto a destra, all'interno della _navbar_.
Una volta premuto, il sistema terminerà la sessione in corso e l'utente verrà disconnesso, venendo reindirizzato alla pagina di accesso.

=== Eseguire un workflow dalla pagina Dashboard
Per avviare un workflow, l'utente deve premere l'icona _Play_ posta accanto al workflow che si desidera eseguire.
Una volta premuto il pulsante, il sistema provvederà a iniziare l'esecuzione del workflow scelto.
#figure(image("../../assets/img/manualeutente/workflow_runfromdashboard.png", width: 35%), caption: [Avviare workflow tramite dashboard])

=== Visualizzazione dettagli workflow
Per visualizzare i dettagli di un workflow è sufficiente selezionare il nome del workflow desiderato.
L'utente verrà quindi reindirizzato automaticamente alla pagina dedicata alla visualizzazione e alla modifica del workflow.

== Modifica flusso

L'utente per modificare un _workflow_, dovrà selezionare dalla dashboard il flusso che desidera modificare.
#figure(image("../../assets/img/manualeutente/grid.png"), caption: [Workflow in dettaglio])

Il sistema mostrerà all'utente in dettaglio il flusso, come mostrato in figura.
#figure(image("../../assets/img/manualeutente/navbar_workflow.png"), caption: [Navbar workflow])

L'utente potrà modificare il workflow adoperando uno dei due metodi possibili accessibili con i due bottoni presenti nella navbar, come mostrato in figura.

=== Modifica tramite _AI Workflow Builder_
L'utente potrà modificare il workflow premendo il primo bottone, come mostrato in figura.
#figure(image("../../assets/img/manualeutente/workflow_page_aibuilder.png", width: 80%), caption: [Pulsante aprire l'AI Workflow Builder])
Successivamente si aprirà un modale in cui l'utente potrà scrivere in linguaggio naturale le modifiche che desidera vengano effettuate.

#figure(image("../../assets/img/manualeutente/ai_workflowbuilder.png", width: 50%), caption: [Modale _AI Builder_])


=== Aggiunta di blocchi tramite _Add a Block_

L'utente può aggiungere manualmente tramite la funzione _Add a Block_ dal quale può accedere dal buttone evidenziato in figura.
#figure(image("../../assets/img/manualeutente/workflow_page_addablock.png", width: 80%), caption: [Pulsante per aggiungere un blocco dalla lista])

Nella schermata si aprirà un menù laterale dal quale l'utente potrà cercare e scegliere il blocco desiderato, come mostrato in figura.
#figure(image("../../assets/img/manualeutente/block_list.png", width: 50%), caption: [Menù laterale per aggiunta di blocchi])


=== Rimozione di un blocco

== Funzionalità di un flusso //cambia nome
Dopo la creazione o la modifica di un flusso, l'utente può accedere a diverse funzionalità relative al workflow tramite il modale che si aprirà quando si ritorna alla dashboard, premendo il bottone cerchiato in figura.
//TODO aggiungi grid con navbar
Di seguito vengono elencate le operazioni possibili.

=== Salvataggio di un flusso

#figure(image("../../assets/img/manualeutente/workflow_menu_save.png", width: 50%), caption: [Salvataggio di un workflow])
Per salvare il workflow, dopo la sua creazione o modifica è sufficiente premere il bottone _Save_ evidenziato in figura.
L'utente potrà potere il workflow nella sua dashboard.


=== Esecuzione di un flusso
#figure(image("../../assets/img/manualeutente/workflow_menu_run.png", width: 50%), caption: [Esecuzione di un workflow])

=== Eliminazione di un workflow
#figure(image("../../assets/img/manualeutente/workflow_menu_delete.png", width: 50%), caption: [Eliminazione di un workflow])
Se l'utente desidera eliminare il workflow selezionata deve selezionare il bottone _Delete Workflow_, come evidenziato in figura.

Il sistema chiederà un'ulteriore conferma all'utente prima di procedere con l'eliminazione, per procedere con l'eliminazione l'utente dovrà selezionare il bottone rosso _Delete Workflow_, come mostrato in figura.
#figure(image("../../assets/img/manualeutente/delete_workflow.png", width: 50%), caption: [Popup di conferma eliminazione di un workflow])

Una volta eliminato il workflow, l'utente verrà reindirizzato alla dashboard.



=== Rinominazione di un workflow

Nel caso l'utente desideri cambiare il nome del flusso deve selezionare _Edit Workflow Name_, come evidenziato in figura.
#figure(image("../../assets/img/manualeutente/workflow_menu_edit.png", width: 50%), caption: [Rinominazione di un workflow])

Si aprirà un modale in cui l'utente può inserire il nome che desidera e il flusso verrà rinominato.
#figure(image("../../assets/img/manualeutente/workflow_rename.png", width: 50%), caption: [Rinominazione di un workflow])

=== Back to Dashboard

L'utente potrà ritornare alla dashboard selezionando il bottone evidenziato in figura.

#figure(image("../../assets/img/manualeutente/workflow_menu_back.png", width: 50%), caption: [Ritorno alla dashboard])



