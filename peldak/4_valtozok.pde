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
egesz = 1;
valos = 3.14;
szoveg = "lorem ipsum";
szin = #ff0033;

// vannak valtozok, amikbe nem olyan konnyu erteket tenni, mert kell egy parancs, ami letrehozza az olyan tipusu erteket. 
// pl a kepeket be kell tolteni a loadImage nevu parancs segitsegevel
kep = loadImage("alma.png");


// szint pedig ketfele keppen is letre lehet hozni: a fenti modon, a #/es jelolessel, vagy pedig 3 szambol a color parancs segitsegevel (igen, ugyanaz a parancs neve mint a tipus neve)

szin = color(255, 0, 33);
