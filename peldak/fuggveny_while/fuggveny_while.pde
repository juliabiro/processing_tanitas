// függvényeken belül is lehet használni változókat

int x;
int y;
int r;

// ez a fuggveny egy piros kort rajzol oda, ahova az x es y valtozok mutatnakk, 
// es a kors sugarat az r valtozo mondj ameg
void piros_kor(){
  fill(#ff0000);
  ellipse(x, y, r,r);
}

void setup(){
size(500, 500);
  // ket kort rajzolok
  x=100;
  y=200;
  r=50;
  piros_kor();
  
  x=300;
  y=200;
  r=150;
  piros_kor();
  
  
  // most pedig sokat
  x=35;
  y=300;
  r = 35;
  
  while (x<500){
  
    piros_kor();
    x=x+50;
  }
}