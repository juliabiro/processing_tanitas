class Csillag {
  float x=0;
  float y=0;
  float r=0;

  void ragyogj() {
    fill(#F7F7A2);
    noStroke();
    ellipse(x, y, r, r);
  }

  void szuless() {
    x=random(0, width);
    y=random(0, height);
    r=random(1, 5);
  }
}

class Hold {
  float x;
  float y;
  float r;

  void vilagits() {
    fill(#F7F7A2);
    noStroke();
    ellipse(x, y, r*2, r*2);
    fill(#2C2AB7);
    ellipse(x+r*0.7, y-r*0.7, 2*r, 2*r);
  }
  
  void mozogj(){
    x=x+0.5;
  
  }
}

Csillag[] csillagok= new Csillag[1000];
Hold hold=new Hold();

void setup() {
  size(500, 500);
  
  int i= 0; 
  while (i<1000){
    csillagok[i]=new Csillag();
    csillagok[i].szuless();
    i=i+1;
  }
  hold.x=50;
  hold.y=75;
  hold.r=40;
}

void draw() {
  background(#2C2AB7);
  
  hold.vilagits();
  hold.mozogj();
  
  int i= 0; 
  while (i<1000){
    csillagok[i].ragyogj();
    i=i+1;
  }
}