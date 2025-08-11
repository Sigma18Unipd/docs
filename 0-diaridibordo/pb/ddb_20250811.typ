#import "../../templates/templateRelazione.typ": *

#show: content => verbale(
  titoloDocumento: "Relazione avanzamento 2025/08/11",
  componenti: (
    "Alessandro Bernardello",
    "Mirco Borella",
    "Pietro Crotti",
    "Marco Egidi",
    "Matteo Marangon",
    "Aleena Mathew",
    "Carmelo Russello",
  ),
  gruppo: "Sigma18",
  destinatari: "Prof. Tullio Vardanega",
  content: content,
)

Egregio Prof. Tullio Vardanega,\

la seguente relazione riassume lo stato di avanzamento dei capitolato del gruppo Sigma18 per il periodo fino all'11 agosto 2025.

== 1. Progressi raggiunti
In seguito al feedback positivo ricevuto dal Prof. Vardanega, il gruppo ha effettuato una riunione interna di fine sprint al fine di programmare le attività successive a lungo termine e pertanto avere una visione più completa degli obiettivi a lungo termine per la fase di PB. È stata concordata una programmazione oraria anticipata per gli sprint rimanenti, in modo tale da migliorare l'efficienza tra ore produttive e ore di orologio per lo sviluppo e accelerare la codifica dell'MVP.
In merito a questo, in seguito alla riunione, il gruppo ha iniziato lo sviluppo adottando diversi miglioramenti per quanto concerne le principali carenze evidenziate nei due incontri di revisione RTB.
In particolare, lo sviluppo iniziale svolto finora ha compreso le seguenti implementazioni:
- inizio dello studio dell'architettura;
- configurazione del servizio _AWS Cognito_ con _user pools_ e _policy_ di accesso;
- conversione del sistema di _login_ da _DataBase_ locale a _AWS Cognito_;
- ristrutturazione e sviluppo di autenticazione con _JWT (JSON Web Token)_;
- aggiunta la verifica _OTP (One Time Password)_ via _e-mail_ per la registrazione.

== 2. Obiettivi e attività programmate
Il gruppo Sigma18 ha programmato le seguenti attività per il periodo successivo:
- aggiornamento del glossario e della documentazione del progetto;
- proseguimento dello studio dell'architettura per il miglioramento continuo;
- integrazione di un database centralizzato per la gestione persistente dei dati utente;
- organizzazione di un'altra riunione interna per mantenere l'efficienza nello sviluppo e la coesione nel gruppo.

== 3. Analisi delle criticità e decisioni pendenti
Sono state riscontrate alcune problematiche riguardanti lo sviluppo dell'MVP, in particolare:
- l'integrazione di una nuova tecnologia (_AWS Cognito_) nell' MVP, che non era presente nel _PoC_, ha richiesto tempo aggiuntivo per lo studio e l'implementazione;
- la verifica _OTP_ via _e-mail_ ha richiesto del tempo aggiuntivo in quanto è stata la prima implementazione di questo tipo per il gruppo.
Il gruppo procede con lo sviluppo dell'MVP con l'obbiettivo di rispettare i tempi e preventivi stimati.

#v(15pt)
#align(right, text(weight: "bold", "Il gruppo Sigma18"))
