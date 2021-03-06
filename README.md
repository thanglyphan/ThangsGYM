**Oppgave definisjon RoR**

**Git-brukernavn: _thanglyphan_**

**_Hva skal applikasjonen gjøre?_**
> Det skal dekkes et treningssenters behov, der treningssenteret tilbyr coaching slik at kundene kan få en god start på veien til scenen.

**_Brukergrupper jeg forventer:_**

> -Aktive folk 

> -Nybegynnere innenfor trening 

> -Viderekommende innenfor trening 

> -Gutter og jenter i alle aldere

**_Features applikasjonen SKAL inneholde:_**

> -Det skal være mulig for en bruker å registrere seg 

> -Det skal være mulig for en bruker å endre passord 

> -Det skal være mulig for en bruker å glemme passord 

> -Det skal være mulig for en bruker å kjøpe treningsprogram u/coach 

> -Det skal være mulig for en bruker å kjøpe treningsprogram m/coach 

> -Det skal være mulig for en bruker å se profilen, hvilke coach som coacher 

> -Det skal være mulig for en bruker å sist kjøpte treningsprogram 

> -Det skal være mulig for en bruker å endre coach 

> -Det skal være mulig for en bruker å hente profilbilde/logge inn med facebook 

> -Det skal være mulig for en bruker å subscribe på siden 

> -Det skal være mulig for en bruker å få mail av meg(auto) 

> -Det skal være mulig for en bruker å velge skjønn og få riktig treningsprogram ut fra det 

> -Det skal IKKE være mulig for en bruker å se på profil osv. uten innlogging -Det skal IKKE være mulig for en bruker å se på admin siden 

> -Det skal IKKE være mulig for en bruker å "CRUD" items 

> -Det skal være mulig for en admin å gjøre alt en bruker kan gjøre

> -Det skal være mulig for en admin å søke opp brukere og endre opplysninger om den 

> -Det skal være mulig for en admin å "CRUD" items som er lagt inn i databasen 

> -Det skal være mulig for en admin å legge til ny coach/fjerne 

> -Det skal være mulig for en admin å gi bruker flere bytter av coach(max 3) 

> -Det skal være mulig for en admin å gjøre flere ting også

**_Høynivå skisse på applikasjonen som viser eksterne API'er._**

> -Sendgrid, braintree. Mer? (helt sikkert facebook) 

**_Høynivå skisse på skjermbilder som viser flyten av applikasjonen._**
> thangomango.herokuapp.com 

Jeg begynte litt fordi jeg følte jeg lå altfor langt bak. Dette er en side som er oppe og går. Jeg vil si at dette er en skisse, fordi den er ikke ferdig, tvert i mot. Jeg føler at det kommer ideer underveis, og listen min blir nok litt lengre enn det jeg har skrevet over!

Alt over er det jeg skrev før jeg begynte.

Hvordan gjøre ting:

1. Sett opp utviklingsmiljø(forutsetter at git er installert på datamaskinen)
  * Gå til en tom mappe
  * git clone https://github.com/Westerdals/PG4300-16-8-Thang
  * (NB! Jeg bruker dragonfly uploader, som da krever imagemagick. Må ha imagemagick innstallert på maskingen for at denne skal       fungere lokalt. 
    Kilder: http://puu.sh/p5zRv/216e1c14d1.png / http://stackoverflow.com/questions/6473853/ruby-on-rails-rmagick-on-windows-7 )
  * OPS! Dette prosjektet bruker MySQL, ikke default sqlite! Måtte derfor på heroku legge til en add-on "Clean DB" og innstallere den riktig for at dette skulle fungere. FULL CTRL!
 
2. Start prosjektet
  * NB! I dette prosjektet, må mySQL være innstallert fordi jeg bruker mysql, ikke sqllite/postgres!!!
  * Garanter at ruby er installert ruby -v
  * Garanter at rails er installert rails -v
  * Gå til mappen du clonet prosjektet med cmd
  * kjør: bundle install
  * kjør: rake db:create
  * kjør: rake db:migrate
  * NB: For å lage en adminbruker, registrer en bruker med email "lyern52@gmail.com", deretter kjør: rake db:seed
        Denne seeden inneholder også items og gruppetreninger. Pga. min gitignore fil, blir ikke email info som email-adr og passord tatt med. Dette er kritisk for programmet lokalt(heroku er ingen problem). Derfor, har jeg hardkodet inn tester-eposten min og passordet til den under ROOT-> config -> environments -> development.rb. Her skal egentlig parameterene for gmail info stå, men siden application.yml er satt til gitignore av meg(gjorde dette bare for å teste om det funket) så blir ikke disse tatt med, derfor må jeg skrive passord og email rett inn her for at email tjenesten skal fungere lokalt. Du kan skrive din email her hvis du vil det, da må du gå inn her https://www.google.com/settings/security/lesssecureapps og skru på tilgang til mindre sikkre apper.
  * kjør: rails s
  * Gjør disse stegene etter hverandre
 
3. Kjøre tester
  * Gå til mappen ved bruk av cmd
  * kjør: rake test test/models/user_test.rb (for testing av modeller)
  * kjør: rake cucumber (for testing av brukerhistorier)
 
4. Beskrivelse av oppgave og andre ord
  Jeg har fulgt opp det jeg har skrevet over, det som var planen fra begynnelsen. Gi medlemmer av Thangs GYM en nettside der de kan administrere diverse ting. Det er MYE som er blitt lagt til, men ikke nevnt i begynnelsen, men alt av punkter jeg skrev i starten er blitt tatt med. Trolig nok, rakk jeg alt av de funksjonene jeg ville ha med, og jeg er mer enn fornøyd. Jeg syns at jeg har lært veldig mye, og har vært effektiv med den tiden jeg har hatt. 

  Jeg har fokusert mye på funksjonalitet på siden, og rettet alle bugs jeg overser. Tiden har blitt mer brukt til dette, og har ikke fokusert veldig mye på testing. Jeg har prøvd meg på cucumber og har fått generert features, men disse er kun av Gherkin syntax og innebærer ingen funksjonalitet for testing, kun tekst. Da jeg kom på at jeg manglet testing biten, var tiden for kort til å fullføre mtp. innlevering og eksamen i andre fag. Jeg prioriterte dette faget høyest i en periode, men ettersom leveringsfristen for denne oppgaven er rett rundt hjørne fra skrivende stund, har jeg valgt å legge dette til side å heller fokusere litt mer på de to siste fagene. Jeg har hvertfall fått brukerhistorer til alle mine funksjoner(hvertfall de fleste, dersom det ikke er, har jeg glemt det for jeg skulle skrive brukerhistore for ALLE mine funksjoner). Og litt på testing av model, men dette er minimum av det jeg kan få til. Jeg vet at dersom jeg hadde hatt et par dager ekstra ville disse testene for ALLE mine modeller vært ferdig. Alt i alt, jeg føler at denne prosessen for mitt arbeid er bra. Jeg har jobbet nøye og bra med hele løsningen og har kvalitetsjekket alle funksjoner flere ganger. Det eneste jeg ikke fikk tid til var å teste løsningen/modeller, ellers fikk jeg tid til alt jeg ønsket :)
  
5. Brukte API'er
  - Facebook(for enklere "logg inn")
  - Instagram(for kun bilder)
  - SMTP gmail(for email sending lokalt)
  - Sendgrid(for email sending produksjon/heroku)
  - Braintree(paypal service for betaling)
  
  https://thangomango.herokuapp.com/ 
  Admin brukernavn; thang, passord; 123123
  
