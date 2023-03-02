void menu() {
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
  text("∆ Press 's' for Summary report", left_margin, top_margin);
  text("∆ Press 'f' for Fitness Mode", left_margin, top_margin + text_space);
  text("∆ Press 'r' for Relax & Stress", left_margin, top_margin + text_space * 2);
  popStyle();

}
