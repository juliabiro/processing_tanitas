// a mozgo almas peldabol fogunk kiindulni. 

// az if azt teszi lehetove, hogy a proessing bizonyos feltetel teljesulesetol fuggen ezt vagy azt csinaljon. 
// az alap szintaxisa:
// if (FELTETEL) {
//    CSINALD EZT;
//    CSINALD AZT;
//    CSINALD AMAZT;
//    }

// a ket kapcsols zarojel kozotti resz akkor fog lefutni, ha a FELTETEL az igaz.
// egy specialis esetet ismerunk: if (mousePressed). A mousePressed akkor igaz, ha le van nyomva az eger gombja, 
// ami utana jon parancs, az csak olyankor fut le. 

// ebben a peldaban a feltetel matematikai lesz: azt fogom ellenrozini, hogy 
// bizonyos szamok kisebbek/nagyobbak-e mint bizonyos haterertekek.
// mivel a mozgast szamok adjak, ezert ezzel a mozgas tulajdonsaigait lehet ellenorizni, 
// mint a sebesseg es a pozicio. 


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

    // ne engedjuk kimenni az almat a keprol. Mikor van kint? ha az x vagy az y koordinataja 
    //0-nal kisebb,  vagy width-nel/height-nal nagyobb. 
    // es mi tortenjen, ha kiment az alma? az az iranyu mozgasa, ami kivitte, forduljon meg. 
    // tehat a dolog igy nez ki:
    // HA (az alma pozicioja bal kint van){
    // az ama kezdjen el jobbfele mozogoni    
    //    }
    
    
    //Pl ha az alma lefele ment ki, akkor most kezdjen el folfele menni. ezt igy lehet elerni, hogy a seby elojelet megvaltoztatom, pozitivrol negativra
    
    // bevetek meg egy trukkot: ne a kep szele legyen a hatar, hanem egy picit beljebb, hogy az alma meg azelott megforduljon, mielott kimenne.
    float padding=50;
    //ehhez pedig a rectmode/hoz hasonlo imageModeot hasnzalom, es akkor az almanak a kozpe lesz x,y-ban, nem a bal felso sarka.
    imageMode(CENTER);
    if (x<0+padding){
        // matekorai trukk: egy szamot ha megszorzol -1-el, akkor ugyanakkora, 
        //de ellenkezo eljelu szamot kapsz. 
        // -2bol +2 lesz es +5 bol -5
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
    
    // eger kattintasra az almanak sorsolodjon uj irany   
    if (mousePressed){
        sebx = random(-2.5, 2.5);   
        seby = random(-2.5, 2.5);   
    }
    

    // ezt megtartom, latvanyos
    fill(#000000);
    line(width/2, height/2, width/2+sebx*20, height/2+seby*20);
    text("pozicio: ("+x+","+y+")", width/2, height/2+10);
    text("sebesseg: ("+sebx+","+seby+")", width/2, height/2+20);

}