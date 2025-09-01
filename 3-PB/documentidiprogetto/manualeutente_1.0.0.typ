#import "../../templates/template.typ": *
#show: content => verbale(
  titoloDocumento: "Manuale Utente",
  abstract: "",
  responsabili: ("Pietro Crotti", "Carmelo Russello"),
  redattori: ("Aleena Mathew", "Matteo Marangon", "Pietro Crotti", "Mirco Borella", "Alessandro Bernardello"),
  verificatori: ("Pietro Crotti", "Marco Egidi", "Alessandro Bernardello", "Aleena Mathew", "Carmelo Russello"),
  tipo: "Documento Esterno",
  destinatari: ("Sigma18", "Prof. Tullio Vardanega", "Prof. Riccardo Cardin", "Var Group S.p.A."),
  versioneAttuale: "1.0.0",
  content: content,
  versioni: (
    "1.0.0",
    "2025/08/28",
    "Aleena Mathew
Alessandro Bernardello
Mirco Borella",
    "Carmelo Russello",
    "Correzione errori e migliorie",
    "0.4.1",
    "2025/08/28",
    "Matteo Marangon",
    "Aleena Mathew",
    "Correzioni e rifiniture varie",
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
Per assicurare la massima chiarezza e prevenire possibili malintesi legati all'interpretazione dei termini utilizzati nei documenti, è stato redatto un glossario. #link("https://sigma18unipd.github.io/documentiCompilati/3-PB/documentidiprogetto/glossario.pdf")[Questo] strumento raccoglie e definisce in maniera precisa tutti i termini che potrebbero risultare ambigui, tecnici o comunque soggetti a interpretazioni diverse.

All'interno dei documenti, ogni termine presente nel Glossario sarà opportunamente segnalato tramite la seguente notazione: #glossario("parola"), in modo da permettere al lettore di identificarne facilmente il significato esatto facendo riferimento al glossario stesso.

== Riferimenti
=== Riferimenti normativi

- #link("https://sigma18unipd.github.io/documentiCompilati/3-PB/documentidiprogetto/normediprogetto_2.0.0.pdf")[Norme di progetto] [versione 2.0.0]

- #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C3.pdf")[Capitolato C3: Automatizzare le _routine_ digitali tramite l'intelligenza generativa] (*Ultimo accesso il: 25/08/2025*)

- #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf")[Regolamento progetto didattico], in particolare la _slide 23_ (*Ultimo accesso il: 19/08/2025*)

- #link("https://www.iso.org/standard/65694.html")[ISO/IEC 31000:2018] (*Ultimo accesso il: 23/07/2025*)

=== Riferimenti informativi
- #link("https://sigma18unipd.github.io/documentiCompilati/3-PB/documentidiprogetto/glossario.pdf")[Glossario] [versione 2.0.0]

- #link("https://sigma18unipd.github.io/documentiCompilati/3-PB/documentidiprogetto/specificatecnica_1.0.0.pdf")[Specifica tecnica] [versione 1.0.0]





= Requisiti
<requisiti>
Per poter utilizzare il prodotto, è necessario soddisfare i requisiti elencati di seguito.

== Requisiti hardware client

Data la natura web dell'applicazione, non sono richiesti requisiti hardware particolari per l'utilizzo del client prodotto.
Per un'esperienza ottimale, si raccomanda tuttavia di utilizzare dispositivi con risoluzione schermo minima di 1280 x 720 pixel (HD). Una risoluzione inferiore potrebbe compromettere la visualizzazione completa dell'interfaccia utente e rendere alcuni elementi del menù difficilmente accessibili.



== Requisiti software client

I requisiti software indicano le dipendenze e i programmi che devono essere installati sul sistema dell'utente per consentire l'utilizzo e il corretto funzionamento del prodotto.

Data la natura web dell'applicativo, è sufficiente un browser moderno (ad esempio, Chrome, Firefox, Safari) aggiornato all'ultima versione disponibile e una connessione ad internet stabile.

Come da requisito obbligatorio di vincolo (ROV-2), il funzionamento del prodotto è garantito sulle versioni stabili di Chromium 138 e Firefox ESR 140.


#pagebreak()
= Istruzioni all'uso

Di seguito viene presentata una guida dettagliata all'utilizzo dell'applicativo, illustrando le principali funzionalità disponibili e come sfruttarle al meglio.

== Login
<login>
#figure(image("../../assets/img/manualeutente/login.png", width: 35%), caption: [Schermata di login])
All'avvio dell'applicativo viene presentata la schermata di _login_. L'utente che possiede già un account può accedere al servizio inserendo le proprie credenziali (email e password) negli appositi campi, come illustrato in figura.

Se l'utente non dispone di un account, può procedere con la registrazione seguendo le istruzioni riportate nella #link(<registrazione>)[sezione 3.2].

=== Errori
L'errore "Credenziali errate" si verifica quando le credenziali inserite non sono corrette.
Esso viene mostrato in basso a destra con la dicitura _"invalid mail or password"_, come mostrato in figura. #figure(image("../../assets/img/manualeutente/error_invalid.png", width: 35%), caption: [Error: Credenziali errate])

Quando l'utente non ha ancora completato la verifica dell'account, viene visualizzato un messaggio di errore, in basso a destra, con la dicitura _"user account not confirmed"_, come illustrato in figura. #figure(image("../../assets/img/manualeutente/error401-2.png", width: 35%), caption: [Error: User non verificato])


L'errore "Too many requests" si verifica quando vengono effettuate troppe richieste di login in un breve intervallo di tempo. In questo caso, il sistema blocca temporaneamente ulteriori tentativi e mostra un messaggio di errore che invita l'utente ad attendere prima di riprovare.

L'errore generico si verifica quando si presenta un errore diverso da quelli precedentemente trattati. In questo caso, il sistema mostra un messaggio di errore generico che indica un problema interno del server.
#figure(image("../../assets/img/manualeutente/error500.png", width: 35%), caption: [Errore generico])







== Registrazione
<registrazione>
La pagina di registrazione consente all'utente di creare un nuovo account per accedere al servizio.
Per completare la registrazione, è necessario inserire un indirizzo email valido, una password e confermare la password negli appositi campi, come mostrato in figura.
#figure(image("../../assets/img/manualeutente/register.png", width: 35%), caption: [Schermata di registrazione])

La password deve contenere almeno 8 caratteri. Se la password inserita non rispetta questo requisito, il sistema mostrerà un messaggio di errore, come illustrato in figura.
#figure(
  image("../../assets/img/manualeutente/error_password_8char.png", width: 35%),
  caption: [Error: lunghezza minima password non rispettata],
)

Se la password e la conferma della password non coincidono, il sistema mostrerà un messaggio di errore, come mostrato in figura.
#figure(image("../../assets/img/manualeutente/error_password_match.png", width: 35%), caption: [Error: le password non coincidono])

Per verificare l'account, seguire le istruzioni definite nella #link(<confirm>)[sezione 3.3].

=== Errori
L'errore "User already exists" si verifica quando l'utente tenta di registrarsi con un'email già in uso. In questo caso, viene visualizzato un messaggio di errore, in basso a destra, con la dicitura _"user already exists"_, come mostrato in figura.
#figure(image("../../assets/img/manualeutente/error409.png", width: 35%), caption: [Error: Email già in uso])

L'errore generico si verifica quando si presenta un problema diverso da quelli precedenti. In questo caso, il sistema mostra un messaggio di errore generico che indica un problema interno del server.

#figure(image("../../assets/img/manualeutente/error500reg.png", width: 35%), caption: [Errore generico])





== Verifica account
<confirm>
L'utente riceverà un codice di verifica all'indirizzo email fornito nella fase di registrazione (vedi #link(<registrazione>)[sezione 3.2]).
L'utente dovrà inserire email e codice di verifica negli appositi campi, come mostrato in figura. Se la verifica viene effettutata subito dopo la registrazione, il campo relativo all'email verrà precompilato dal sistema.
#figure(image("../../assets/img/manualeutente/confirm_account.png", width: 40%), caption: [Schermata di verifica account])

Dopo la verifica dell'account, il sistema reindirizza automaticamente l'utente alla pagina _dashboard_ iniziale, che risulterà vuota in quanto non sono ancora presenti _workflow_ associati all'account appena creato (vedi figura).

#figure(image("../../assets/img/manualeutente/dashboard_empty.png", width: 80%), caption: [Dashboard vuota])

Nella #link(<dashboard>)[sez. 3.4] è possibile trovare le istruzioni da eseguire per sfruttare le varie funzionalità.


=== Errori
Se il codice di verifica inserito non è corretto, il sistema mostrerà un messaggio di errore in basso a destra, con la dicitura _"code not valid"_, come illustrato in figura. #figure(image("../../assets/img/manualeutente/error_confirmationcode.png", width: 35%), caption: [Error: codice di verifica errato])

Se il codice di verifica è scaduto, il sistema mostrerà un messaggio di errore in basso a destra, con la dicitura _"code expired"_, come mostrato in figura. #figure(image("../../assets/img/manualeutente/error404expired.png", width: 35%), caption: [Error: codice di verifica scaduto])

Se il sistema non è riuscito a trovare l'utente associato all'email inserita, verrà visualizzato un messaggio di errore in basso a destra, con la dicitura _"user not found"_, come mostrato in figura. #figure(image("../../assets/img/manualeutente/error404email.png", width: 35%), caption: [Error: email non trovata])

L'errore generico si verifica quando si presenta un problema diverso da quelli precedentemente trattati.



== Dashboard
<dashboard>
Dopo aver effettuato l'accesso attraverso la pagina di _login_, l'utente viene indirizzato alla pagina della _dashboard_ dell'applicativo.

#figure(image("../../assets/img/manualeutente/dashboard.png", width: 80%), caption: [Dashboard])

Da questa pagina è possibile effettuare le azione base dell'applicativo come creare nuovi _workflow_, eseguire un _workflow_, visualizzare i dettagli del _workflow_ oppure effettuare il logout, tramite i comandi disponibili nell'interfaccia.

=== Creazione nuovo _workflow_

#h(1em)
#figure(image("../../assets/img/manualeutente/navbar_dashboard.png"), caption: [Navbar dashboard])

Per creare un nuovo _workflow_ è sufficiente selezionare l'apposito pulsante _*Create a Workflow*_, situato in alto a destra, come mostrato in figura.

#figure(image("../../assets/img/manualeutente/workflow_create.png", width: 45%), caption: [Nome nuovo _workflow_])

A questo punto viene visualizzato un popup che permette all'utente di inserire il nome desiderato per il nuovo _workflow_.
Dopo aver inserito il nome, è sufficiente premere il pulsante _*Create*_ per creare un _workflow_ vuoto.

==== Errori
<errori-nome>

Se l'utente tenta di creare un _workflow_ senza inserire un nome, il sistema mostrerà un messaggio di errore in basso a destra, con la dicitura _"workflow name is required"_, come mostrato in figura.

#figure(image("../../assets/img/manualeutente/emptyname.png", width: 35%), caption: [Error: nome mancante])

Se l'utente tenta di creare un _workflow_ con un nome che supera i 25 caratteri, il sistema mostrerà un messaggio di errore in basso a destra, con la dicitura _"workflow name must be less than 25 characters"_, come mostrato in figura.

#figure(image("../../assets/img/manualeutente/nametoolong.png", width: 35%), caption: [Error: nome troppo lungo])

L'errore generico si verifica quando si presenta un problema diverso da quelli precedentemente trattati. In questo caso, il sistema mostra un messaggio di errore generico che indica un problema interno del server.







=== Eseguire un _workflow_ dalla pagina Dashboard
Per avviare un _workflow_, l'utente deve selezionare l'icona _play_ situata accanto al nome del _workflow_ che si desidera eseguire.
Una volta premuto il pulsante, il sistema provvederà ad avviare l'esecuzione del _workflow_ scelto.

==== Errori
Se l'utente tenta di eseguire un _workflow_ che non esiste più (ad esempio, è stato eliminato), il sistema mostrerà un messaggio di errore in basso a destra, con la dicitura _"workflow not found"_, come illustrato in figura.

#figure(image("../../assets/img/manualeutente/workflownotfound.png", width: 40%), caption: [Error: Workflow non trovato])




=== Visualizzazione dettagli _workflow_
Per visualizzare i dettagli di un _workflow_ è sufficiente selezionare il nome del _workflow_ desiderato.
L'utente verrà quindi reindirizzato automaticamente alla pagina dedicata alla visualizzazione e alla modifica del _workflow_.




== Modifica flusso

Per modificare un _workflow_, l'utente deve selezionare dalla _dashboard_ il flusso desiderato; verrà quindi reindirizzato alla pagina di dettaglio, come illustrato nella figura seguente.


#figure(image("../../assets/img/manualeutente/grid.png", width: 80%), caption: [Visualizzazione dettagliata del _workflow_])

L'utente può visualizzare la struttura completa del _workflow_, con tutti i blocchi e le relazioni tra essi. L'utente può interagire direttamente con i blocchi per modificarli, aggiungerne di nuovi, rimuoverli o modificarne le relazioni.


#h(1em)
#figure(image("../../assets/img/manualeutente/navbar_workflow.png"), caption: [Barra di navigazione della pagina _workflow_])
#h(1em)

L'utente potrà modificare il _workflow_ adoperando uno dei due metodi possibili accessibili con i due bottoni presenti a destra nella _navbar_, come mostrato in figura.

=== Modifica tramite _AI Workflow Builder_
Per modificare il _workflow_ tramite _AI Workflow Builder_, l'utente deve premere il primo bottone evidenziato nella barra di navigazione, come mostrato in figura.
#figure(image("../../assets/img/manualeutente/workflow_page_aibuilder.png", width: 80%), caption: [Button: AI Workflow Builder])

Si aprirà quindi un modale dedicato, nel quale l'utente può descrivere in linguaggio naturale il comportamento del _workflow_ desiderato, come mostrato nella figura seguente.

#figure(image("../../assets/img/manualeutente/ai_workflowbuilder.png", width: 50%), caption: [Modale _AI Builder_])

==== Errori

Nel caso l'utente non inserisca nulla nel prompt, il sistema mostrerà un messaggio di errore in basso a destra, con la dicitura _"prompt is required"_, come mostrato in figura. #figure(image("../../assets/img/manualeutente/error_promptrequired.png", width: 35%), caption: [Error: prompt mancante])

Nel caso si verifichi un errore diverso da quelli precedentemente descritti, il sistema mostrerà un messaggio di errore generico.





=== Aggiunta di blocchi tramite _Add a Block_

Per aggiungere manualmente un blocco al _workflow_, l'utente deve selezionare il pulsante _*Add a Block*_ evidenziato nella barra di navigazione, come mostrato in figura.
#figure(
  image("../../assets/img/manualeutente/workflow_page_addablock.png", width: 80%),
  caption: [Button: Add a Block],
)

Successivamente verrà visualizzato un menù laterale che consente all'utente di cercare e scegliere il blocco desiderato, come mostrato in figura. Per aggiungere un blocco al _workflow_, è sufficiente premerlo.

Tale blocco appena aggiunto potrà essere collegato a quelli giá esistenti attraverso i due punti di collegamento posti a destra e a sinistra del blocco nuovo.
#figure(image("../../assets/img/manualeutente/block_list.png", width: 50%), caption: [Menù laterale per aggiunta di blocchi])




=== Rimozione di un blocco
Per rimuovere un blocco dal _workflow_, l'utente deve selezionare l'icona delle _impostazioni_ del blocco che desidera eliminare. Successivamente, nel menù che si apre, è sufficiente premere il bottone rosso _*Remove Block*_, come illustrato in figura.

Alternativamente, è possibile premere il tasto "backspace" della tastiera quando si ha un blocco selezionato in modalità "drag & drop".
#figure(image("../../assets/img/manualeutente/remove_block.png", width: 45%), caption: [Button: Remove Block])

Fa eccezione il blocco _AI: Summarize_, i cui dettagli sono forniti nella #link("<ai-summarize>")[sez. 3.7.3].



== Funzionalità del Menu _workflow_
Dopo la creazione o la modifica di un flusso, l'utente può accedere a diverse funzionalità relative al _workflow_ tramite il modale che si aprirà quando si preme il bottone indicato in figura o il tasto destro del mouse in uno spazio vuoto del _workflow_.

#figure(image("../../assets/img/manualeutente/workflowmenu.png", width: 80%), caption: [Button: _workflow_ Menu])

Di seguito vengono elencate le operazioni possibili.
È possibile cercare tra le opzioni iniziano a digitare nella relativa casella di ricerca. Tali opzioni possono essere navigate utilizzando i tasti "freccia giù/sù" della tastiera e selezionate premendo il tasto "invio".

=== Salvataggio di un flusso <save>

#figure(image("../../assets/img/manualeutente/workflow_menu_save.png", width: 50%), caption: [Salvataggio di un _workflow_])
Per salvare il _workflow_ dopo la sua creazione o modifica, è sufficiente premere il bottone _Save_ evidenziato in figura.\


=== Esecuzione di un flusso
#figure(image("../../assets/img/manualeutente/workflow_menu_run.png", width: 50%), caption: [Esecuzione di un _workflow_])

Per eseguire un _workflow_, l'utente deve selezionare l'icona _Run_ come evidenziato in figura.

In assenza di errori, il sistema avvierà l'esecuzione del _workflow_ e mostrerà una notifica di avvio con successo in basso a destra, come mostrato in figura.

#figure(image("../../assets/img/manualeutente/successful_workflow.png", width: 50%), caption: [Notifica di avvio con successo])



=== Eliminazione di un _workflow_
#figure(image("../../assets/img/manualeutente/workflow_menu_delete.png", width: 50%), caption: [Eliminazione di un _workflow_])
Per eliminare un _workflow_, l'utente deve selezionare il pulsante _Delete Workflow_ dal menù, come indicato in figura.

A questo punto, il sistema mostrerà un popup di conferma; per completare l'eliminazione è necessario premere il pulsante rosso _*Delete Workflow*_, visibile nella figura di seguito.
#figure(image("../../assets/img/manualeutente/delete_workflow.png", width: 50%), caption: [Popup di conferma eliminazione di un _workflow_])

Dopo la conferma, il _workflow_ verrà rimosso definitivamente dal sistema e l'utente sarà automaticamente reindirizzato alla dashboard, dove non sarà più visibile tra i flussi disponibili.



=== Rinominazione di un _workflow_

Nel caso l'utente desideri cambiare il nome del flusso deve selezionare _Edit Workflow Name_, come evidenziato in figura.
#figure(image("../../assets/img/manualeutente/workflow_menu_edit.png", width: 50%), caption: [Rinominazione di un _workflow_])

Si aprirà un modale che consente all'utente di inserire il nuovo nome desiderato per il _workflow_, come mostrato nella figura di seguito.
Il nome del _workflow_ verrà aggiornato localmente e sarà immediatamente visibile nella schermata di dettaglio. Per confermare la modifica, l'utente dovrà premere il pulsante _Save_ come indicato nella #link(<save>)[sez. 3.6.1]
#figure(image("../../assets/img/manualeutente/workflow_rename.png", width: 50%), caption: [Rinominazione di un _workflow_])

È possibile che si verifichino errori analoghi a quelli già descritti nella #link(<errori-nome>)[sez. 3.4.1.1], se l'utente tenta di rinominare il _workflow_ con un nome non valido.




=== Back to Dashboard

L'utente potrà ritornare alla dashboard selezionando il bottone evidenziato in figura.

#figure(image("../../assets/img/manualeutente/workflow_menu_back.png", width: 50%), caption: [Ritorno alla dashboard])





== Impostazioni dei singoli blocchi
Di seguito verranno descritte le impostazioni disponibili dei vari blocchi, a cui è possibile accedere selezionando l'icona delle _impostazioni_ del blocco desiderato, come evidenziato nella figura seguente.
#figure(image("../../assets/img/manualeutente/impostazioni.png", width: 40%), caption: [Icona impostazioni])

=== System: Wait Seconds
Il blocco _System: Wait Seconds_ consente di inserire una pausa nell'esecuzione del _workflow_ per un numero specifico di secondi.
L'utente può configurare il numero di secondi di attesa tramite il menù delle impostazioni del blocco, come mostrato in figura.
#figure(image("../../assets/img/manualeutente/remove_block.png", width: 35%), caption: [Blocco _System: Wait Seconds_])


=== Telegram: Send Bot Message
Il blocco _Telegram: Send Bot Message_ permette di inviare un messaggio tramite un bot di Telegram.
L'utente deve configurare il blocco inserendo negli appositi campi il token del bot, l'ID della chat a cui inviare il messaggio e il messaggio da inviare, come mostrato in figura.

È possibile utilizzare l'output del blocco precedente come messaggio da inviare, cliccando nell'apposito tasto o inserendo `{{LASTOUTPUT}}` nel campo del messaggio da inviare.
#figure(image("../../assets/img/manualeutente/telegram_block.png", width: 35%), caption: [Blocco _Telegram: Send Bot Message_])


=== Notion: Get Page
Il blocco _Notion: Get Page_ consente di recuperare i contenuti di una pagina di Notion.
L'utente deve configurare il blocco inserendo negli appositi campi il token di integrazione con Notion e l'ID della pagina desiderata.
#figure(image("../../assets/img/manualeutente/notion_block.png", width: 35%), caption: [Blocco _Notion: Get Page_])

=== AI: Summarize
<ai-summarize>
Il blocco _AI: Summarize_ consente di generare un riassunto del contenuto fornito.
Dato che si tratta di un blocco che riassume le informazioni ottenute dal blocco precedente non ci sono campi che l'utente deve compilare, motivo per cui non sono presenti impostazioni aggiuntive.\
Al posto dell'icona delle impostazioni, il blocco presenta un'icona di un cestino che, se selezionata, permette di rimuovere il blocco dal _workflow_, come mostrato in figura.
#figure(image("../../assets/img/manualeutente/ai_summarize_block.png", width: 40%), caption: [Blocco _AI: Summarize_])



== Logout

#h(1em)
#figure(image("../../assets/img/manualeutente/navbar_dashboard.png"), caption: [Navbar dashboard])

Per effettuare il logout, l'utente deve selezionare il pulsante rosso _*Logout*_, situato nell'interfaccia in alto a destra, all'interno della _navbar_ della dashboard, visibile in figura.
Il sistema terminerà la sessione in corso, l'utente verrà disconnesso e reindirizzato alla pagina di _login_.

== Tema chiaro e scuro

L'utente può scegliere tra due temi per l'interfaccia dell'applicativo: il tema chiaro e il tema scuro.

Nella _navbar_ della dashboard o della modifica di un _workflow_, l'utente può selezionare l'icona della _luna_ per attivare il tema scuro o l'icona del _sole_ per tornare al tema chiaro, come mostrato in figura.

#grid(
  columns: (1fr, 1fr),
  gutter: 5mm,
  figure(
    image("../../assets/img/manualeutente/temachiaro.png", width: 100%),
    caption: [
      Dashboard in modalità chiara
    ],
  ),
  figure(
    image("../../assets/img/manualeutente/temascuro.png", width: 100%),
    caption: [
      Dashboard in modalità scura
    ],
  ),
)

Nelle pagine di _login_, registrazione e conferma dell'account, tale impostazione è disponibile in alto a destra sottoforma di un tasto circolare.

#figure(image("../../assets/img/manualeutente/themetogglerlogin.png", width: 12%), caption: [
  Tasto per il cambio tema nelle pagine di _login_, registrazione e conferma dell'account
])
