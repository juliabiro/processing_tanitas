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
  vely=0.2;
  x=300;
  new_round();
}

void new_round() {
  y=600;
  sebx=random(-1, 1);
  seby=random(-15, -10);
  r= random(50, 100);
}
void draw() {
  background(#ffffff);

  text("score: "+score, 20, 20);

  fill(#ff0000);
  ellipse(x, y, r, r);


  x+=sebx;
  y+=seby;
  seby+=vely;

  if (y>700 || x<0 || x >600) {
    new_round();
  }
}

void mouseClicked() {
  if (is_ellipse_clicked()) {
    score+=1;
    new_round();
  }
}

boolean is_ellipse_clicked() {
  if (abs(x-mouseX)<r && abs(y-mouseY)<r) {
    return true;
  } else {
    return false;
  }
}