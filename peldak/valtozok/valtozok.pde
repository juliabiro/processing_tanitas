// A valtozok fiokok, amikbe bizonyos fajta ertekeket lehet beletenni. Az int es floattipusu valtozok szmaokat tartalmaznak
// a color tipusu valtozo egy szint
// a PImage tipusu valtozo egy kepet
// a String tipusu valtozo egy szoveget


int egesz;
float valos;
color szin;
PImage kep;
String szoveg;

// A valtozokba az = jel segitsegevel lehet erteket tenni. A bal oldalon a valtozo neve van, 
// a jobb oldalon pedig az az ertek, amit bele akarunk tenni. A szam es szoveg tipusu valtozoknal ez egyszeru:
egesz = 5;
valos = 3.14;
szoveg = "lorem ipsum";
szin = #ff0033;

// vannak valtozok, amikbe nem olyan konnyu erteket tenni, mert kell egy parancs, ami letrehozza az olyan tipusu erteket. 
// pl a kepeket be kell tolteni a loadImage nevu parancs segitsegevel
kep = loadImage("apple.png");

// szint pedig ketfele keppen is letre lehet hozni: a fenti modon, a #/es jelolessel, vagy pedig 3 szambol a color parancs segitsegevel (igen, ugyanaz a parancs neve mint a tipus neve)
szin = color(255, 0, 33);
// a valtozokbol ki lehet olvasni az ertekeket, egyszeruen ugy, hogy leirjuk a nevuket. Ilyenkor a program vegrahajtasaban a valtozo helyere az erteke kerul. 
// pl most a szin valtozo segitsegevel allitom be a szint:
fill(szin);
// a size parancsnak nem lehet valtozot adni, csak rendes szamot. ez egy kivetel. 
size(500, 500);
ellipse (400, 400, 150, 150);
// a valtozok erteket kiolvass utan bele lehet tenni egy matematikai muveletve ugy hasznani 
// pl ennek az ellipszisnek a bal felso reszen a sugara 10-szer a egesz valtozo erteke:

image(kep, 0, 0, 30*egesz, 30*egesz);

// egy valtozo erteket barmikor ujra meg lehet valtoztatni
szin = #00ff23;
// ha most megint hasnzalom a valtozot, mar az uj ertek lesz benne, es masik szinre allitodik a ceruza
fill(szin);
//masik szinu ellipszis a jobb also reszen
ellipse (400, 400, 50, 50);


// mindenhol, ahol szamra van szukseg, lehet szam helyett hasznalni 
// egy szam erteku (int vagy float) valtozot, sot akar egy olyan parancsot is, ami csinal egyet, pl a random:
//egy teljesen random szinu es meretu ellipszis valahol a bal felso sarokban
fill (random(0, 255),random(0, 255),random(0, 255));
ellipse(random(250, 500), random(0, 250), random(0, 250), random(0, 200));