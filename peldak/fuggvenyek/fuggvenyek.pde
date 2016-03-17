// fuggvenyek
// a függveny olyan, mint egy változó, csak szám, szín, kép stb helyett a fiókban egy utasításlista van
// olyan mint egy receptben, amikor oda van írva, hogy "készíts világos rántást": az nem egy olcról levehető valami, 
// azt külön meg kell csinálni
// a függvényben tehát van egy leírás arról, hogy mit kéne csinálni
// később a programban ezt az receptet bármikor elő lehet venni, 
// és lefuttatni, ezt úgy hívják, hogy "meghívni" a függvényt ()anfolul call
// amikor függvényt hívunk, akkor mindig kell utána zárójeleket tenni. 

// függvényt létrehozni így kell:

// void függvnéyneve (){
//  utasításlista
// }

// meghívni pedig így:
// függvényneve()

//példa
// elkeszitem a fuggvenyt
void piros_korok() {
  fill(#ff0000);

  ellipse(100, 100, 50, 50);
  ellipse(300, 300, 60, 60);
}

void setup() {
  size(500, 500);
  // es meghivom
  piros_korok();
}