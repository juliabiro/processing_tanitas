float x1, x2, y1, y2;

size(600, 600);
x1=300;
x2=300;
y1=300;
y2=300;

float size=0;
while (size<300) {

  size+=10;
  x2=x1+size;
  line(x1, y1, x2, y1);
  
  size+=10;
  y2=y1+size;
  line(x2, y1, x2, y2);
  
  size+=10;
  x1=x2-size;
  line(x1, y2, x2, y2);
  
  size+=10;
  y1=y2-size;
  line(x1, y1, x1, y2);
}