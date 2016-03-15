void setup() {

  size(600, 600);
}

void hullamok(){
  float r=100;
  float x, y;
  y = 600;
  color c;
  while (y>300) {
    c = color(26, y/4, 150);
    x=y/100; 

    while (x<700) {
      fill(c);
      stroke(#041A39);
      ellipse(x, y, r, r);
      noStroke();
      fill(#ffffff);
      ellipse(x+30, y-30, r, r);
      x+=50;
    }
    y-=50;
  }
}
void draw() {
  background(#ffffff);
  hullamok();
}