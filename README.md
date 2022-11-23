# Cohesion2NETFramework
Applicazione di test che comprende il file CohesionSSO.cs per la gestione delle integrazioni Cohesion


## per eseguire l'applicazione
Clonare l'applicazione ed eseguirla tramite Visual Studio o altro IDE .NET

## per integrare Cohesion 
Per integrare l’autenticazione in Cohesion nel proprio sito è sufficiente aggiungere la classe C# CohesionSSO.cs al proprio progetto .NET e richiamare i metodi ValidateFE e LogoutFE rispettivamente nel codice della pagina che gestisce la form authentication e della pagina di logout. I metodi vanno richiamati dopo aver inizializzato la classe mediante i costruttori disponibili. Di seguito un esempio di codice da inserire nella pagina di form authentication:

```C#
CohesionSSO cohesionSSO = new CohesionSSO(Request, Response, Session);
cohesionSSO.ValidateFE();
```
 
Una volta autenticati il token di autenticazione verrà automaticamente salvato nella variabile di sessione `TOKEN`.

Per i dettagli, fare riferimento al codice dell'applicazione di test disponibile in questa repo e alla documentazione ufficiale disponibile nel [sito informativo di Cohesion](https://cohesion.regione.marche.it/cohesioninformativo/Come-integrare-Cohesion/Integrazione-classe-C)
