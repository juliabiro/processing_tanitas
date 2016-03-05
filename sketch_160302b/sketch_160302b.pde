
PImage alma;
int x=0;
int y=0;

int sebx=1;
int seby =1;
void setup () {
  alma=loadImage("http://api.adorable.io/avatars/face/eyes0/nose3/mouth1/eeeeee", "png");

  size(500, 500);
}

void draw() {
  background(0);
  x=x+sebx;
  y=y+seby;

  image (alma, x, y, 50, 50);

  if (x> 450 || mouseX>250) {
    sebx=0;
    seby=0;
  }
}