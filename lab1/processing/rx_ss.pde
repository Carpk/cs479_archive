void rlx_strs() {
  pushStyle();
  background(0, 95, 129);
  fill(255);
  textSize(35);
  PFont font;
  font = createFont("Helvetica_Roman.ttf", 128);
  
  textFont(font, 80);
  textAlign(CENTER, CENTER);
  text("Relax & Stress", width/2, top_ttl_mrgn);
  
  textAlign(LEFT, LEFT);
  textFont(font, 30);
  text("∆ Press '1' to relax and measure heartrate", left_margin, top_margin);
  text("∆ Press '2' to perform stress test", left_margin, top_margin + text_space);
  popStyle();

}
