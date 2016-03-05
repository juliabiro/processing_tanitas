float x;
float y; 
float sebx;
float seby;
PImage alma;

void setup(){
    size(500, 500);
    alma=loadImage("apple.png");

    x=width/2;
    y=height/2;

    sebx = random(-2.5, 2.5);
    seby = random(-2.5, 2.5);
}


void draw(){
  // a mozgas illuziojahoz az elso lepes, hogy a hatteret (sot az egesz kepet) minden korben ujra kell rajzolni
  // attol latjuk ugy, hogy valami mozog, hogy egy kicsit arreb kerul a kepen, vgyis minden mas ugyanott marad, csak az megy arrebb
  background(#eeeeee);
    // az ellipszis poziciojat mindig az x es y valtozok fogjak megadni. 
    // attol fog arrebb menni az ellipszis, hogy az x es y valtozokat minden korben egy picit megvaltoztatjuk. 
    // ezt ugy fogjuk tenni, hogy az x valtozohoz a sebx valtozo erteket adjuk, az y valtozohoz a seby valtozo erteket
    x = x+sebx;
    y = y+seby;
    // ha seb x pozitiv, az alma jobbra megy, ha negativ, akkor balra. 
    // ha seb y pozitiv, akkor az alma lefele megy, ha negativ, akor folfele. 
    // a mozgas ezek kombinaciojabol jon ki: az alma valamennyire elmozdul fuggoleges es vizszintes iranyban is. 

    // a mozgas pontos iranyat a sebx/seby hanyados hatarozza meg. Pl ha sebx=3, es seby=1, akkor az alma
    // harmoszor gyorsabban megy jobbfele, ment lefele, es ugyfogjuk latni, mintha lejtosen balra le menne. 
    
    // a mozgas sebesseget a sebx es seby szamok nagysaga adja meg: ha kicsik, akkor az alma kcsiit mozdul el, ha nagyok, 
    // akkor az alma sokat megy arrebb egy adott ido alatt, vagyis gyorsabbnak fogjuk latni

    image(alma, x, y, 100, 100);
    
    // eger kattintasra az almanak sorsolodjon uj irany   
    if (mousePressed){
        sebx = random(-2.5, 2.5);   
        seby = random(-2.5, 2.5);   
    }

    // a jol lathatosag celjabol kirajzolok egy egyenest 
    //ami megmutatja hogy mere megy az alma es milyen sebesseggel
    // es ki is irom
    fill(#000000);
    line(width/2, height/2, width/2+sebx*20, height/2+seby*20);
    text("pozicio: ("+x+","+y+")", width/2, height/2+10);
    text("sebesseg: ("+sebx+","+seby+")", width/2, height/2+20);

    // latszik hogy az alma akkor is van valahol ha eppen kint van a kepbol
    // es lehet neki addig ij iranyokat sorsolni amig vissza nem jon

}