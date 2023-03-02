import processing.serial.*;
import org.gicentre.utils.stat.*;

Serial myPort;


void setup() {
  //String portName = Serial.list()[0];
  //println(portName);
  
  myPort = new Serial(this, portname, baudrate);
  myPort.bufferUntil('\n');
  
  size(1000, 600);
  
  graph_setup();
  timer_setup();
  if (tab == "relaxres") {
    relaxres_setup();
  }
}

void draw() {
  if (tab == "menu")
    menu();
  
  else if (tab == "sumry")
    heart_draw();
    
  else if (tab == "fitnes")
    cardio_draw();
    
  else if (tab == "graph")
    graph_draw();
    
  else if (tab == "processing")
    stress_draw();

  else if (tab == "stress")
    stress_draw();
    
  else if (tab == "try")
    try_draw();
  
  else if (tab == "timer")
    timer_draw();
  
  else if (tab == "rx_ss")
    rlx_strs();
    
  else if (tab == "relaxres")
    relaxres_draw();
    
  else if (tab == "relax")
    relax_draw();
    
  else if (tab == "resting")
    resting_draw();
}

void serialEvent(Serial myPort) {
  String tempVal = myPort.readStringUntil('\n');
  String res[] = tempVal.split(",");
  
  if (res[0] != null) {
    //res[0] = trim(res[0]);
    float bpm = float(res[0]);
    float oxy = float(res[1]);
    float con = float(res[2]);

    if(tab=="graph") {
      graph_serialEvent(bpm);
    }
    if(tab=="timer" || tab=="sumry" || tab=="relaxres") {
      heart_serialEvent(bpm, oxy, con);
    }
    
    stress_serialEvent(bpm);
    try_serialEvent(bpm);
    
    println(bpm);
    println(oxy);
    println(con);
    println("-----");
  }  
}
