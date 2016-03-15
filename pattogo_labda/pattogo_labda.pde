float x; 
float y; 
float sebx; 
float seby; 
float vely; 
float r;
int score;

void setup() {
  size(600, 600);
  noStroke();
  y=600;
  x=300;
  vely=0.2;
  sebx=random(-1,1);
  seby=12;
  r=100;
}


void draw() {
  background(#ffffff);
  fill(#ff0000);
  ellipse(x, y, r, r);
  x+=sebx;
  y+=seby;
  seby+=vely;

  if (y>600) {
    seby=seby*-1;
  }

  if (x<0 || x >600) {
    sebx=sebx*-1;
  }
}