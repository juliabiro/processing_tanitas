/* nem csak //-rel lehet kommentezni,
csillagokkal es perjelekkel. 
Ez abban mas mint a sima perjeles, 
hogy a csillagok kozott akarhany sor lehet
//-bol minden sorban ujat kell kitenni
*/

/*
ebben a kiindulo kodban //-rel jeloltem azokat a kommenteket, 
amik arrol szolnak, hogy oda kene valami kodot irni a hazihoz. 
csillagos kommentbe kerultek a magyarazo szovegek. 

*/

/* gombok helye */
float kapcsolox=200;
float kapcsoloy=400;
float pirosx= 300;
float pirosy=400;
// ide kell meg masik 2 gomb

/* gombok merete */
float sugar=50;

/* ebben a valtozoban tarlohatod, 
hogy eppen fel van-e kapcsolva a lampa
*/
boolean lampa_on=false;

void setup() {
  size(500, 500);
}

void draw() {

  /* gombok kiarjozlasa */
  noStroke();
  /*on off gomb*/
  fill(#333333);
  ellipse( kapcsolox, kapcsoloy, sugar, sugar);
  /*piros gomb*/
  fill(#ff0000);
  ellipse( pirosx, pirosy, sugar, sugar);
  // ide tedd majd a masik ket gombot
  
  if (mousePressed){
  
    // ha az ONOFF gombon kattintott, 
    // akkor a lampa_on erteke valtson at:
    // ha eddig nem volt felkapcsolva, akkor innentol legyen
    // ha eddig fel volt kapcsolva, akkor ezentul ne legyen
  
  
    // ha egy szines gombra kattintott ES a lampa fel van kapcsolva, 
    // akkor valtson at a lampa szine
  }
 
  if (lampa_on) {
    // allitsd be a lampa szinet, legyen attetszo
    triangle(250, -130, -50, 500, 550, 500);
  }
}