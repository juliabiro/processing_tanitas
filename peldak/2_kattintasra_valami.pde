// Ezt tekinthetitek kodkeret sablonnak. Ha mozgo vagy interaktiv programot akartok irni, akkor mindig kell a setup es a draw

// ez (marmint a kapcsos zarojelek kozti resz) egyszer fut le a program elejeme
void setup(){
    size(500, 500);
}

// ez masodpercenkent hatvanszor lefut
void draw(){
    bg(#ff0000);

    // ez csak akkor fut le, ha ;ppen nyomva tartjuk az eger gombjat
    if (mousePressed){
        bg(#00ff00);    
    }
}
