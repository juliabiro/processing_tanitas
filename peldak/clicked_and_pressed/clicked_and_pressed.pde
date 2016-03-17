// különbség mouse clicked és mous epressed között
// az egérkattintás elkapását két különböző módon is meg lehet csinálni
// mind a két módon megpróbáljuk számolni a kattintásokat
// és egy-egy ki-be kapcsolót iráníyítani vele 

// ezekkel a változókkal próbáljuk számolni, hogy hányszor nyomtuk meg az egeret
int clicked = 0; 
int pressed = 0;

//ez egy ki-be kapcsoló változó, amit egér kattintásra ki és be kapcsolunk
boolean clicked_on;
boolean pressed_on;

void setup () {
  size (600, 400);
  textSize(26);
  fill(#000000);

  clicked_on = false;
  pressed_on = false;
}


void draw() {
  background(#ffffff);

  // itt kiírom a kattintások számát és a kapcoslók állapotát is
  text("clicked count: "+clicked, 50, 100);
  text("pressed count: "+pressed, 300, 100);

  text("clicked_on: "+clicked_on, 50, 300);
  text("pressed_on: "+pressed_on, 300, 300);


  // amíg az egér gombja le van nyomva, 
  // addig számljuk a lenyomások sázmát
  // és ki be kapcsolunk. 
  // visoznt mivel egy egér kattintás hosszan tart, 
  // egy kattintásra ez a kód akár tízszer is lefut
  if (mousePressed) {
    pressed+=1;

    if (pressed_on) {
      pressed_on = false;
    } else {
      pressed_on = true;
    }
  }
}

// ez a függvény amit a processing hoz létre és mi töltjük fel
// ez egyetlen egyszer lefut, ha megnyomjuk az egeret

void mouseClicked() {
  clicked+=1;

  if (clicked_on) {
    clicked_on = false;
  } else {
    clicked_on = true;
  }
}