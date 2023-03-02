int screenWidth = 400;
int screenHeight = 400;

color bgColor1 = color(185, 221, 235); // a light blue color
color bgColor2 = color(200, 235, 185); // a light green color

int startTime; // variable to store the start time of each phase
int inhaleTime = 3000; // duration of inhale phase in milliseconds
int exhaleTime = 7000; // duration of exhale phase in milliseconds

int phase = 1; // 1 for inhale, 2 for exhale
boolean doOnce = true;

// screen if user is taking bad breaths
void drawBadBreaths() {
  background(255, 0, 0); // set background color to red
  textSize(30);
  text("Please relax, your breaths are not matching the breath pattern", width / 2 - 200, height / 2);
}

// If for 3 consecutive breaths this criterion is not met an indicator on your interface should be 
//activated. add to array for each iteration
ArrayList<Boolean> consecutive = new ArrayList<Boolean>();

void setup2() {
  background(bgColor1); // set initial background color to light blue
  textSize(40);
  textAlign(CENTER);
  fill(0);
  text("Breathe in...", screenWidth/2, screenHeight/2);
  startTime = millis(); // store the start time of the inhale phase
}

void doMeditation() {
  if(doOnce) {
    setup2();
    doOnce = false;
  }
  int elapsedTime = millis() - startTime; // calculate the elapsed time
  if (phase == 1 && elapsedTime >= inhaleTime) {
    // transition to exhale phase
    phase = 2;
    startTime = millis(); // store the start time of the exhale phase
    background(bgColor2); // change background color to light green
    text("...and exhale", screenWidth/2, screenHeight/2);
  } else if (phase == 2 && elapsedTime >= exhaleTime) {
    // reset timer and transition back to inhale phase
    phase = 1;
    startTime = millis(); // reset the start time to the current time
    background(bgColor1); // change background color to light blue
    text("Breathe in...", screenWidth/2, screenHeight/2);
  }
  // If for bad breath then add false to array.
  
  // if consecutive array has 3 falses then print to screen
  //for (Boolean bool : consecutive) {
  //  part.display();
  //}
}
