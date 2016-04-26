PImage flowers;
void setup(){
size(800, 800);
flowers =  loadImage("flowers.jpg");
}
void draw(){
background(flowers);
  
PImage flowerparts = flowers.get(mouseX, mouseY, 60, 60); 
image(flowerparts, 620, 620); 
}