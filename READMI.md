
<h1 align="centro">
  <br>
  <a href="https://ryujinx.org/"><img src="https://i.imgur.com/WcCj6Rt.png" alt="Ryujinx" width="150"></a>
  <br>
  <b>HELLO WORD</b>
  <br>
  <sub><sup><b>(Writing Hello world in multiple languages)</b></sup></sub>
  <br>
</h1>

<p align="centro">
       Ryujinx è un emulatore Nintendo Switch open source, creato da gdkchan, scritto in C#.
       Questo emulatore mira a fornire precisione e prestazioni eccellenti, un'interfaccia intuitiva e build coerenti.
    È stato scritto da zero e lo sviluppo del progetto è iniziato a settembre 2017. Ryujinx è disponibile su Github sotto <a href="https://github.com/Ryujinx/Ryujinx/blob/master/LICENSE.txt" target=" _blank">Licenza MIT</a>. <br />

</p>
<p align="centro">
    <a href="https://github.com/Ryujinx/Ryujinx/actions/workflows/release.yml">
        <img src="https://github.com/Ryujinx/Ryujinx/actions/workflows/release.yml/badge.svg"
            alt="">
    </a>
    <a href="https://discord.com/invite/VkQYXAZ">
        <img src="https://img.shields.io/discord/410208534861447168?color=5865F2&label=Ryujinx&logo=discord&logoColor=white"
            alt="Discord">
    </a>
    <br>
    <br>
    <img src="https://raw.githubusercontent.com/Ryujinx/Ryujinx-Website/master/public/assets/images/shell.png">
</p>

<h5 align="centro">

</h5>

##  Compatibilità

Ad ottobre 2022, Ryujinx è stato testato su circa 3.700 titoli; oltre 3.500 avviano i menu passati e nel gameplay, di cui circa 3.000 considerati giocabili.
Puoi controllare l'elenco di compatibilità [ qui ](https://github.com/Ryujinx/Ryujinx-Games-List/issues). Chiunque è libero di inviare un nuovo test di gioco o aggiornare una voce di test di gioco esistente; segui semplicemente il nuovo modello di problema e le linee guida per i test, oppure pubblica un post come risposta al problema di gioco applicabile. Usa la funzione di ricerca per vedere se un gioco è già stato testato!

##  Utilizzo

Per eseguire questo emulatore, il tuo PC deve essere dotato di almeno 8 GB di RAM; il mancato rispetto di questo requisito può comportare un'esperienza di gioco scadente o arresti anomali imprevisti.

Consulta la nostra [ Guida all'installazione e alla configurazione ](https://github.com/Ryujinx/Ryujinx/wiki/Ryujinx-Setup-&-Configuration-Guide) su come configurare l'emulatore.

Per le nostre build wireless e LAN locali, consulta la nostra [Multiplayer: Local Play/Local Wireless Guide
](https://github.com/Ryujinx/Ryujinx/wiki/Multiplayer-(LDN-Local-Wireless)-Guide).

##  Ultima build

Queste build vengono compilate automaticamente per ogni commit sul ramo master. Sebbene ci sforziamo di garantire stabilità e prestazioni ottimali prima di inviare un aggiornamento, le nostre build automatizzate **potrebbero essere instabili o completamente danneggiate.**

Se vuoi vedere i dettagli sugli aggiornamenti dell'emulatore, puoi visitare il nostro [ Changelog ](https://github.com/Ryujinx/Ryujinx/wiki/Changelog).

L'ultima build automatica per Windows, macOS e Linux è disponibile sul [ Sito Web ufficiale ](https://ryujinx.org/download).


##  Edificio

Se desideri creare tu stesso l'emulatore, procedi nel seguente modo:

###  Passaggio 1
Installa la versione X64 di [ .NET 6.0 (o versioni successive) SDK ](https://dotnet.microsoft.com/download/dotnet/6.0).

###  Passaggio 2
Usa `git clone https://github.com/Ryujinx/Ryujinx` sulla riga di comando per clonare il repository o usa il pulsante Codice --> Scarica zip per ottenere i file.

###  Passaggio 3

Per compilare Ryujinx, apri un prompt dei comandi all'interno della directory del progetto. Puoi accedervi rapidamente su Windows tenendo premuto Maiusc in Esplora file, quindi facendo clic con il pulsante destro del mouse e selezionando "Apri finestra di comando qui" . Quindi digita il seguente comando:
`dotnet build -c Release -o build`
i file compilati si troveranno nella directory build appena creata.

I file di sistema di Ryujinx sono archiviati nella cartella `Ryujinx` . Questa cartella si trova nella cartella utente, a cui è possibile accedere facendo clic su "Apri cartella Ryujinx" nel menu File nella GUI.


##  Caratteristiche

 -  **Audio**

   L'uscita audio è completamente supportata, l'ingresso audio (microfono) non è supportato. Usiamo i wrapper C# per [ OpenAL ](https://openal-soft.org/) e [ SDL2 ](https://www.libsdl.org/) & [ libsoundio ](http://libsound.io/ ) come ripiego.

-  **CPU**

  L'emulatore CPU, ARMeilleure, emula una CPU ARMv8 e attualmente supporta la maggior parte delle istruzioni ARMv8 a 64 bit e alcune delle istruzioni ARMv7 (e precedenti), incluso il supporto parziale a 32 bit. Traduce il codice ARM in un IR personalizzato, esegue alcune ottimizzazioni e lo trasforma in codice x86.
  Sono disponibili tre opzioni di gestione della memoria a seconda delle preferenze dell'utente, sfruttando sia la modalità basata su software (più lenta) sia la modalità mappata su host (molto più veloce). L'opzione più veloce (host, deselezionata) è impostata per impostazione predefinita.
  Ryujinx dispone anche di una cache di traduzione persistente profilata, che essenzialmente memorizza nella cache le funzioni tradotte in modo che non debbano essere tradotte ogni volta che il gioco viene caricato. Il risultato netto è una significativa riduzione dei tempi di caricamento (la quantità di tempo tra l'avvio di un gioco e l'arrivo alla schermata del titolo) per quasi tutti i giochi. NOTA: questa funzione è abilitata per impostazione predefinita nel menu Opzioni > scheda Sistema. Devi avviare il gioco almeno due volte alla schermata del titolo o oltre prima che i miglioramenti delle prestazioni vengano sbloccati al terzo lancio! Questi miglioramenti sono permanenti e non richiedono ulteriori lanci in futuro.

-  **GPU**

  L'emulatore GPU emula la GPU Maxwell di Switch utilizzando le API OpenGL (versione 4.5 minima) o Vulkan tramite una build personalizzata rispettivamente di OpenTK o Silk.NET. Attualmente sono disponibili quattro miglioramenti grafici per l'utente finale in Ryujinx: Disk Shader Caching, Resolution Scaling, Aspect Ratio Adjustment e Anisotropic Filtering. Questi miglioramenti possono essere regolati o attivati ​​come desiderato nella GUI.

-  **Ingresso**

   Attualmente abbiamo supporto per tastiera, mouse, input touch, supporto per input JoyCon e quasi tutti i controller. I controlli di movimento sono supportati in modo nativo nella maggior parte dei casi; per il supporto del movimento dual-JoyCon, sono attualmente necessari DS4Windows o BetterJoy.
   In tutti gli scenari, puoi impostare tutto all'interno del menu di configurazione degli ingressi.

-  **DLC e modifiche**

   Ryujinx è in grado di gestire contenuti aggiuntivi/contenuti scaricabili tramite la GUI. Sono supportate anche le mod (romf, exef e mod di runtime come cheat); la GUI contiene un collegamento per aprire la rispettiva cartella delle mod per un particolare gioco.

-  **Configurazione**

   L'emulatore ha impostazioni per abilitare o disabilitare alcuni controller di registrazione, rimappatura e altro. Puoi configurarli tutti tramite l'interfaccia grafica o manualmente tramite il file di configurazione, `Config.json` , che si trova nella cartella utente a cui è possibile accedere facendo clic su `Apri cartella Ryujinx` nel menu File nella GUI.


##  Contatto

Se hai contributi, suggerimenti, hai bisogno di supporto per l'emulatore o vuoi semplicemente entrare in contatto con il team, unisciti al nostro [ server Discord ](https://discord.com/invite/Ryujinx). Puoi anche consultare le nostre [ FAQ ](https://github.com/Ryujinx/Ryujinx/wiki/Frequently-Asked-Questions).

##  Donazioni

Se desideri sostenere finanziariamente il progetto, Ryujinx ha una campagna Patreon attiva.

<a href="https://www.patreon.com/ryujinx">
    <img src="https://images.squarespace-cdn.com/content/v1/560c1d39e4b0b4fae0c9cf2a/1567548955044-WVD994WZP76EWF15T0L3/Patreon+Button.png?format=500w" width="150">
</a>

Tutti gli sviluppatori che lavorano al progetto lo fanno nel loro tempo libero, ma il progetto ha diverse spese:
* Console Nintendo Switch hackerabili per decodificare l'hardware
* Hardware per computer aggiuntivo a scopo di test (ad es. GPU per diagnosticare bug grafici, ecc.)
* Licenze per vari strumenti di sviluppo software (ad es. Jetbrains, IDA)
* Web hosting e manutenzione dell'infrastruttura (es. server LDN)

Tutti i fondi ricevuti tramite Patreon sono considerati una donazione a sostegno del progetto. I sostenitori ricevono l'accesso anticipato ai rapporti sullo stato di avanzamento e l'accesso esclusivo alle interviste agli sviluppatori.

##  Licenza

Questo software è concesso in licenza in base ai termini della <a href="https://github.com/Ryujinx/Ryujinx/blob/master/LICENSE.txt" target="_blank">licenza MIT.</a></i ><br />
Questo progetto fa uso del codice creato dal progetto libvpx, concesso in licenza sotto BSD e il progetto ffmpeg, concesso in licenza sotto LGPLv3.
Per maggiori dettagli , vedere [ LICENSE.txt ](LICENSE.txt) e [ THIRDPARTY.md ](distribution/legal/THIRDPARTY.md).
##  Crediti

- [ LibHac ](https://github.com/Thealexbarney/LibHac) viene utilizzato per il nostro file system.
- [ AmiiboAPI ](https://www.amiiboapi.com) viene utilizzato nella nostra emulazione Amiibo.