class Labda{
  float x; 
  float y;
  float atmero;
  color szin;
  
  void rajzold_ki(){
    noStroke();
    fill(szin);
    ellipse(x, y, atmero, atmero);
  }
}

Labda piros_labda = new Labda();
Labda kek_labda = new Labda();
void setup(){
  size(500,500);

  piros_labda.x=300;
  piros_labda.y=300;
  piros_labda.atmero=100;
  piros_labda.szin=color(#ff0000);
  
  
  kek_labda.x=100;
  kek_labda.y=100;
  kek_labda.atmero=150;
  kek_labda.szin=color(#0000ff);
  
}

void draw(){
  piros_labda.rajzold_ki();
  kek_labda.rajzold_ki();
}