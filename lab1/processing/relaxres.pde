int savedTi;
int totalTi = 10000;

void relaxres_setup() {
  savedTi = millis();
}

void relaxres_draw() {
  pushStyle();
  background(0, 95, 129);
  fill(255);
  textSize(35);
  PFont font;
  font = createFont("Helvetica_Roman.ttf", 128);
  
  textFont(font, 80);
  textAlign(CENTER, CENTER);
  text("Stress & Relax", width/2, top_ttl_mrgn);
  textAlign(LEFT, LEFT);
  textFont(font, 30);
  text("Listen to a relaxing music and try to relax (10 seconds)", left_margin, top_margin);
  
  int passedTime = millis() - savedTime;
  if (passedTime > totalTime) {
    text("Click '5' to see your resting heartrate", left_margin, top_margin + text_space);
  }
  
  popStyle();
}
