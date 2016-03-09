

size(500, 500);
int x=0; 
while (x<500) {

  int y=0;
  while (y<400) {
    rect(x, y, 10, 10);
    y+=40;
  }
  x+=30;
}