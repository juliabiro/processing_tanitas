void setup(){
size(500, 500);
}

void draw(){
if (mouseX<200){
    if (mouseY<200){
      background(#ff0000);
    } else {
        background(#ffff00);
    }
  } else if (mouseX>300 && mouseY>300){
    background(#00ff00);
  } else {
  
    background(#ffffff);
  }

  if (mouseX<200 || mouseX>400){
    ellipse(mouseX, mouseY, 50,50);
  } else{
    rect(mouseX, mouseY,50,50);
  }
}