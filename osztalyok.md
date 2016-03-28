# Osztályok

Az osztályok egyfajta sablonok, amik a programban létező dolgokat reprezentálják, és az öszetartozó információkat összefogják.  Tegyük fel pl, hogy rajzolni akarunk egy labdát. Egy labádnak mindig lesz színe, és sugara, sőt, amikor odaérünk, hogy kiadjuk az ellipse parancsot, akkor rájövünk, hogy bizony helye (x,y) koordinátája is lesz. Tehát ha rajozlni akarunk 3 labdát, akkor fejben (vagy változóban) kell tartanunk 12 különöző számot, és megjegyezni, hogy melyik melyik labdához tartozik. Sokkal kényelmesebb lenne, ha az összetartozó dolgok össze lennének kötve valahogy, meg az a tudás is, hogy az összes labdát hasonlóan kell kirajzolni, és együtt lennének használva. Ebben segítenek nekünk az osztályok. 

Az osztályok úgy működnek, hogy először létrehozzuk a sablont, azaz az osztályt, és utána pedig felhasználjuk, létrehozunk belőle lenyomatokat (amit példánynak hívnak), és kitöltjük tényleges adatokkal. 

```
// Sablon definiálása:
class Labda(){
    float x;
    float y;
    color szin;
    float r;
    
    // kirajozló függvény
    void rajzolj_ki(){
        noStroke();
        fill(szin);
        ellipse(x,y,2*r,2*r);
        }
    }

// Példány létrehozása:
Labda piros_labda = new Labda();
Labda kek_labda = new Labda();

size(400, 400);

piros_labda.x=200;
piros_labda.y=200;
piros_labda.r=50;
piros_labda.szin=#ff0000;
piros_labda.rajzolj_ki();

kek_labda.x=300;
kek_labda.y=300;
kek_labda.r=20;
kek_labda.szin=#3300ff;
kek_labda.rajzolj_ki();
```

Itt most sokminden történt, kezdjük az elejéről: sablont a `class` kulcsszóval lehet definilni, utána kell az osztály neve, aztán nyitócsukó zárójelek, aztán pedig kapcsos zárójelek közt mindaz, ami az osztályhoz tartozik. Egy osztályhoz változók és függvények is tartozhatnak. Itt 4 változónk és egy függvényünk van. 
Ezek után létrehozunk az osztályból 2 példányt, a new kulcsszóval. Ez egy felszólítás a processing részére, hogy készítsen nekünk a sablon segítségével 2 tényleges lenyomatot, ez lesz a piros_labda  és a kék labda. ezeket betesszük egy-egy változóba, aminek a típusa Labda. Eddig találkoztunk már olyannal, hogy egy változóban számot, színt, igazságértéket, vagy akár egy képet tárolunk, most pedig egy Labda összes adatát fogjuk benne tárolni. (vagyis ha definiálunk egy osztályt, akkor onnantól hasnzálhatynk olyan tpusú változót.) Vagyis a `a new Labda()` azt jelenti: csínálj nekem egy Labda típusú dolgot! és az eredményt beleteszem egy Labda típusú változóba. (hasonló ez ahhoz, hogy `float z=random(1,10);`: a random csínál nekünk egy float tpusú dolgot amit beletesüznk egy float változóba). 


Ezek után mindkét példányban beállítunk tényleges értékeket. A példányon való változttaásokat és kiolvasásokat (egy szóval: hozzáférést) úgy jelezzük, hogy a peldany neve utan egy pontot teszünk, és utána annak a változónak a nevét írjuk, amit meg akarunk változttatni, vagy épp ki akarunk olvasni. Tehát `piros_labda.r` a piros labda sugarát állítja be, de a kék labdáét nem. Amikor azt mondjuk, hogy `piros_labda.rajzolj_ki()`, akkor az a piros labda adataiat fogja felhasználni a rajzoláshoz, tehát a piros laba helyét, színét és sugarát.  
