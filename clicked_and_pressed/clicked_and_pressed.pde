int clicked = 0; 
int pressed = 0;

boolean clicked_on;
boolean pressed_on;

void setup () {
  size (600, 400);
  textSize(26);
  fill(#000000);

  clicked_on = false;
  pressed_on = false;
}

void mouseClicked() {
  clicked+=1;

  if (clicked_on) {
    clicked_on = false;
  } else {
    clicked_on = true;
  }
}

void draw() {
  background(#ffffff);

  text("clicked count: "+clicked, 50, 100);
  text("pressed count: "+pressed, 300, 100);

  text("clicked_on: "+clicked_on, 50, 300);
  text("pressed_on: "+pressed_on, 300, 300);


  if (mousePressed) {
    pressed+=1;

    if (pressed_on) {
      pressed_on = false;
    } else {
      pressed_on = true;
    }
  }
}