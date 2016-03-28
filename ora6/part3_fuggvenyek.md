# Bentlévőség vizsgálat

Szeretnénk, hogy ha a labda csak addig mozogna, amíg bent van a képen. Viszont ezt minden labdánál ugyanúgy kell ellenőrzni: megnézni, hogy a labda x és y koordinátája hol van. Ezt a tudást is hozzáadhatjuk a Labda osztályhoz, egy függvény formájában. Tehát kéne egy függvény a Labda osztályba, ami megmondja, hogy a labda bent van-e, és akkor így hasnzálhatjuk:

```
if (piros_labda.bent_van()){
    piros_labda.fel();
    }
```

Igen ám, de eddig minden függvény, amit írtunk csak végrehajtott egy sor műveletet. Most viszont kérdezni szeretnénk, hiszen egy igen/nem választ akarunk kapni. Szerencsére minden függvény tud válaszolni is, ha szükséges. Ezt a választ úgy hívják, hogy visszatérési érték, és lehet szám, szín, kép, bármi. Ebben az esetben mi egy igazságértéket, vagyis boolean-t szeretnénk kapni választnak. Ahhoz, hogy a függvény tudjon válaszolni, két dolgot kell tennünk: egyrészt jeleznünk kell, hogy a függvny váalszolni fog, másrészt a függvényen belül meg kell mondanunk, hogy mi legyen a válasz. Az elsőt úgy lehet megtenni, hogy a függvény megadásánál a `void` szó helyére a várt válasz típusát írjuk. (a void pedig azt jelenti, hogy nem lesz válasz, azaz a válasz üres, angolul void lesz). Magához a válaszoláshoz pedig a `return` kulcsszót hasnzáljuk. Ami a return után van, a függvény azt fogja váalszolni, és mivel meg is van a válasz, nem fogja tovább végrehajtani a parancsokat. 

Hogy néz ki ez a labdánál? 
```
class Labda(){
    // eddigi részek

    boolean bent_van(){
        if (x>0 && x< width){
            return true;
        } else {
            return false;    
        }
    }
}
```
Amikor azt mondjuk, hogy `piros_labda.bent_van()`, akkor elkezd futni a függvény. Ha az x olyan, hogy a feltétel igaz, akkor a függvény visszaadja az IGAZ értéket, és meg is áll, hiszen meg van a válasz. Ha viszont a piros labda épp kint van a képből, akkor belemegyünk az else-be, és ott találunk egy return-t, és HAMIS értéket fogunk válaszul kapni. 

### feladat
1. Írd meg a bent-van függvényt úgy, hogy ellenőrizze a képből való kimenetelt minden irányban (fel és le, jobbra és balra is). 
2. Egészítsd ki úgy, hogy a labda ne mehessne ki félig a képernyőről, már akkor álljon meg, amikor a széle érinti a kép határát. Hint: ha a labda széle pont a kép szélén van, akkor a labda közepe pont sugárnyira (r) van a kép szélétől valamilyen irányban. 

### Mi is az a ()?
Vegyük észre, hogy a kérdéseket is ()-val kell feltenni. A () annak a jele, hogy meghívunk egy függvényt, vagyis azt parancsoljuk, hogy hajtódjon végre. Legjobb, ha úgy gondolunk rá, mint a felszólító módra. `new Labda()` azt jelenti: csinálj nekem új Labdát! `piros_labda.fel()` azt jelenti: ap piros labda menjen fel()! `piros_labda.bent_van()` azt jelenti: dertísd ki, hogy bent van-e a piros labda!

# Még okosabb függvények
### feladat
Írj olyan függvényt, amitől alabda mérete nő. 

## függvény paraméterek
Van már olyan függvényünk, amitől a labda nő. De minden kiadott parancsnál csak 1-et. Ha azt akarjuk, hogy a labda 3-at nőjön, akkor 3-szor ki kell adni a parancsot:

```
piros_labda.nojj();
piros_labda.nojj();
piros_labda.nojj();
```

Mi lenne, ha meg tudnánk mondani a labdának, hogy mennyit nőjön? ezt is meg tudjuk tenni. Létre lehet hozni olyan függvényeket, amik tudnak róla, hogy fognak kapni valami extra információt a működésükhöz, ezt úgy hívják, hogy paraméter. Annyit kell tennünk, hogy a függvény definíciójakor megmondjuk, hogy milyen típusú információk lesznek ezek, és adni nekik egy nevet, hogy a függvényen belül tudjunk rá hivatkozni, hogy most akarjuk ezt az információt használni. Labdánknál ez így néz ki:

```
class Labda(){
    // eddigi részek

    void nojj(int seb){
        r=r+seb; 
    }
}
```
Amikor pedig használjuk a függvényt, akkor a zárójelek közé be kell írni a paraméter *értékét*.
most már kiadhatjuk a "nőjjél 3-at" parancsot: `piros_labda.nojj(3);`

Az is látszik, hogy ha a nojj függvény olyan, hogy van paramétere, akkor a `piros_labda.nojj()` prancs, paraméter nélkül hibát dob. Ha egy függvénynek vannak paraméterei, akkor azokat mindig meg kell adni, azok nélkül nem hasnzálható a függvény. És fordítva, ha egy függvénynek nincs paramétere, akkor nem szabad paramétert megadni, hiszen nem tudja mire hasnzálni a program. 

### feladat
Írd át programodat úgy. hogy a a Labda osztály mozgató függvényei paraméterben kapják meg, hogy mennyit mozogjanak a labdák. A 3 labdédat mozgasd különböző irányba különböző sebességgel

### olyan ismerős ez a függvényizé...
Igen, az. Ugyanis eddig is minden parancs, amit kiadtunk, igazából egy függvény, amit valaki más megírt heleyettünk. Az `ellipse` egy olyan függvény, ami ellipszist rajzol, és 4 paraméter kell neki, de nincs visszatérési értéke, tehát valahogy ilyesmi:
```
void ellipse(float x, float y, float r1, float r2){
    //rajzolás
    }
```
A `noFill()` olyan függvény, aminek se paramétere, se visszatérési értéke. Ha azt kérnénk a processingtől,hogy `noFill(3)`, akkor hibát jelezne, hiszen nincs jelentése a noFill műveletben annak, hogy 3. A `fill(color szin)` viszont csak úgy működik, ha megudunk neki egy színt, tehát ennek van paramétere, visszatérési értéke visoznt ennek sincs. 
És mi van a random függvénnyel? annak paramétere és visszatérési értéke is van: 2 szám paramétere, és float típusú visszatérési értéke. 
