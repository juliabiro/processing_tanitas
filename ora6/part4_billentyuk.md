# Irányítás billentyűkkel

Az előző órán láttuk, hogy hogyan kell egérkattintásra csinálni valamit: van egy függvény, amit a processing előre elkészített nekünk, és ami lefut, valahányszor az egérrel kattintunk. Ez a függvény kezdetben üres, de ha beleteszünk parancsokat, akkor azok egérkattintásra végrehatjódnak:

```
void mousePressed(){
    background(#ffffff);
    }
```

Hasonlóan lehet billentyűlenyomást elkapni:

```
if (keyPressed){
    background(#ffffff);
    }
```
Ez fehérre állítja a hátteret ha megnyomunk *bármilyen* gombot. Mi van, ha egy bizonyos gombot akarunk csak elkapni? A processing a `key` nevű változóba beleteszi az éppen lenyomott gomb nevét (ugyanúgy ahogy a `mouseX` változóba beleteszi az egér x koordinátáját). Az alábbi a program már csak az a betű lenyomására reagál. 
```
if (keyPressed){
    if (key == 'a'){
        background(#ffffff);
    }
}
```

## mi az a == ?
A `==` az egyenlőség ellenőrzésének a művelete, tehát a > és a <  társa. Fontos, hogy nem egy, hanem két egyenlőségjelet kell írni. Ha csak egy egyenlőségjelet írunk, akkor az értékadást jelent, nem kérdezést. 
Tehát: `x==5` az igaz, vagy hamis, attól függően, hogy x éppen 5-e. De `x=5` az 5-re állítja az x-et. 
Erre nagyon oda kell figyelni, mert sajnos az if-ekben és whileok-ban az is érvényes szintaxis, ha csak egy egyenlőségjel van. és ahelyett, hogy ellenőrizné, átírja a változót, ami mindenféle fura hibát eredményez a programban.


## iránygombok elkapása

Node mi van, ha a fel és le billentyűket akarjuk elkapni? sajnos nem annyira egyszerű a helyzet, hogy `key==UP`, mert a nem betű értékű billentyűket a processing mind egybe kezeli, CODED néven, és azon belül kell ellenőrizni, hogy a billentyű kódja mi. 
```
void keyPressed() {
    if (key == CODED) {
        if (keyCode == UP) {
            piros_labda.fel(1);
        }
    }
}
```
A keyPressed függvénynek ugyanúgy a draw-n és a setupon kívül van a helye, mint a mousePressed-nek. 

### feladat
Egészíts ki a keyPressed függvényt úgy, hogy a piros labdát irányítsa mind a négy irányba. Az iránybillentyűk kódja UP, DOWN, LEFT, RIGHT. 


## mi is történik itt?
Olyan, mintha mi definiálnánk a függvényt, de igazából a processing már ezt elkészítette nekünk, mi csak kitöltjük. Ez onnan látszik, hogy a procesing sötétkékkel kiszínezi és vastagra állítja. Ha megnézitek, a setup és a draw is ilyenek, vagyis ezek is már létező függvények, amiket mi csak kitöltünk. Ezekben az esetekben mind nem csak az a fontos, hogy mi történjen, hanem az is, hogy *mikor*: egyszer, sokszor, egérkattintásra. A mikor-t elintézi a processing nekünk, tőlünk csak azt kérdezi: mi az amit végrehajtsak egyszer, sokszor stb?
