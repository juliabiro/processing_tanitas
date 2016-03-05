// A valtozok fiokok, amikbe bizonyos fajta ertekeket lehet beletenni. Az int es floattipusu valtozok szmaokat tartalmaznak
// a color tipusu valtozo egy szint
// a PImage tipusu valtozo egy kepet
// a String tipusu valtozo egy szoveget


int eges;
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
kep = loadImage("alma.png");


// szint pedig ketfele keppen is letre lehet hozni: a fenti modon, a #/es jelolessel, vagy pedig 3 szambol a color parancs segitsegevel (igen, ugyanaz a parancs neve mint a tipus neve)
szin = color(255, 0, 33);

// a valtozokbol ki lehet olvasni az ertekeket, egyszeruen ugy, hogy leirjuk a nevuket. Ilyenkor a program vegrahajtasaban a valtozo helyere az erteke kerul. 
// pl most a szin valtozo segitsegevel allitom be a szint:
fill(szin);

// a size parancsnak nem lehet valtozot adni, csak rendes szamot. ez egy kivetel. 
size(500, 500);

// a valtozok erteket kiolvass utan bele lehet tenni egy matematikai muveletve ugy hasznani 
// pl ennek az ellipszisnek a bal felso reszen a sugara 10-szer a egesz valtozo erteke:
ellipse(200, 200,10*egesz,10*egesz);

// egy valtozo erteket barmikor ujra meg lehet valtoztatni
szin = #00ff23;
// ha most megint hasnzalom a valtozot, mar az uj ertek lesz benne, es masik szinre allitodik a ceruza
fill(szin);
//masik szinu ellipszis a jobb also r;szen
ellipse (400, 400, 50, 50);


