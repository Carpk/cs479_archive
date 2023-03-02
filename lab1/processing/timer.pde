int savedTime;
int totalTime = 10000;

void timer_setup() {
  savedTime = millis();
}

void timer_draw() {
  pushStyle();
  background(0, 95, 129);
  fill(255);
  textSize(35);
  PFont font;
  font = createFont("Helvetica_Roman.ttf", 128);
  
  textFont(font, 80);
  textAlign(CENTER, CENTER);
  text("Mode I", width/2, top_ttl_mrgn);
  textAlign(LEFT, LEFT);
  textFont(font, 30);
  text("Starting the timer (10 seconds)", left_margin, top_margin);
  int passedTime = millis() - savedTime;
  if (passedTime > totalTime) {
    text("Click 'h' to see your resting heartrate", left_margin, top_margin + text_space);
    text("Click 'n' to view the graph for cardiozone", left_margin, top_margin + text_space * 2);
  }
  popStyle();
}
