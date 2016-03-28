class Labda {
  float x; 
  float y;
  float atmero;
  color szin;
  
  float sebx=0;
  float seby =0; 

  void rajzold_ki() {
    noStroke();
    fill(szin);
    ellipse(x, y, atmero, atmero);
  }


  void felfele() {
    seby=seby-1;
  }

  void lefele() {
    seby=seby+1;
  }

  void jobbrafele() {
    sebx=sebx+1;
  }

  void balrafele() {
    sebx=sebx-1;
  }
  
  void mozogj(){
    x=x+sebx;
    y=y+seby;
    
    sebx=sebx*0.9;
    seby=seby*0.9;
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

void setup() {
  size(500, 500);

  piros_labda.x=300;
  piros_labda.y=300;
  piros_labda.atmero=100;
  piros_labda.szin=color(#ff0000);

}

void draw() {
  background(#ffffff);
  
  piros_labda.rajzold_ki();
  piros_labda.mozogj();
}

void keyPressed(){
  if (key == CODED){
    if (keyCode == DOWN){
      piros_labda.lefele();
    }
        if (keyCode == UP){
      piros_labda.felfele();
    }
        if (keyCode == LEFT){
      piros_labda.balrafele();
    }
        if (keyCode == RIGHT){
      piros_labda.jobbrafele();
    }
  }
}