// vannak olyan valtozok, amiknek az erteket nem mi mondjuk meg, hanem a processing. 
// ilyenek:
// width es height, amik a vaszon szelesseget es magassagat mondjak meg
// tehat a width/2, height/2 koordinatak az mindig a vaszon kozepe

// mouseX es mouseY minden pillanatban az eger helyenek x es Y koordinatai (akor is ha eppen kint van a kepbol!)

// mousePressed egy oyan fiok aminek a tartalma IGAZ, ha le van nyomva az eger gombja

void setup(){
    size(500, 500);    
}

void draw(){
    background(#ffffff);
    fill(#ff0000);
    // ellipszis ami mindig oda van kirajzolva mint az eger
    ellipse(mouseX, mouseY, 50, 50);
    
    // ki is irom az eger koordinatait
    text("eger helye: ("+mouseX+","+mouseY+")", mouseX+50, mouseY);
}