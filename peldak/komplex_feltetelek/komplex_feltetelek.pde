// a felteteles mozgo almas peldabol fogunk kiindulni. 

// lehet komplex felteleket megadni
// ha azt akarjuk, hogy egy kod cdak akkor fusson le, 
// ha ket feltetel egyutt igaz, akkor hasznaljuk  az ES jelet &&:
// if (valam igaz && masik valami igaz){}

// ha azt akarjuk, hogy valami akkor fusson le, ha ket feltetel kozul legalabb az egyik igaz, akkor
// az OR jel kell nekunk ||
// if (vagy az egyik valami igaz || vagy ha az nem akkor legalabb a  masik valami){
    
//    }
// VIGYAZAT: ez nem kizaro vagy, vagyis akkor is teljesul, ha mindketto feltetel igaz. 
// a draw legaljan lesz a komplex felteteles resz, addig ugyanaz mint a felteles pelda


// a feltetelek egy masba is agyazhatoak. 
// if (ha valami){
//        legyen piros
//    if (ha masik valami){
//        legyen kek
//    }
//  }

// itt ha a valami feltetel teljesul, akkor piros lesz. ha a valami feltetel ES a masik valami feltetel is teljesul, akkor kek lesz. De ha csak a masik valami feltetel teljesul es az elso nem, akkor nem lesz kek. 

// a komplex felteteles pelda az if(mousePressed) kodreszben van

float x;
float y; 
float sebx;
float seby;
PImage alma;

color hatter;

void setup(){
    size(500, 500);
    alma=loadImage("apple.png");

    x=width/2;
    y=height/2;

    sebx = random(-2.5, 2.5);
    seby = random(-2.5, 2.5);

    hatter=#eeeeee;
    
}



void draw(){
    background(hatter);
    x = x+sebx;
    y = y+seby;

    float padding=50;
    imageMode(CENTER);
    if (x<0+padding){
        sebx=-1*sebx;    
    }

    if (y<0+padding){
        seby=-1*seby;    
    }

    if (x>width-padding){
        sebx=-1*sebx;     
    }
   
    if (y>height-padding){
        seby=-1*seby;     
    }
   
    image(alma, x, y, 100, 100);
    
    // fogunk irni egy rakattintas ellenorzot. Vagyis azt megnezni, hogy sikerult-e az egerrel rakattintani az almara
    if (mousePressed){
        // hogyan lehet ellenorzini, hogy rakattinottunk-e az almara?
        // az alma az x,y koordinatakban van, az egerunk pedig a mouseX,mouseY koordinatakaban. 
        // akkor tudtunk rakattintani, ha ezek eleg kozel vannak egymazhoz, vagyis az x eleg kozel van a mouseXhez 
        // ES az y a mouseYhoz. 
        // az eleg kozelt matekul ugy mondjak, hogy a kulonbseguk abszoluterteke elege kicsi

        if (abs(x-mouseX)<50 && abs(y-mouseY)<50){
            // ha sikeres a kattintas, akkor a hatter szinet az aktualis beseggeg fuggvenyeben atszinezem
            hatter= color(255, abs(sebx)*100, abs(seby)*100);
            }

        // a regi viselkedest megtartjuk, egerkattintasra valtozzon az alma iranya
        sebx = random(-2.5, 2.5);   
        seby = random(-2.5, 2.5);   
    }
    

    // ezt megtartom, latvanyos
    fill(#000000);
    line(width/2, height/2, width/2+sebx*20, height/2+seby*20);
    text("pozicio: ("+x+","+y+")", width/2, height/2+10);
    text("sebesseg: ("+sebx+","+seby+")", width/2, height/2+20);



}