
String avatar = "https://api.adorable.io/avatars/285/";

String nevem ="julia";
String url = avatar + nevem;

PImage kep =loadImage(url, "png");
size(500,500);
image(kep, 0, 0 );
text(url, 0,50);