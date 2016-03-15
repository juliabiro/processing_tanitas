size(600, 600);
background(#2F1779);
float x;
float y;
float r;
int starcount=0;
fill(#FCF16E);
noStroke();
while (starcount<1000) {
  x = random(0, 600);
  y = random(0, 600);
  r = random(0.1, 5);
  ellipse(x, y, r, r);

  starcount+=1;
}