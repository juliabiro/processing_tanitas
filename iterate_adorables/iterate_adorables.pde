import http.requests.*;

String query="https://api.adorable.io/avatars/list";
GetRequest get = new GetRequest(query);
get.send();
JSONObject alloptions=JSONObject.parse(get.getContent());

JSONObject face_options=alloptions.getJSONObject("face");
String[] eyes=face_options.getJSONArray("eyes").getStringArray();
String[] nose=face_options.getJSONArray("nose").getStringArray();
String[] mouth=face_options.getJSONArray("mouth").getStringArray();


size(500, 50);
PImage kep;
int m=3;
for (int e=0; e<eyes.length; e++){
for (int n=0; n<nose.length; n++){

  float posx=e*50;
  float posy=n*50;
  String url="https://api.adorable.io/avatars/face/"+eyes[e]+"/"+nose[n]+"/"+mouth[m]+"/"+"8abc2e";
  image(loadImage(url, "png"), posx, posy, 50, 50);
  println(url);
}



}