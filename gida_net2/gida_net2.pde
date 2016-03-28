size(500, 500);
int m = 250;
int x = 0;
boolean star = true; 

//star = false;

int M = star ? m : 2*m;

while(x <= M) {
  if(star) {
    line(m, x, m+x, m);
    line(m, x, m-x, m);
    line(m, 2*m - x, m+x, m);
    line(m, 2*m - x, m-x, m);  
  }
  else {
    line(0, x, x, 500);
  }
  x += 10;
}