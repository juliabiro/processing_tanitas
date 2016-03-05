// a random parancs egy float tipusu szamot sorsol ki nekunk egy adott intervallumban
// a szamot beletehetjuk egy valtozoba, vagy pedig hasznalhatjuk barhol direkten
void setup(){
    size(500, 500); 

    // a fill parancs elso parameteret random sorsoljuk
    fill(random(0, 255), 0, 0); 
    // random pirossagu kor a bal felso sarokban
    ellipse(50, 50, 50, 50);
}

float kekseg=0;
void draw(){
    fill(0, 0, kekseg);
    
    // ha lenyomjuk az egergombot, akkor uj keksegertek sorsolodik a kekseg nevu valtozoba
    if (mousePressed){
        kekseg=random(0, 255);
    }

    //random keksegu ellipszis kozepen
    ellipse(250, 150, 150, 100);
}
