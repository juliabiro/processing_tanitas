// koncentrikus korok
// ez egy m'sik while példa, itt az r változót vizsgáljuk és 
// változtatjuk. 
// az egyetlen különbség az első példához képest, 
// hogy itt ezt a változót nem a hely, hanem a méret befolyásolására hasnzáljuk

int r = 1; 

size(500, 500);
noFill();
strokeWeight(2);
while (r<500) {
  stroke(r/2, 0, 0);
  ellipse(250, 250, r, r);

  r+=20;
}