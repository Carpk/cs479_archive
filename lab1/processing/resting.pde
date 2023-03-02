
void resting_draw() {
  pushStyle();
  background(0, 95, 129);
  fill(255);
  textSize(35);
  PFont font;
  font = createFont("Helvetica_Roman.ttf", 128);
  
  textFont(font, 80);
  textAlign(CENTER, CENTER);
  text("Fitness Mode", width/2, top_ttl_mrgn);
  
  textAlign(LEFT, LEFT);
  textFont(font, 30);
  text("Your resting heartrate is: "+bpm, left_margin, top_margin + text_space);
  popStyle();

}
