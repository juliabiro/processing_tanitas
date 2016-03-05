
PImage webimage;
String base_url="https://api.adorable.io/avatars/face/";
int meret=300;
String url="";

void setup() {
  size(500, 500);


  // kep kirajzolasa netrol
  url=base_url+"eyes0/nose0/mouth0/eeeeee";
  webimage =loadImage(url, "png");
 url=base_url+"eyes0/nose0/mouth0/eeeeee";
  webimage =loadImage(url, "png");
 background(#eeeeee);

}
void draw() {
  // kep nevenek osszerakasa, string operacio

 
  if (mousePressed) {
    int eye=int(random(0, 10));

    int nose=int(random(0, 10));
    int mouth=int(random(0, 11 ));
    url=base_url+"eyes"+eye+"/nose"+nose+"/mouth"+mouth+"/eeeeee";
    webimage =loadImage(url, "png");
  image(webimage, mouseX, mouseY, 60, 60);
}

  }