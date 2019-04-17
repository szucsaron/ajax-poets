/*
    Database initialization script that runs on every web-application redeployment.
*/
DROP TABLE IF EXISTS works;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name TEXT UNIQUE NOT NULL,
    full_name TEXT UNIQUE NOT NULL,
    password TEXT NOT NULL,
	CONSTRAINT email_not_empty CHECK (name <> ''),
	CONSTRAINT password_not_empty CHECK (password <> '')
);

CREATE TABLE works (
    id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users(id),
    title TEXT,
    content TEXT
);



INSERT INTO users (name, full_name, password) VALUES
	('kalman', 'Kálmán András', '1234'), -- 1
	('jeno', 'Jenő Gábor', '1234'), -- 2
	('czesy', 'Czési Irén', '1234'), -- 3
	('kalimp', 'Kalimpfrászy Nyavaja', '1234'); -- 4


INSERT INTO works (user_id, title, content) VALUES
    (1, 'A borjú', 'Nem csak azért vagyok borjú, mert bégetek, nem, nem, nem, de te már annál kevésbé vagy borjasabb, mint én nem borjas, tehát mindenfajta
    megborjadzhatási szándék által vezérelve mondhatjuk úgy, egymás ilyesfajta metamorfózisai ki vannak egyenlítve, de attól még nem fognak falra mászni tőlünk.'),
    (1, 'Ültetési kényszer', 'El vagyok magammal. Kész.'),
    (2, 'Mint virág a kertváros puttonyában', 'Mint virág a kertváros puttonyában vagyok én, ó, egy darab polip. Csak mert lábam nyolc, fejem még egy se.'),
    (2, 'Poén', 'Két mizozófus megy a sivatagban.
- Te, nem kéne, hogy bazalt legyen? - kérdi az egyik.
- Szerintem nézd meg a forgatónyomatékot.

MEGNÉZTE

Egyszer csak megérkeztek egy hatalmas nyelvhez, melyből burjánzó csaláncsillók ágaskodtak a fehéren izzó nap koronája felé. Az egész akkora volt, mint egy ház. Erre az első mizozófus megszólalt:
- Öregbítsd hírnevünk valamivel!
A társa lehajolt, és megnyalta a mamutméretű, kocsányos organizmus kinövéseit.

FÁJT NEKI

Pár nap múlva megérkeztek a hegyhez. A vakmerőbbik mizozófus nyelve akkorára dagadt, mint egy tétel csirkefarhát, és nem tudott beszélni.
- Mmmmmmmmmmm éééàéééklk! - értekezett a radiátorokról, retorikailag megfontolt artikulációval.
Felmásztak a hegyre. Semmi értelme jellemezni a hegyet, mert gagyi, de azért elfáradtak. Akkora préslég hagyta el apránként a tüdejüket, hogy a kopasz magasság csaknem megfullasztotta őket.
Dél volt, de már a csillagokat látták.
Oly fullasztó volt az, ami viszont nem volt, vagyis a kevegő, hogy belecsipkésedett a légzetes szerveik mindenfajta állománya.

Dél volt, de már a csillagokat látták.

Úgy fájt mindenük, hogy ha a fájdalom hiánya sóletkonzerv lenne, az ő érzéseik inkább összkomfortos ikerházhoz lennének hasonlatosak.

Dél volt, de már a csillagokat látták.

Másztak, és amúgy rájöttek, hogy nem kell megfulladniuk, mert tudniillik azért lehet emberként nekünk lélegezni, mert olyan közegben vagyunk, amely könnyen tud ki-beslisszolni az orrunkon át egészen a bel-tartalmunk terebélyes szivacs-konglomerátumáig. Ezt mi sem bizonyítja jobban, mint a tény, hogy szilárd dolgokat, mint amilyen a tégla, nem tudunk beszívni, és a folyékony dolgokkal is vannak bizonyos problémáink, mert bár beszívhatjuk őket, de egyrészt inkább folynak, mint szívódnak, másrészt nem viszi a tüdőnk ezeknek élhetőségét, s látjuk, hogy egy ezeknél sokkal ritkásabb dolog, a levegő, mely belélegezhető. Egyértelműen felállítható az összefüggés: minél ritkább a közeg, amiben vagyunk, annál jobban belélegezhetjük, és a légüres tér valósítja meg a lélegezhetőség maximális fokait.
Akkor mi a baj a hegyen?
Mi? Mi?
Hát, kérem az, hogy a hegy, minthogy nagyon magas, akkorává teszi a megtapasztalható távolságokat, hogy elfárad a fény ezeknek megtételében, és amíg visszaveri magát a horizont legtávolabbi, magashegy-termelte görbületeiről, szinte már belekeseredik a sorsának kilátástalanságába, hogy ilyen hosszú repülésében minden bizonnyal senki nem hajlandó felszedni őt a retinájába, és ott végzi a kozmosz rideg linóleumán egyedül, borzas ideglelésében vörösre főve. Na most, amennyiben egy élőlény mégis elkapja a fényt a lüktető, leskelődő vizenyő-gömböceivel, melynek látóidegeit teljes letargiájával végigsuvickolja, az bizonyos könnyen érezhető, a fulladáshoz hasonlatos pszichoszomatikus tünetegyüttest gerjeszt.
Más szóval, a fulladást a légritka térrel összepárosítani tipikus logikai hiba, mely nem létező ok-okozati kapcsolatot erőltet a véletlen korrelációra, és kérem, ezek a mizozófusok olyan okosak voltak, hogy erre egyszerre jöttek rá, és egyszerre csukták be a szemüket, hogy ne mérgezzék azokat eme negatív ingercsokorral, és vakon másztak tovább, és minő meglepetés, az elméletük teljességgel igaznak bizonyult, és majdnem jó volt nekik!
Hát kéretik megkérdeni, miért voltak ugyanolyan rosszul ezután is? Miért szomjazták a légzést?
Nem tudták, nem, nem, nem, kérem, nem tudták a mizozófusok.
- Basszus - köhögte az egyik. Szájából vérgőzök cuppantak ki az égre.
- Eeeghfhhnfn? - gargalizált vissza a nyelvesebbik.
- Asszem mégsem néztem meg a forgatónyomatékot.
Tüdőrákosak voltak, azért.'),
(2, 'Nyál', 'Én szeretnék egy új, 5. évszakot. Lehetne a neve nyál. Nyál nem olyan, mint a többi évszak. Nyálon a kutyák a függönyön vonyítanak. Nyálon a lábtörlők megtelnek kéznyomokkal. Nyálon a nappalok és az éjszakák véletlenszerűen váltják egymást, a csapadék nem felülről esik lefelé, hanem lentről felfelé, nem vízből állna, hanem kecskékből, s ezek nem mekegnének, hanem csipognának, mint a verebek. Nyálon a gravitáció a horizontra merőleges irányú lenne, minden oldalirányban esne, csak a levegő nem. Az megmaradna a föld hűséges társának, mintha ilyenkor is lefelé húznák, így fulladástól ne tartson senki, az építészeti kihívásoktól viszont annál inkább. Nyálon az emberek a falon, nem pedig a padlón járnának, az állatok pedig a sziklák oldalán. Minden más vígan zuhanna és zuhanna, míg meg nem unná. A földből kibúvó kecskékre persze, a levegőhöz hasonlóan, nem hat az új gravitáció, azok az ég felé iramlanak, hiszen napkecskék ők, s a nap teje húzza őket a csillagok hernyózó országába. Így könnyen elképzelhető, hogy összeütközöl egy-egy kecskesővel, ha véletlenül elkezdenél zuholdalazni (ezek az új évszak remek szavai). Milyen lesz átélni a nyalat? Hogyan fogják megénekelni? Ez lesz a pusztulás, a teremtés, a lehetetlennel való számvetés és az öntudattal bíró bibircsókok szerelmének évszaka, így szimbolikai jelentősége felbecsülhetetlen lesz, ezzel is gazdagítva művészetünket, szokásainkat és kulturánkat. Ahogy tavasszal vagy télen, nyálon a lelki állapotunk megváltozik. Érzéseink összetettebbek lesznek, sokkal nyitottabban viseltetünk majd az ortopéd sebészet iránt, elmélyültebben köpjük le az abroszt, a buszon ülve pedig a berzerkerek virágkötői tudását fogjuk csodálni. Készüljünk fel ezekre a késztetésekre, és ne hagyjuk otthon soha a nyakkendőnket! Hogy mikor van nyál? Nehéz megmondani. Nyál különleges évszak, mely mindig akkor jön el az évben, ha szükség van rá. Van, amikor tavasz előtt, van amikor tavasz után, az őszt követően, vagy éppen a telet a közepénél megszakítva. Természetesen egy negyedévvel meg kell, hogy hosszabbodjon az eddigi év, hogy rendesen beférjen a nyál. Sőt, van, hogy egy évben két nyál lesz, vagy épp három, négy, vagy öt. Sőt, legyen akkor az év teljesen ezé a gyönyörű, meghitt és varázslatos évszaké, mely mindannyiunk legmélyebb és legtitkosabb vágya! Legyen minden nap nyál!'),
(3, 'A kémeket agyonlövik, vagy felakasztják', 'A kém definíciója a következő: Olyan érzékszervekkel ellátott személy, ki önnön kötelékeiből kívül eső nemzet, család, vállalat, szervezet, szekta, törzs vagy olvasószakkör tulajdonában álló, kézzel nem fogható, elme által könnyedén sokszorosítható ingóságok megcsapolására szakosodott, hogy mindezeket egy vagy több önnön kötelékébe tartozó nemzet, család, vállalat, szervezet, szekta, törzs vagy olvasószakkör képletes vérkeringésébe fecskendezze, azokat stratégiai vagy politikai előnyhöz juttatva. A kémek jellegzetes ismertetőjegyeihez tartozik a klasszikus műveltség, a magas vérnyomás, egy fajta "harmadik szem", mely a tarkójukon található, s kiszúr mindenfajta hátul elkövetett turpisságot, a nem használt helyiségekhez, légaknákhoz és csatornákhoz való (megfelelő szaggal járó) mániákus vonzódás, melynek minden bizonnyal mély pszichés gyökerei vannak. Bizonyított tény, hogy aki az épületeknek e figyelmen kívül hagyott "féregnyúlványaihoz" vonzódik, az önnön pszichéjében kutakodik hasonló felépítmények után, s mivel ott - talán a tudatalatti teljes hiánya miatt - semmit nem képes feltárni, így ugyanezt építészetileg vitelezi ki. Az ilyen ember előéletére jellemző, hogy időpontok tömkelegét lefoglalva pszichológusról pszichológusra jár, mert mindegyik elküldi azzal a kijelentéssel, hogy "kérem szépen, az Ön agya csonka, tudatalattival egyáltalán nem rendelkezik, így nincs is rajta mit feltárni. Ön semmiféle komplexussal nem bír, nem lehet összefüggésbe hozni a viselkedését holmi stílusos narratívával, melynek jelképeitől úgy alélna el, mintha Ön egy két lábon járó szimbolikus költemény lenne, mely hirtelen elolvassa önmagát és gyönyörködik a saját rettenetes igazságában, nem, ez nem így működik. Tudja mit, átküldöm a pszichiáterhez, az majd felír magának valami nobirozifint, vagy mi a bánatot, de kérem, ennél többet ne várjon. A bálna se tehet róla, hogy nincs kopoltyúja, attól még ugyanúgy úszik." Az ilyen ember, titkon vágyva a tudatalatti által nyújtotta rejtett, nemes és emberi szenvedésre, természetesen vonzódik a kémek árnyakkal és ármányokkal teli életéhez, hogy elméjének precíz, geometriai pusztaságát a valóság zűrzavaros, fekete ormai töltsék meg, mint lakberendező vásárolta, idegen ízlés üllőjén fogant bútor a nappalinkat.'),
(4, 'Sajt', 'Megcsillogott a bányatónak a feneke. Ez nem lehetséges, mivel annak csak a színét látjuk. A bányató tele van búvárokkal és csákányokkal. Ezzel kapcsolatban egyáltalán nem éri meg kifogást keresni. A bányató mindig is tele volt búvárokkal és csákányokkal, akik vizet bányásztak. A vízbányászat gazdaságilag igen jelentős előnyöket hozott az ország gazdasági előnyei számára, mert rendkívüli módon tette nedvessé azt. Mikor az egyetlen vízbányász, akit életemben ismertem, megfulladt, mind nagyon gyászosak voltunk érte, főleg, hogy nem volt képes ezentúl hozzájárulni az ország gazdasági előnyeihez. Bementem az étterembe.
-Mit kér, jó uram? - kérdezte a pincér.
-Egy extra nagy tál versenyképességet, némi párolt dzsídípí öntettel - mondtam én.
-Nem bölcs, de gazdaságilag előnyös választás - mondta a pincér. - Italt hozzá? - kérdezte a pincér.
-Kérnék szépen egy 1358-as, önrendelkezés-öklelendészetileg kiforrott minőségirányítási rendszert - mondtam én.
-Hozom, amint elfelejtek megfelelni az Ön kivételesen szilárd értékrendjének - mondta a pincér.
-Nem szükséges addig várni, akár meg is felelhet neki - mondtam én.
-Egészen biztos? - kérdezte a pincér. - Nem szeretnék csalódást okozni azzal, hogy utálkozva hozom ki ezt az ön által is megvetett, szellem-hesegető, vértelen fogást, mely minden egyes alkalmat megragad, hogy holmi ízekben dagonyázni kívánó művészalakok (mint amilyen Ön is) orra alá robbantsa önnön, esztétikai pusztaságot és az univerzumot, mint felvágott hasábot rőzseként jobbágyosan hordó természetét - mondta a pincér.
-Nem fog, higyje el - mondtam én. - Nem zavar, ha ugyanazt utálja, mint én - mondtam én.
-Hát, ez esetben osztozni fogok az Ön utálatában - mondta a pincér.
-Tudja, azt hiszem, félre ismer engem. Csak azért, mert a művészek elvárják, hogy végig sértse őket a világ, és annak természetével tetemes mértékben ellenkezzem minden egyes idegszáluk, mely irányítható, még nem várom el, hogy ön szofista-pistaként nyenyeregjen az én ellenemben - mondtam én.
-Nos, ez rendkívül megnyugtató. El is mosolyodom ennek hallatán, és kedélyes módon visszalófrálok a pult mögé, és megindítom ezt a procedúrát - mondta ő.
-Igen, jobb is szerintem így. Ha a világ az anti-én, épp elég nagy tömegben dörmög ott alant ahhoz, hogy ne kapjon még egy extra szócsövet - mondtam én. Egyébként is - mondtam én. - Utálom a szóismétlést - mondtam én.
-Utálni is kell azt - mondta ő. - Nagyon kellemetlen tud lenni, amikor például halandók vagyunk, és ringlispilesdit játszunk a saját szavainkkal, mintha ilyen ostobaságra lenne időnk. Akkor mentem is, olyan mód, ahogyan azt az előbb erkléreltem Önnek - mondta a pincér.
Mikor kihozta az ebédet, közösen hízlaltunk fel egy jó kis ikerutálkozást. Mindketten kiakadtunk azon, hogy a valóságot lehetséges holmi lóversenyek szintjére redukálni, s annak minden résztvevőjét betolni estére az istállóba. Érzéseinket grimaszokkal is illusztráltuk, úgyhogy mire agyonpirkadt a kint felejtett nappal, megzsibbadt arcunk csak úgy pulzált vörösségtől.
Hazamentünk. Én befeküdtem az ágyba, neki meg meghalt a felesége. A temetés átlagos volt, de kivételesen meghitt, mert a gyászban nem csak én osztoztam, hanem az egész világ is. Bizony ám, egyetlen rövidke kétórácskára mind kiszabadultunk az istállókból, és megsirattuk egy olyan asszony halálát, aki ismertségével fordított arányban fájt mindannyiunknak, akik részt vettünk a rendezvényen, vagyis az egész emberiségnek. Mivel a pincér ismerte leginkább, neki egyáltalán nem fájt, sőt mi több, talán örült is neki, hogy egy hozzá ennyire közel álló, hűséges, és vele szinte operába illő izzással összesajtoltatott egyénre esett rá a kanapé, amit a negyedik emeletről dobtak ki, s tálcahordó mosolyát az sem lohasztotta le, hogy egy milliárdos nagyságrendű, zokogó emberkupac tornyosult rajta. Én közepesen ismertem a nőt, úgyhogy sokkal jobban fájt az elvesztése, de annyira nem, hogy meghaladja azt a bizonyos kritikus tömeget, ami a szemhéjba rejtezett suvickolóegységek túlhajtásához szükséges. Szerencsére én az embertömeg tetején kaptam helyet (a késők örökös kiváltsága), de annál szerencsétlenebb volt az a körülmény, hogy az itteni, légritka levegőhöz alkalmazkodott, szemnyáladzástól roskadozó árusok oxigéntartályait már teljesen elkapkodták, úgyhogy csak amolyan fél-melankóliás állapotban tudtam fetrengeni egy csapat országgyűlési képviselőn, akik oly mértékben rászkódtak a szájukból kijövő gyászos üvöltésektől, hogy a hátukra gumizott tartályok majdnem felrobbantak. Odalenn, a gurgulázó humánpacni hűségesen dorombolta önnön gyászmeneteit, és néha-néha egy-egy lentről indított sírógörcs repedéseket gerjesztett e két különböző tektonikai lemezre váló ember-gombolyagban. Én, természetesen (a késők szerencséjéből kifolyólag) a két lemez szétválásának határán vonaglottam oxigénhiányosan, és ahogy antro-partok elkezdtek távolodni egymástól, kezeim az egyik hegy alkotóelemeibe kapaszkodtak - egy rakás képviselőujjba, míg a lábaim egy tetovált szemöldökű titkárnő karórájába akadtak bele, s kisebb fajta csodaként fogtam fel, hogy eme két újonnan alakult földrajzi képződmény meg lett akadályozva az én fulladozó testem által a további szétbomlástól.
-Ez hallatlanul élelmes! - hallatszott egy oxigénmaszk gépiesen nazális zümmögése, gazdája egy monoklis geográfus volt, aki egy heringidomár és egy HR-es menedzser közé volt beszorulva. A megannyi lélegeztetős, egymásba ékelt ember helyeslően sziszegett és bólogatott készüléke rideg, de tápláló ölelésében. Az oxigénárusok fedetlenül maradt arccsontja csak úgy duzzogott a büszkeségtől, termékük elvégre is kiállta a próbát, ellentétben a szemeimmel, mert hirtelen rámjött a zokogás, ahogy a félig ismert, halott asszonyra gondoltam. Könnyeim szétrázta a szellő, s egy-egy méltatlan horkanás formájában véglegesültek, amit amazok hallattak, kiknek frissen vasalt öltönye volt e cseppek végleges nyughelye. A néhány pillanatnyi méltatlankodás után visszatértek bőgésük témájához.
-Mondja, maga ismerte a nőt? - köhögött fel számból a kérdés. Hirtelen erőre kaptam bizonyos gyanúk foganatján.
-Én, ugyan már! - zümmögött a geográfus. Maszkja feltüzelni látszott szólamainak jóízűségét.
-Csak mert különösen vidámnak tetszik lenni - hívtam fel a figyelmét iménti gyanúm okára.
-Hát, csak tudja, úgy érzem, mintha mindig is ismertem volna. Valahogy emlékeztet anyámra - hívta fel figyelmem, hogy gyanúm iménti okát holmi családias érvelésekkel kellene tudat alatt elhessegetnem, de mindez szerencsére nem jutott el annyira mélyre. Ahogy jobban szemügyre vettem ezt a szendvics-figurát (e folyamathoz a szokásosnál jobban ki kellett tekernem az én görcsösen kampózó testem nyakát), megpillantottam a homlokán azt a szögesdrót-szerű, pirospozsgás mintázatot, amit bizonyos hegyes csúcsú hálósipkák rendszeres viselése vált ki, valahogy úgy, ahogy a szemüvegesek orrán a két hajókabin-ajtó alakú mélyedést az említett látószer viselése. Ez nem lehet! Miféle bitangul kötözött, fejhangú pilleszamár legyek én, ha nem látnám odalenn, nemtom hány kilóméteres mélységben annak az asszonynak a véletlen, embertömegi mocorgással felsértett, kökörcsinmintás tölgykoporsóját, s magát a benne fekvő nem levő lénymaradékot a fején egy bíborszőrmés, csúcsos fejfedővel, mely löttyedtségi szintjét tekintve már jócskán a háló-kollekciók kategóriájába számítandó. Igen! Ez a jóember ajándékozta neki önnön hálósapkáját, amikor még élt. Még szép, hogy ezek a titkolható összeakadás műfajában jeleskedtek, amikor az a pincér máshol folytatott létezést, mint a nő. Ez már döfi!
Valahogy tudatnom kellett a pincérrel az eseményeket, és az oxigénhiány épp kapóra jött. Egyszerűen leestem. Zuhantam, és pont ott zuhant mellettem maga a pincér, aki vihogva, illetve röhögcsélve majszolt egy szintén zuhanó ementálit, mely legalább kétszer akkora volt, mint ő.
-Ó, csakhogy látom! - mondtam neki, félig gyászosan (ne merjék akár egy percig is azt gondolni, hogy e nyomozásféleség kiverte volna belőlem az illendő érzéseket. Nem!)
-Egyen! - ajánlkozott a pincér. Ahogy láttam, jól elvolt oxigénmaszk nélkül is. Tincseinek kb. 10%-a tartott ellent a menetszéllel. Több, mint biztos, hogy felhasználhatjuk őket valamiféle szimbólumként ezt a fajta renitens hozzáállást a körülményekhez.
- Nem! A geográfus az!
- Miket beszél maga? - mormogta teleszájjal. Láthatólag a sajt jobban érdekelte, mint bármi más a földön.
- Megcsalta Önt a felesége azzal! - ordítottam, fejem pedig felfele biccentett, az "azzal" pozíciója felé.
- Mondja, Ön szereti a sajtot? - kérdezte a pincér.
- Hogy jön ez ide? - értetlenkedtem, megjegyzem, jogosan.
- Nézze, a házasság olyan, mint a sajt - magyarázta. - Minél többet rágják, annál több lyuk lesz rajta, azonban soha nem fogyhat el, köszöhetően annak, hogy a sajtnak meghatározó része a lyuk. Érti?
- Asszem igen - próbáltam követni.
- Tehát, kérdem én, van különbség az újonnan rágott lyuk, és a korábban keletkezett lyuk között? - kérdte tőlem.
- Hát...
- Már hogy a fenébe lenne! - kiáltotta lelkesen. - Mindkettő esszenciája egy és ugyanaz. A nincsnek nincs címkéje, egyszerűen csak van. Tehát, mivel a lyuk a sajt lényege, az újonnan alkotott lyuk is a sajt lényegévé lesz.
- Azt hiszem mond valamit - mondtam valamit.
- Még szép, hogy mondok, művész úr - mondta a pincér. - És ez által, ha elfogy a sajt, mégis megmarad, mert egyetlen, határtalan lyuk lesz, mely a látszólagos sajttalanságot úgy tündökli át, akár a holdsugár a fellegek csigáját, ha lenyeli őket a pákosztos éjszaka. Ez a házasság, barátom, és soha ne feledje! - mondta nekem. Hangja lényeggel teli volt, a levegő üszkös, és ködös (a zokogó idegenek könnyeitől), és én életemben először, hisz a nemjóját! Megkedélyesedtem!');
