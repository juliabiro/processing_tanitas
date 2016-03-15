int x; 
int y;
int sugar =100;
void setup() {
  size(500, 500);
  background(#ff0000);
  x=250;
  y=250;
}

void draw() {
  noStroke();

  if (abs(x-mouseX)<sugar && abs(y-mouseY)<sugar) {
    background(#00ff00);
  } else {
    background(#ff00ff);
  }

  ellipse( x, y, sugar, sugar);
}