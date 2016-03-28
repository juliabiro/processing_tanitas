# kép széléig mozgó labda

Már van mozgó labdánk, de kimegy a képról. Meg kéne állítani a kép szélén. Ezt úgy lehet elérni, hogy csak akkor mozgatjuk a labdát, ha még bent van a képen:

Használd a part1-ben lévő kódot, és csak a draw-ban lévő részt változtasd meg:

```
void draw(){
    if (piros_labda.x>0){
        piros_labda.fel();
        }
}
```

## if különböző használatai
Korábbi órákon használtuk már az if-et arra, hogy megállítsuk a mozgó labdát a kép szélén. Most pedigy fordítva  csináltuk: addig mozgattuk a labdát, amíg el nem ért a kép szélére. Elsőre talán kicsit zavarosnak tűnhet: most az ifben arra kell feltételt adni, hogy mikor csináljunk valamit, vagy arra, hogy mikor hagyjuk abba? hogy is van ez? 
A válasz az, hogy akármelyikre lehet használni az if-et, csak jól fejben kell tartanunk, hogy mit szeretnánk tőle. Általában, azt szeretnénk, hogy a labda egy ponton változtasson a viselkedésén. Ezt leírhatjuk úgy is, hogy mi a feltétele a viselkedés megváltoztatásának, meg úgy is, hogy mi a feltétele a viselkedés fenntartásának. Az első esetben azt írjuk, le, hogy mi történjen, ha kiértünk a kép szélére. A másodikban pedig azt, hogy mi történjen, ha bent vagyunk a képben. A két lehetőség közül úgyis egyszerre csak az egyik áll fenn, arra érdemes feltételt írni, amelyiket a program szempontjából egyszerűbb. 

---------- labda kint van ------->|<--------------------- labda bent van ------------------>|<--- labda kint van--------
-------- if (labda.x<0) --------->|<----------- if (labda.x>0 && labda.x<width) ----------->|<--- if (labda.x>width)----

Ebben a példában a labdának az az alapállapota, hogy áll. hiszen nem csinálttatunk bele semmit. Vagyis arra kell feltételt csinálni, hogy mikor csináljon a labda mégis valamit: hát akkor, ha bent van a képben. 

Az alábbi példában a labda egyenletes sebességgel mozog, vagyis itt a mozgás az alapállpot. Itt arra csinálunk feltételt, hogy mikor változtatjuk meg a mozgást: amikor a labda kiér a képből. (A mozgást úgy változtatjuk meg, hogy a sebesség irányát megváltoztatjuk).
```
float x;
float sebx;

void setup(){
    size(400, 400);
    x=200;
    sebx=1;
    }

void draw(){
    fill(#ff0000);
    ellipse(x, 200, 50, 50);
    x=x+sebx;

    if (x<0 || x>width){
        sebx=-1*sebx;
        }
}
```


# if és while

Órán felmerült a kérdés, hogy ha azt akarjuk, hogy a labda addig csináljon valamit amíg...[valami igaz] akkor miért nem while-t használunk? 
Azért, mert az if és a draw együtt adja a while-t. A viselkedés amit ki akarunk használni: ellenőrizz, és ha jó, rajzolj. Ellenőrizz, és ha jó, rajzolj. stb.  A draw folyamatosan ismétlődik, ezért olyan, mintha egy while lenne, mindig igaz feltétellel. Ha draw-s a programunk, akkor az ismétlést a draw szolgáltatja, egyébként a while. Tehát az alábbi két kód ugyanazt adja:
```
noFill();
int x=5;
while (x<500){
    ellipse(300, 300, x, x);
    x=x+10;
}
```

```
noFill();
int x=5;

void draw(){
    if (x<500){
        ellipse(300, 300, x, x);
        x=x+10;
        }
    }
```

Ha a draw-n belül használnánk a while-t, de úgy, hogy a rajzolás a while-on *kívül van*, akkor a while végigpörgeti a változtatásokat még a rajzolások között, és mi már csak a szélső állapotot látjuk, csak egy karikát:

```
noFill();
int x=5;

void draw(){
    if (x<500){
        x=x+10;
        }
    ellipse(300, 300, x, x);
}
```

