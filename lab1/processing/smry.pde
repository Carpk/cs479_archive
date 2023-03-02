float bpm;
float oxy;
float confi;

void heart_draw() {
  pushStyle();
  background(0, 95, 129);
  fill(255);
  textSize(35);
  PFont font;
  font = createFont("Helvetica_Roman.ttf", 128);
  
  textFont(font, 80);
  textAlign(CENTER, CENTER);
  text("Heart Activity Monitor", width/2, top_ttl_mrgn);
  
  textAlign(LEFT, LEFT);
  textFont(font, 30);
  text("Current heartrate(bpm): " + bpm, left_margin, top_margin);
  text("Blood Oxygen Level: " + oxy, left_margin, top_margin + text_space);
  text("Confidence: " + confi, left_margin, top_margin + text_space * 2);
  text("Time between the beats: " + (float)(60/bpm) + "s", left_margin, top_margin + text_space * 3);
  
  popStyle();

}

void heart_serialEvent(float val, float val1, float val2)
{
  bpm = (int)val;
  oxy = (int)val1;
  confi = (int)val2;
}
