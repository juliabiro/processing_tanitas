float y=400;
float ongombx=250;
Boolean lampa_on=false;
color hatter=#6673A2;
float sugar=50;
color lampaszin=#FFC115;

void setup() {
  size(500, 500);
  background(hatter);
}

void draw() {
  background(hatter);
      noStroke();

  fill(#ff3333);
   ellipse( ongombx, y, sugar, sugar);  
    if (abs(ongombx-mouseX)<sugar && abs(y-mouseY)<sugar) {
        lampa_on=true;
      } 
     
     if (mousePressed){
     lampa_on=false;
     }

  if (lampa_on) {
    fill(lampaszin, 70);
    triangle(250, -130, -50, 500, 550, 500);
  }
  
 
}