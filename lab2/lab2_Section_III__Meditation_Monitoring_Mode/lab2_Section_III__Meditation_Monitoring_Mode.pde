// References: chat.openai.com

// Set canvas size and background color
void setup() {
  size(800, 800);
  background(221, 230, 235); // a light blue-grey color
}
void drawBeforeStart() {
  // Draw sky
  noStroke();
  fill(176, 226, 255); // a light blue color
  rect(0, 0, width, height);

  // Draw cloud
  noStroke();
  fill(255);
  ellipse(frameCount % width, height / 3, 100, 70); // move cloud horizontally
  // add the text to the UI
  textSize(30);
  fill(84, 92, 95); // a dark grey color
  text("Meditation monitoring mode push V to start", width / 2 - 200, height / 2);
}
// Define a variable to keep track of the current screen
int currentScreen = 1;

// Draw the sky and cloud
void draw() {
  if (currentScreen == 1) {
    drawBeforeStart();
  } else {
    doMeditation();
  }
}


void keyPressed() {
  if (key == 'v') {
    // Switch to a new screen by changing the background color
    if (currentScreen == 1) {
      currentScreen = 2; // go into startMeditationMode
    } else {
      currentScreen = 1; // call drawBeforeStart
    }
  }
}
