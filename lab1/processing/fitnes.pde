void cardio_draw()
{
  pushStyle();
  if(avg<=70)
  { 
    background(0, 161, 37);
  }
  else if(avg>70 && avg<=80)
  {
    background(167,228, 0);
  }
  else if(avg>80 && avg<=90)
  {
    background(220, 228, 0);
  }
  else if(avg>90 && avg<=100)
  {
    background(228, 182, 0);
  }
  else if(avg>100)
  {
    background(228, 61, 0);
  }
  
  fill(255);
  textSize(35);
  PFont font;
  font = createFont("Helvetica_Roman.ttf", 128);
  
  textFont(font, 80);
  textAlign(CENTER, CENTER);
  text("Fitness Mode", width/2, top_ttl_mrgn);
  
  textAlign(LEFT, LEFT);
  textFont(font, 30);
  
  if(avg<=70) { 
    text("Your cardiozone is: 1 [Very Light]", left_margin, top_margin + text_space);
  } else if(avg>70 && avg<=80) {
    text("Your cardiozone is: 2 [Light]", left_margin, top_margin + text_space);
  } else if(avg>80 && avg<=90) {
    text("Your cardiozone is: 3 [Moderate]", left_margin, top_margin + text_space);
  } else if(avg>90 && avg<=100) {
    text("Your cardiozone is: 4 [Hard]", left_margin, top_margin + text_space);
  } else if(avg>100) {
    text("Your cardiozone is: 5 [Maximum]", left_margin, top_margin + text_space);
  }
  
  popStyle();

}
