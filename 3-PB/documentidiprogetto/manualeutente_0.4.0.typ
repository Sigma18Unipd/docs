#import "../../templates/template.typ": *
#show: content => verbale(
  titoloDocumento: "Manuale Utente",
  abstract: "",
  responsabili: ("Pietro Crotti", "Carmelo Russello"),
  redattori: ("Aleena Mathew", "Matteo Marangon", "Pietro Crotti"),
  verificatori: ("Pietro Crotti", "Marco Egidi", "Alessandro Bernardello"),
  tipo: "Documento Esterno",
  destinatari: ("Sigma18", "Prof. Tullio Vardanega", "Prof. Riccardo Cardin", "Var Group S.p.A."),
  versioneAttuale: "0.4.0",
  content: content,
  versioni: (
    "0.4.0",
    "2025/08/27",
    "Aleena Mathew",
    "Alessandro Bernardello",
    "Aggiunta errori e temi",
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
#outline(title: "Elenco immagini", target: figure.where(kind: image, outlined: true))

#pagebreak()

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
//TODO fix link
Per assicurare la massima chiarezza e prevenire possibili malintesi legati all'interpretazione dei termini utilizzati nei documenti, è stato redatto un glossario. #link("https://sigma18unipd.github.io/documentiCompilati/3-PB/documentidiprogetto/glossario.pdf")[Questo] strumento raccoglie e definisce in maniera precisa tutti i termini che potrebbero risultare ambigui, tecnici o comunque soggetti a interpretazioni diverse.

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

Data la natura web dell'applicazione, non sono richiesti requisiti hardware particolari per l'utilizzo del prodotto.
Si raccomanda tuttavia di utilizzare dispositivi con risoluzione schermo minima di 1280 x 720 pixel (HD), per garantire un'esperienza utente fluida. Una risoluzione inferiore potrebbe compromettere la visualizzazione completa dell'interfaccia utente e rendere alcuni elementi del menù difficilmente accessibili.



== Requisiti software

I requisiti software indicano le dipendenze e i programmi che devono essere installati sul sistema dell'utente per consentire l'avvio e il corretto funzionamento del prodotto.


Data la natura dell'applicativo che è ospitato su #glossario("AWS"), per il suo utilizzo sono sufficienti un browser moderno e una connessione internet stabile.\
Gli utenti possono accedere all'applicazione direttamente tramite link fornito di seguito.
//TODO aggiungi link




Tuttavia, è possibile effettuare un deployment locale dell'applicativo seguendo le istruzioni riportate nella #link(<repo>)[sezione 3].
Il sistema si appoggia a #glossario("Docker") per garantire la corretta esecuzione dell'applicativo. Pertanto, è necessario che Docker sia installato sulla propria macchina prima di procedere con l'utilizzo in locale del prodotto.

Se non è presente, è possibile installarlo seguendo le istruzioni disponibili sul #link("https://docs.docker.com/get-docker/")[sito ufficiale] [ultimo accesso il: 18/08/2025].

== Requisiti di sistema operativo
È garantito il corretto funzionamento del prodotto sui seguenti sistemi operativi:
//TODO elenco

Si raccomanda di utilizzare sistemi aggiornati per assicurare la massima stabilità e sicurezza.



== Requisiti browser
I requisiti browser definiscono le specifiche tecniche minime necessarie per assicurare la corretta visualizzazione e fruizione del software su un browser web specifico.


Come da requisito obbligatorio di vincolo (ROV-2), il funzionamento del prodotto è garantito sulle versioni stabili di _Chromium 138_ e _Firefox ESR 140_.

#pagebreak()

= Installazione
<installazione>
La seguente sezione fornisce le istruzioni dettagliate per l'installazione e l'avvio dell'applicativo.


== Clonazione della repository
<repo>
Per iniziare, è necessario clonare la repository del progetto per ottenere una copia locale. \
Per farlo, è sufficiente recarsi nella #link("https://github.com/Sigma18Unipd/ProductBaseline")[pagina Github del progetto] e scaricare il file `.zip`, come mostrato nella figura seguente.


#figure(
  image("../../assets/img/manualeutente/download_repo.png", width: 80%),
  caption: [Download file `.zip`],
)



In alternativa, è possibile utilizzare _l'url di clonazione_ fornito per clonare il progetto nella cartella desiderata.

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
Prima di procedere con l'avvio del sistema, bisogna assicurarsi di aver soddisfatto i #link(<requisiti>)[requisiti minimi] e di aver scaricato correttamente la repository,  come riportato nella #link(<repo>)[sez. 3.1].

Di seguito vengono fornite le istruzioni da seguire per il corretto avvio del sistema.\
Si noti che all'interno della repository, è disponibile un file, `README.md`, che riporta le stesse istruzioni per il corretto avvio.


+ Aprire il terminale e posizionarsi nella cartella della repository precedentemente scaricata.
+ Avviare il sistema tramite Docker Compose eseguendo il seguente comando:
  #figure(
    [
      #show raw.where(block: true): set block(fill: rgb("#f6e2e2"), inset: 1em, radius: 0.3em, width: 100%)
      ```bash
      docker compose up
      ```
    ],
    caption: [Comando di avvio],
  )


In assenza di problemi, il sistema sarà accessibile all'indirizzo `http://localhost:5173`. \
In caso di problemi, verificare che Docker sia in esecuzione e che le porte necessarie non siano già occupate da altri servizi.


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


#pagebreak()
= Istruzioni all'uso

Di seguito viene presentata una guida dettagliata all'utilizzo dell'applicativo, illustrando le principali funzionalità disponibili e come sfruttarle al meglio.

== Login
<login>
#figure(image("../../assets/img/manualeutente/login.png", width: 35%), caption: [Schermata di login])
All'avvio dell'applicativo viene presentata la schermata di _login_. L'utente che possiede già un account può accedere al servizio inserendo le proprie credenziali (email e password) negli appositi campi, come illustrato in figura.


Se l'utente non dispone di un account, può procedere con la registrazione seguendo le istruzioni riportate nella #link(<registrazione>)[sezione 4.2].

=== Errori
==== Error 401
L'errore 401 si verifica nei due casi elencati di seguito:
+ Le credenziali inserite non sono corrette e viene visualizzato un messaggio di errore, in basso a destra, con la dicitura _"invalid mail or password"_, come mostrato in figura. #figure(image("../../assets/img/manualeutente/error_invalid.png", width: 35%), caption: [Error: Credenziali errate])

+ L'utente non ha ancora completato la verifica dell'account e viene visualizzato un messaggio di errore, in basso a destra, con la dicitura _"user account not confirmed"_, come illustrato in figura. #figure(image("../../assets/img/manualeutente/error401-2.png", width: 35%), caption: [Error: User non verificato])

==== Error 429

L'errore 429 si verifica quando vengono effettuate troppe richieste di login in un breve intervallo di tempo. In questo caso, il sistema blocca temporaneamente ulteriori tentativi e mostra un messaggio di errore che invita l'utente ad attendere prima di riprovare.

==== Error 500

L'errore 500 si verifica quando si presenta un errore diverso da quelli precedentemente trattati. In questo caso, il sistema mostra un messaggio di errore generico che indica un problema interno del server.
#figure(image("../../assets/img/manualeutente/error500.png", width: 35%), caption: [Errore 500])



== Registrazione
<registrazione>
#figure(image("../../assets/img/manualeutente/register.png", width: 35%), caption: [Schermata di registrazione])
La pagina di registrazione consente all'utente di creare un nuovo account per accedere all'applicativo.
Per completare la registrazione, è necessario inserire un indirizzo email valido, una password e confermare la password negli appositi campi, come mostrato in figura.

#figure(
  image("../../assets/img/manualeutente/error_password_8char.png", width: 35%),
  caption: [Error: lunghezza minima password non rispettata],
)

La password deve contenere almeno 8 caratteri. Se la password inserita non rispetta questo requisito, il sistema mostrerà un messaggio di errore, come illustrato in figura.

#figure(image("../../assets/img/manualeutente/error_password_match.png", width: 35%), caption: [Error: le password non coincidono])
Se la password e la conferma della password non coincidono, il sistema mostrerà un messaggio di errore, come mostrato in figura.


Per verificare l'account, seguire le istruzioni definite nella #link(<confirm>)[sezione 4.3].

=== Errori
==== Error 409
L'errore 409 si verifica quando l'utente tenta di registrarsi con un'email già in uso. In questo caso, viene visualizzato un messaggio di errore, in basso a destra, con la dicitura _"user already exists"_, come mostrato in figura.
#figure(image("../../assets/img/manualeutente/error409.png", width: 35%), caption: [Error: Email già in uso])
==== Error 500

L'errore 500 si verifica quando si verifica un problema diverso da quelli precedenti. In questo caso, il sistema mostra un messaggio di errore generico che indica un problema interno del server.

#figure(image("../../assets/img/manualeutente/error500reg.png", width: 35%), caption: [Error 500])

== Verifica account
<confirm>
L'utente riceverà un codice di verifica all'indirizzo email fornito nella fase di registrazione (vedi #link(<registrazione>)[sezione 4.2]).
L'utente dovrà inserire email e codice di verifica negli appositi campi, come mostrato in figura.
#figure(image("../../assets/img/manualeutente/confirm_account.png", width: 40%), caption: [Schermata di verifica account])


Dopo la verifica dell'account, il sistema reindirizza automaticamente l'utente alla pagina _dashboard_ iniziale, che risulterà vuota in quanto non sono ancora presenti workflow associati all’account appena creato (vedi figura).

#figure(
  [
    #show image.where(): set block(stroke: rgb("#cccccc"), inset: 0.5em)
    #image("../../assets/img/manualeutente/dashboard_empty.png", width: 60%)
  ],
  caption: [Dashboard vuota],
)

Nella #link(<dashboard>)[sez. 4.4] è possibile trovare le istruzioni da eseguire per sfruttare le varie funzionalità.


=== Errori
=== Error 404
L'errore 404 si verifica nei seguenti casi:

+ Il codice di verifica inserito non è corretto. In questo caso, il sistema mostrerà un messaggio di errore in basso a destra, con la dicitura _"code not valid"_, come illustrato in figura. #figure(image("../../assets/img/manualeutente/error_confirmationcode.png", width: 35%), caption: [Error: codice di verifica errato])

+ Il codice di verifica è scaduto. In questo caso, il sistema mostrerà un messaggio di errore in basso a destra, con la dicitura _"code expired"_, come mostrato in figura. #figure(image("../../assets/img/manualeutente/error404expired.png", width: 35%), caption: [Error: codice di verifica scaduto])


+ Il sistema non è riuscito a trovare l'utente associato all'email inserita. In questo caso, viene visualizzato un messaggio di errore in basso a destra,con la dicitura _"user not found"_, come mostrato in figura. #figure(image("../../assets/img/manualeutente/error404email.png", width: 35%), caption: [Error: email non trovata])

==== Error 500

L'errore 500 si verifica quando si verifica un problema diverso da quelli precedentemente trattati. In questo caso, il sistema mostra un messaggio di errore generico che indica un problema interno del server.




== Dashboard
<dashboard>
Dopo aver effettuato l'accesso attraverso la pagina di _login_, l'utente viene indirizzato alla pagina della _dashboard_ dell'applicativo.


#figure(
  [
    #show image.where(): set block(stroke: rgb("#cccccc"), inset: 0.5em)
    #image("../../assets/img/manualeutente/dashboard.png", width: 80%)
  ],
  caption: [Dashboard],
)


Da questa pagina è possibile effettuare le azione base dell'applicativo come creare nuovi workflow, eseguire un workflow, visualizzare i dettagli del workflow oppure effettuare il logout tramite i comandi disponibili nell'interfaccia.

=== Creazione nuovo workflow

#h(1em)
#figure(
  [
    #show image.where(): set block(stroke: rgb("#cccccc"), inset: 0.5em)
    #image("../../assets/img/manualeutente/navbar_dashboard.png", width: 80%),
  ],
  caption: [Navbar dashboard],
)

Per creare un nuovo workflow è sufficiente selezionare l'apposito pulsante _*Create a Workflow*_ , situato in alto a destra, come mostrato in figura.

#figure(image("../../assets/img/manualeutente/workflow_create.png", width: 45%), caption: [Nome nuovo workflow])

A questo punto viene visualizzato un popup che permette all'utente di inserire il nome desiderato per il nuovo workflow.
Dopo aver inserito il nome, è sufficiente premere il pulsante _*Create*_ per creare un workflow vuoto.

==== Errori
===== Error 400
<errori-nome>
L'errore 400 si verifica nei due casi elencati di seguito:
+ L'utente tenta di creare un workflow senza inserire un nome. In questo caso, il sistema mostrerà un messaggio di errore in basso a destra, con la dicitura _"workflow name is required"_, come mostrato in figura. #figure(image("../../assets/img/manualeutente/emptyname.png", width: 35%), caption: [Error: nome mancante])
+ L'utente tenta di creare un workflow con un nome che supera i 25 caratteri. In questo caso, il sistema mostrerà un messaggio di errore in basso a destra, con la dicitura _"workflow name must be less than 25 characters"_, come mostrato in figura. #figure(image("../../assets/img/manualeutente/nametoolong.png", width: 35%), caption: [Error: nome troppo lungo])

===== Error 500

L'errore 500 si verifica quando si verifica un problema diverso da quelli precedentemente trattati. In questo caso, il sistema mostra un messaggio di errore generico che indica un problema interno del server.


=== Eseguire un workflow dalla pagina Dashboard
Per avviare un workflow, l'utente deve selezionare l'icona _play_ situata accanto al nome del workflow che si desidera eseguire.
Una volta premuto il pulsante, il sistema provvederà a iniziare l'esecuzione del workflow scelto.


#figure(image("../../assets/img/manualeutente/workflow_runfromdashboard.png", width: 35%), caption: [Avviare un workflow dalla dashboard])

=== Visualizzazione dettagli workflow
Per visualizzare i dettagli di un workflow è sufficiente selezionare il nome del workflow desiderato.
L'utente verrà quindi reindirizzato automaticamente alla pagina dedicata alla visualizzazione e alla modifica del workflow.

== Modifica flusso

Per modificare un _workflow_, l'utente deve selezionare dalla _dashboard_ il flusso desiderato; verrà quindi reindirizzato alla pagina di dettaglio, come illustrato nella figura seguente.


#figure(
  [
    #show image.where(): set block(stroke: rgb("#cccccc"), inset: 0.5em)
    #image("../../assets/img/manualeutente/grid.png", width: 80%),
  ],
  caption: [Visualizzazione dettagliata del workflow],
)

L'utente può visualizzare la struttura completa del workflow, con tutti i blocchi e le relazioni tra essi. L’utente può interagire direttamente con i blocchi per modificarli, aggiungerne di nuovi, rimuoverli o modificarne le relazioni.


#h(1em)
#figure(image("../../assets/img/manualeutente/navbar_workflow.png"), caption: [Barra di navigazione della pagina workflow])
#h(1em)

L'utente potrà modificare il workflow adoperando uno dei due metodi possibili accessibili con i due bottoni presenti nella navbar, come mostrato in figura.

=== Modifica tramite _AI Workflow Builder_
Per modificare il workflow tramite _AI Workflow Builder_, l'utente deve premere il primo bottone evidenziato nella barra di navigazione, come mostrato in figura.
#figure(image("../../assets/img/manualeutente/workflow_page_aibuilder.png", width: 80%), caption: [Button: AI Workflow Builder])

Si aprirà quindi un modale dedicato, nel quale l'utente può descrivere in linguaggio naturale le modifiche desiderate al workflow, come mostrato nella figura seguente.

#figure(image("../../assets/img/manualeutente/ai_workflowbuilder.png", width: 50%), caption: [Modale _AI Builder_])

==== Error 400

//TODO inserire errore giusto
Nel caso l'utente non inserisca nulla nel prompt, il sistema mostrerà un messaggio di errore in basso a destra, con la dicitura _"prompt is required"_, come mostrato in figura. #figure(image("../../assets/img/manualeutente/emptyname.png", width: 35%), caption: [Error: prompt mancante])

=== Aggiunta di blocchi tramite _Add a Block_

Per aggiungere manualmente un blocco al workflow, l'utente deve selezionare il pulsante _*Add a Block*_ evidenziato nella barra di navigazione, come mostrato in figura.
#figure(
  image("../../assets/img/manualeutente/workflow_page_addablock.png", width: 80%),
  caption: [Button: Add a Block],
)

Successivamente verrà visualizzato un menù laterale che consente all'utente di cercare e scegliere il blocco desiderato, come mostrato in figura.
#figure(image("../../assets/img/manualeutente/block_list.png", width: 50%), caption: [Menù laterale per aggiunta di blocchi])

=== Rimozione di un blocco

Per rimuovere un blocco dal workflow, l'utente deve selezionare l'icona delle _impostazioni_ del blocco che desidera eliminare. Successivamente, nel menù che si apre, è sufficiente premere il bottone rosso _*Remove Block*_, come illustrato in figura.
#figure(image("../../assets/img/manualeutente/remove_block.png", width: 45%), caption: [Button: Remove Block])

Ad eccezione del blocco _AI: Summarize_, di cui i dettagli sono forniti nella #link("<ai-summarize>")[sez. 4.7.3].

== Funzionalità di un flusso //cambia nome
Dopo la creazione o la modifica di un flusso, l'utente può accedere a diverse funzionalità relative al workflow tramite il modale che si aprirà quando si ritorna alla dashboard, premendo il bottone indicato in figura.

#figure(
  [
    #show image.where(): set block(stroke: rgb("#cccccc"), inset: 0.5em)
    #image("../../assets/img/manualeutente/workflowmenu.png", width: 80%),
  ],
  caption: [Button: Workflow Menu],
)

Di seguito vengono elencate le operazioni possibili.

=== Salvataggio di un flusso

#figure(image("../../assets/img/manualeutente/workflow_menu_save.png", width: 50%), caption: [Salvataggio di un workflow])
Per salvare il workflow, dopo la sua creazione o modifica è sufficiente premere il bottone _Save_ evidenziato in figura.\
Il workflow verrà così memorizzato e sarà disponibile nella dashboard dell'utente.


=== Esecuzione di un flusso
#figure(image("../../assets/img/manualeutente/workflow_menu_run.png", width: 50%), caption: [Esecuzione di un workflow])

Per eseguire un workflow, l'utente deve selezionare l'icona _Run_ come evidenziato in figura.

In assenza di errori, il sistema avvierà l'esecuzione del workflow e mostrerà una notifica di avvio con successo in basso a destra, come mostrato in figura.

#figure(image("../../assets/img/manualeutente/successful_workflow.png", width: 50%), caption: [Notifica di avvio con successo])



=== Eliminazione di un workflow
#figure(image("../../assets/img/manualeutente/workflow_menu_delete.png", width: 50%), caption: [Eliminazione di un workflow])
Per eliminare un workflow, l'utente deve selezionare il pulsante _Delete Workflow_ dal menù, come indicato in figura.

A questo punto, il sistema mostrerà un popup di conferma; per completare l'eliminazione, è necessario premere il pulsante rosso _*Delete Workflow*_, visibile nella figura di seguito.
#figure(image("../../assets/img/manualeutente/delete_workflow.png", width: 50%), caption: [Popup di conferma eliminazione di un workflow])

Dopo la conferma, il workflow verrà rimosso definitivamente dal sistema e l'utente sarà automaticamente reindirizzato alla dashboard, dove non sarà più visibile tra i flussi disponibili.



=== Rinominazione di un workflow

Nel caso l'utente desideri cambiare il nome del flusso deve selezionare _Edit Workflow Name_, come evidenziato in figura.
#figure(image("../../assets/img/manualeutente/workflow_menu_edit.png", width: 50%), caption: [Rinominazione di un workflow])

Si aprirà un modale che consente all'utente di inserire il nuovo nome desiderato per il workflow, come mostrato nella figura di seguito.
Il nome del workflow verrà aggiornato e sarà immediatamente visibile sia nella dashboard che nella relativa schermata di dettaglio.
#figure(image("../../assets/img/manualeutente/workflow_rename.png", width: 50%), caption: [Rinominazione di un workflow])

È possibile che si verifichino errori analoghi a quelli già descritti nella #link(<errori-nome>)[sez. 4.4.1.1.1], se l'utente tenta di rinominare il workflow con un nome non valido.

=== Back to Dashboard

L'utente potrà ritornare alla dashboard selezionando il bottone evidenziato in figura.

#figure(image("../../assets/img/manualeutente/workflow_menu_back.png", width: 50%), caption: [Ritorno alla dashboard])

== Impostazioni dei singoli blocchi
Di seguito verranno descritte le impostazioni disponibili dei vari blocchi, a cui è possibile accedere selezionando l'icona delle _impostazioni_ del blocco desiderato, come evidenziato nella figura seguente.
#figure(image("../../assets/img/manualeutente/impostazioni.png", width: 40%), caption: [Icona impostazioni])

=== System: Wait Seconds
Il blocco _System: Wait Seconds_ consente di inserire una pausa nell'esecuzione del workflow per un numero specifico di secondi.
L'utente può configurare il numero di secondi di attesa tramite il menù delle impostazioni del blocco, come mostrato in figura.
#figure(image("../../assets/img/manualeutente/remove_block.png", width: 35%), caption: [Blocco _System: Wait Seconds_])


=== Telegram: Send Bot Message
Il blocco _Telegram: Send Bot Message_ permette di inviare un messaggio tramite un bot di Telegram.
L'utente deve configurare il blocco inserendo negli appositi campi il token del bot, l'ID della chat a cui inviare il messaggio e il messaggio da inviare, come mostrato in figura.
#figure(image("../../assets/img/manualeutente/telegram_block.png", width: 35%), caption: [Blocco _Telegram: Send Bot Message_])


=== Notion: Get Page
Il blocco _Notion: Get Page_ consente di recuperare i contenuti di una pagina di Notion.
L'utente deve configurare il blocco compilando gli appositi campi.
#figure(image("../../assets/img/manualeutente/notion_block.png", width: 35%), caption: [Blocco _Notion: Get Page_])

=== AI: Summarize
<ai-summarize>
Il blocco _AI: Summarize_ consente di generare un riassunto del contenuto fornito.
Dato che si tratta di un blocco che riassume le informazioni ottenute dal blocco precedente non ci sono campi che l'utente deve compilare, motivo per cui non sono presenti impostazioni aggiuntive.\
Al posto dell'icona delle impostazioni, il blocco presenta un'icona di un cestino che, se selezionata, permette di rimuovere il blocco dal workflow, come mostrato in figura.
#figure(image("../../assets/img/manualeutente/ai_summarize_block.png", width: 40%), caption: [Blocco _AI: Summarize_])



== Logout

#h(1em)
#figure(
  [
    #show image.where(): set block(stroke: rgb("#cccccc"), inset: 0.5em)
    #image("../../assets/img/manualeutente/navbar_dashboard.png", width: 80%),
  ],
  caption: [Navbar dashboard],
)

Per effettuare il logout, l'utente deve selezionare il pulsante rosso _*Logout*_, situato nell'interfaccia in alto a destra, all'interno della _navbar_, visibile in figura.
Il sistema terminerà la sessione in corso, l'utente verrà disconnesso e reindirizzato alla pagina di _login_.

== Tema chiaro e scuro

L'utente può scegliere tra due temi per l'interfaccia dell'applicativo: il tema chiaro e il tema scuro.

Nella navbar, l'utente può selezionare l'icona della _luna_ per attivare il tema scuro o l'icona del _sole_ per tornare al tema chiaro, come mostrato in figura.

#grid(
  columns: (1fr, 1fr),
  gutter: 5mm,
  figure(
    image("../../assets/img/manualeutente/temachiaro.png", width: 100%),
    caption: [
      Dashboard in modalità chiara.
    ],
  ),
  figure(
    image("../../assets/img/manualeutente/temascuro.png", width: 100%),
    caption: [
      Dashboard in modalità scura.
    ],
  ),
)
