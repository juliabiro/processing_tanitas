int r = 1; 

size(500, 500);
noFill();
strokeWeight(2);
while (r<500) {
  stroke(r/2, 0, 0);
  ellipse(250, 250, r, r);

  r+=20;
}