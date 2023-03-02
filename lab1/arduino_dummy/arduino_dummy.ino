// shawn klein 2/8/23
// Arduino to dummy serial output for processing

// connection config
unsigned long const baudRate = 115200;
const int buzzer = 8;

// application config
int const delayTime = 375; // time in ms
int const maxNum = 71; // max BPM
int const minNum = 58; // min BPM

float currBPM = 62.0;
bool incBPM = true;
bool secBuz = false;


void setup() {
  pinMode(buzzer, OUTPUT);
  Serial.begin(baudRate);
//  Serial.println("Setting up");
}

void loop() {
  if (secBuz){
      tone(buzzer, 1000);
      delay(200);
      noTone(buzzer); 
    secBuz = false;
  }
  if (currBPM >= maxNum) {
    incBPM = false;
  } else if (currBPM <= minNum) {
    incBPM = true;
  }

  if (incBPM) {
    currBPM++;
  } else {
    currBPM--;
  }

  while (Serial.available() > 0) {
    char chars = Serial.read();
    
    if (chars == '1') {
      tone(buzzer, 1000);
      delay(200);
      noTone(buzzer);
      secBuz = true;
    }
  }
  
  
  Serial.print(currBPM);
  Serial.print(",");
  Serial.print(98.0);
  Serial.print(",");
  Serial.print(87.0);
  Serial.println();

  delay(delayTime);
}
