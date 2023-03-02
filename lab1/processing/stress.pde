int currBPM;
int red;
int green;
int blue;

void stress_setup() {
  red = 0;
  green = 0;
  blue = 0;
}

void stress_draw() {
  pushStyle();
  background(red, green, blue);
  fill(0);
  textSize(35);
  PFont font;
  font = createFont("Helvetica_Roman.ttf", 128);
  
  textFont(font, 50);
  textAlign(CENTER, CENTER);
  text("Stress test", width/2, top_ttl_mrgn);
  
  textAlign(LEFT, LEFT);
  textFont(font, 20);
  
  text("Think of your last difficult exam OR any upcoming difficult submissions", 150, top_margin);
  text("Buzzer will alert you if your heartrate crosses 95bpm", 150, top_margin + text_space);
  text("Current heartrate(bpm): " + currBPM, 150, top_margin + text_space * 2);
  
  popStyle();
}

void stress_serialEvent(float val) {
 currBPM = (int)val;
  
  if (currBPM<=75) {
    red = 124;
    green = 219;
    blue = 130;
  }
  else if(currBPM>75 && currBPM<=80) {
    red = 168;
    green = 219;
    blue = 124;
  }
  else if(currBPM>80 && currBPM<=85) {
    red = 197;
    green = 219;
    blue = 124;
  }
  else if(currBPM>85 && currBPM<=90) {
    red = 219;
    green = 206;
    blue = 124;
  }
  else if(currBPM>90 && currBPM<=95) {
    red = 219;
    green = 181;
    blue = 124;
  }
  else if(currBPM>95) {
    red = 219;
    green = 124;
    blue = 124;
  }
}
