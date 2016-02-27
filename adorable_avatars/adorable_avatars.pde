size(300, 300);


// kep kirajzolasa netrol
String base_url="https://api.adorable.io/avatars/";
String myname="Julia";
int meret=300;


PImage webimage;

// kep nevenek osszerakasa, string operacio
String url =base_url+meret+"/"+myname+".png";
webimage =loadImage(url,"png");
image(webimage, 0, 0); 