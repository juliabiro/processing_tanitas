class Labda {
  float x; 
  float y;
  float atmero;
  color szin;

  void rajzold_ki() {
    noStroke();
    fill(szin);
    ellipse(x, y, atmero, atmero);
  }


  void fel() {
    y=y-1;
  }

  void le() {
    y=y+1;
  }

  void jobbra() {
    x=x+1;
  }

  void balra() {
    x=x-1;
  }
  
  boolean bent_van(){
    if (x-atmero/2>0 && x+atmero/2<width && y-atmero/2>0 && y+atmero/2<height){
      return true;
    } else {
      return false;
    }
  }
}

Labda piros_labda = new Labda();
Labda kek_labda = new Labda();
void setup() {
  size(500, 500);

  piros_labda.x=300;
  piros_labda.y=300;
  piros_labda.atmero=100;
  piros_labda.szin=color(#ff0000);


  kek_labda.x=100;
  kek_labda.y=100;
  kek_labda.atmero=150;
  kek_labda.szin=color(#0000ff);
}

void draw() {
  background(#ffffff);

  piros_labda.rajzold_ki();
  kek_labda.rajzold_ki();

  if (piros_labda.bent_van()) {
    piros_labda.balra();
  } 
  if (kek_labda.bent_van()) {
    kek_labda.le();
  }
}