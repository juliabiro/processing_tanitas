# Elmélet
## Mi az a Git? 

A git egy verziókövető program. Arra való, hogy el tudja menteni egy fájlnak a különböző változatait, és a segítségével vissza is lehessen állítani régebbi állapotokat. Ezt úgy csinálja, hogy valahánysor gittel mentünk, akkor elmenti, hogy mi változott a fájlban az előző állpothoz képest, és a változások történetét mind elrakja. Vagyis nem csak az előző állapotot (verziót) lehet megnézni, hanem a 12 vel ezelőttit is, vagy azt, hogy mi változott a9-cel ezelőtti mentés kor a 10-zel
ezelőtti mentéshez képest. 
Amikor gittel lemásolunk egy fájlt, akkor megkapjuk a fájl egész történetét is. És ha mi változtatunk a fájl másolatán, és gittel elmentjük, akkor ezeket a változtatásokat git segítségével könnyű megismételni a fájl eredetijén. Ezért aztán arra sozkták hasnzálni, hogy többen párhuzamosan dolgozzanak egy fájl másolatain, és a változásokat a git összefésüli a közös eredeti fáljban. Mi ezt úgy hasnzáljuk ki, hogy hol a suliból, hol otthonról dolgozunk ugyanazokon a fájlokon.


## 1. Repositoryk

Egy repository az egy olyan tárolódoboz, amin belül a git követi a fájlok történetét. Egy repositoryban sok fájl és mappa lehet, és velük együtt rejtett fájlokban elmentve ott van az egész történetük. Egy repository tartalma az egy mappában van, és van ott egy rejtett .git nevű mappa amiben a git tartja a történetet meg a saját kis dolgait, ezzel nem kell foglalkoznunk. 
A repository általában egy logikailag összefüggő munka, pl egy program kódja, vagy egy weboldalé, vagy pl egy szakdolgozat. 

## Klónozás

Amikor lemásolunk egy repositoryt (a saját gépünkre), azt úgy hívják, hogy klónozás. Ilyenkor a repository egész tartalmát és egész történetét megkapjuk, és létrejön egy ugyanolyan repository, mint az eredeti, szintén egy saját mappában. Ha egy másolatban csinálunk egy változtatást és elmentjük, akkor ezt a változtatást az eredetiben is meg lehet ismételni, és akkor megint két teljesen egyforma mappánk lesz, teljesen egyforma történettel. 
A repositorykat általában úgy csinálják meg, hogy bárki lemásolhassa őket, de nem mindenkinek van joga beleírni. ezért a gittel könnyen lehet kódot megosztani: csak odaadod a másiknak a repository elérhetőségét, hogy másolja le onnan. 

## Commitolás

Ez a mentés. Ilyenkor a git megnézi, hogy milyen változás történt a fájl előzőleg mentett változatához képest, és ezt elmenti. Minden commithoz tartozik egy szöveges üzenet, ami azt hivatott leírni, hogy mi változotott és miért. Amikor sokan egyszerre dolgoznak egy repositoryn, akkor ezekből a üzenetekből összeáll a repository közös történte. 

## Push, Pull, Sync

Ha két repository egymás másolata, vagy közös eredetiből lettek lemásolva, akkor az egyikben lévő commitokat le lehet másolni a másik repositoryba. Ilyenkor ott is végrehajtódnak a változások, és a történethez is hozzáadódnak. A push, a pull, és a sync egy ilyen változásmásolás, az elnevezések azt jelzik, hogy ki kezdeményezi a dolgot. Ha le akarom másolni egy másik repóból az őj változásokat, akkor "behúzom" őket, az a pull. Ha a sjaát változásaimat akarom a másik repóba átmásolni, akkor "odatolom" őket, ez a push. A sync az meg ha mindkettő megtörténik. 


# Gyakorlat

A github.com-on létrehoztunk egy repository-t (van aki többet is, de nekünk csak egyre van szükségünk), ennek a neve processing. A lilamacskás github programmal lemásoltuk az iskolai gépekre és az otthoni gépeitekre is. Ez azt jelenti, hogy van a gépen egy mappa, aminek az a neve hogy processing, és aminek a tartalmát lehet szinkronizálni a github.comon lévő tartalommal. 

# Klónozás

Nyisd ki a github programot, és jelentkezz be (beállítások, accounts). Baloldalt felül van egy kis plusz jell, azt megnyomva válaszd ki a clone opciót. Ha be vagy jelentkezve, akkor fel fogja ajánlani, hogy azok közül a repository-k közül klónozz egyet, amiket te hoztál létre a githubon [](clone.png). Válaszd ki a processing nevűt (ez enyémet processing_tanítas-nak hívják). Itt tudod beállítani azt is, hogy hova másolja a github a repót. Olyan helyet válassz, amit meg fogsz találni később. Ha leokézod, akkor el fogja kezdeni másolni
[](cloning.png). De ha nem találod, akkor a girhub programotól mindig megkérdezheted, hogy hova tette[](finding.png). A lilamacskás program baloldali sávjában vannak azok a repositoryk listázva, amiket én a gépre lemásoltam. 

# Commitolás

Elkezdek dolgozni a processing mappámban. Én például most írom ezt a leírást. A git érzékeli, hogy a fájlok megváltoztak, és kilistázza a lilamacskás program középső oszlopában, hogy melyik fájlok változtak meg a legutóbbi mentés óta, a bal oldalon pedig azt, hogy mi volt pontosan a változás. Pl én írtam egy csomó szöveget és beletettem 3 képet is. 
[]()
