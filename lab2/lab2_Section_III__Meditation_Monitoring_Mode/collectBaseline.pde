import processing.serial.*;

Serial myPort;        // the serial port
float sum = 0;        // variable to accumulate the sum of values
int count = 0;        // variable to count the number of values read
int startTime2;        // variable to store the start time
final int DURATION = 10000;  // duration to read values in milliseconds

void setup3() {
  size(200, 200);
  // replace with the name of your serial port and baud rate
  myPort = new Serial(this, "/dev/ttyACM0", 9600);
  startTime2 = millis();  // record the start time
}

void draw2() {
  // read data from the serial port
  while (myPort.available() > 0) {
    String valStr = myPort.readStringUntil('\n');  // read the next value
    if (valStr != null) {                           // check that the value is not null
      float val = Float.parseFloat(valStr.trim());  // parse the value as a float
      sum += val;                                   // add the value to the sum
      count++;                                      // increment the count of values
    }
  }
  
  // check if the time duration has elapsed
  int elapsedTime = millis() - startTime2;
  if (elapsedTime >= DURATION) {
    // compute the average of the values
    float avg = sum / count;
    // print the average to the console
    println("Average value: " + avg);
    // stop the program from looping
    noLoop();
  }
}
