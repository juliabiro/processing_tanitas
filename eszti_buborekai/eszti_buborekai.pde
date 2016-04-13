import ddf.minim.analysis.*;
import ddf.minim.*;
import ddf.minim.signals.*;

Minim minim;
AudioOutput out;
int e = 18;


float xkoordinate[] =  new float [e];
float ykoordinate[] = new float [e];

float size1[] = new float [e];

float s;
color sz[] = new color[e];

float xspeed[] = new float [e];
float yspeed[] = new float [e];
void setup()
{
  size(712, 700);
 
  ellipse1();
  minim = new Minim(this);
  out = minim.getLineOut(Minim.STEREO);
}

void draw()
{
  background(255);
  PFont mono;
mono = loadFont("Baskerville-Italic-48.vlw");
fill(0,0,0);
textFont(mono);
  stroke(0,0,0);
  textSize(25);
   text("Your life is your art.What are you creating today?",5,50);
  noStroke();
  fill(0);


  for (int i=0; i<e; ++i) {
    fill(sz[i]);
    ellipse(xkoordinate[i], ykoordinate[i], size1[i], size1[i]);
    xkoordinate[i] = xspeed[i] + xkoordinate[i];
    ykoordinate[i] = yspeed[i] + ykoordinate[i];



    if (keyCode == 'Z') {
      s=1;
      size1[1] = size1[1] +s;
    }
    if ( keyCode == 'S') {
      s=1;
      size1[2] = size1[2] + s;
    }
    if (keyCode == 'X') {

      s=1;
      size1[3] =   size1[3] +s;
    }
    if (keyCode == 'D') {

      s= 1;
      size1[4] =size1[4] +s;
    }
    if (keyCode == 'C') {

      s=1;
      size1[5] =  size1[5] + s;
    }
    if (keyCode == 'V') {

      s=1.5;
      size1[6] =   size1[6] +s;
    }
    if (keyCode == 'G') {

      s=1.3;
      size1[7] = size1[7] +s;
    }
    if (keyCode == 'B') {

      s=1.3;
      size1[8] =  size1[8] +s;
    }
    if (keyCode == 'H') {

      s=1.7;
      size1[9] =   size1[9] +s;
    }
    if (keyCode == 'N') {

      s=1.1;
      size1[10] = size1[10] +s;
    }
    if (keyCode == 'J') {

      s=1.9;
      size1[11] = size1[11] +s;
    }
    if (keyCode == 'M') {

      s=1.1;
      size1[12] = size1[12] +s;
    }
    if (keyCode == ',') {

      s=1.8;
      size1[13] =   size1[13] +s;
    }
    if (keyCode == 'L') {

      s=1.4;
      size1[14] = size1[14] +s;
    }
    if (keyCode == '.') {

      s=1.2;
      size1[15] =size1[15] +s;
    }
    if (keyCode == ';') {

      s=1.5;
      size1[16] = size1[16] +s;
    }
    if (keyCode == '/') {

      s=1.7;
      size1[17] =  size1[17] +s;
    }
    if ( size1[i] > 90 ) {
      s = size1[i] + -1*s;
    }
  }
}

void keyPressed()
{
  SineWave mySine;
  MyNote newNote;

  float pitch = 0;
  switch(key) {
  case 'z': 
    pitch = 262; 
    break;
  case 's': 
    pitch = 277; 
    break;
  case 'x': 
    pitch = 294; 
    break;
  case 'd': 
    pitch = 311; 
    break;
  case 'c': 
    pitch = 330; 
    break;
  case 'v': 
    pitch = 349; 
    break;
  case 'g': 
    pitch = 370; 
    break;
  case 'b': 
    pitch = 392; 
    break;
  case 'h': 
    pitch = 415; 
    break;
  case 'n': 
    pitch = 440; 
    break;
  case 'j': 
    pitch = 466; 
    break;
  case 'm': 
    pitch = 494; 
    break;
  case ',': 
    pitch = 523; 
    break;
  case 'l': 
    pitch = 554; 
    break;
  case '.': 
    pitch = 587; 
    break;
  case ';': 
    pitch = 622; 
    break;
  case '/': 
    pitch = 659; 
    break;
  }

  if (pitch > 0) {
    newNote = new MyNote(pitch, 0.2);
  }
}

void stop()
{
  out.close();
  minim.stop();

  super.stop();
}

class MyNote implements AudioSignal
{
  private float freq;
  private float level;
  private float alph;
  private SineWave sine;

  MyNote(float pitch, float amplitude)
  {
    freq = pitch;
    level = amplitude;
    sine = new SineWave(freq, level, out.sampleRate());
    alph = 0.9;
    out.addSignal(this);
  }

  void updateLevel()
  {
    level = level * alph;
    sine.setAmp(level);

    if (level < 0.01) {
      out.removeSignal(this);
    }
  }

  void generate(float [] samp)
  {
    sine.generate(samp);
    updateLevel();
  }

  void generate(float [] sampL, float [] sampR)
  {
    sine.generate(sampL, sampR);
    updateLevel();
  }
}
void ellipse1() {
  for ( int i=0; i<e; ++i ) {
    xkoordinate[i] = random(width);
    ykoordinate[i] = random(height);
    sz[i] =  color(random(0, 255), random(0, 255), random(0, 255),150);
    size1[i]= 30;
  }
}