float x, y;
float s;
float r;

void setup() {
  size(600, 600);
  s=0;
  r=100;
}

void hullamok() {
  y = 600;
  color c;
  while (y>300) {
    c = color(26, y/4, 150);
    x=s;
    while (x<700) {
      fill(c);
      stroke(#041A39);
      ellipse(x+s, y, r, r);
      noStroke();
      fill(#ffffff);
      ellipse(x+30+s, y-30, r-5, r-5);
      x+=50;
    }
    y-=50;
  }
}
void draw() {
  background(#ffffff);
  hullamok();
  s+=1;
  if (s>0) {
    s=-50;
  }
}