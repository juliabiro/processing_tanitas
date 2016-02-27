import http.requests.*;
size(500, 500);



//http lekeres es json feldolgozas
String query="http://api.giphy.com/v1/gifs/search?q=funny+cat&api_key=dc6zaTOxFJmzC";
GetRequest get = new GetRequest(query);
get.send();
JSONObject ret=JSONObject.parse(get.getContent());
//println(ret);
String url= ret.getJSONArray("data").getJSONObject(0).getJSONObject("images").getJSONObject("original").getString("url");
println(url);

PImage webimage;

webimage =loadImage(url, "gif");
image(webimage, 0, 0); 