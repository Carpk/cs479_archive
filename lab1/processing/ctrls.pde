boolean inStress;

void keyPressed() {
  switch (key) {
    case 'm':
      inStress = false;
      tab = "menu";
      break;
      
     case 'g':
      inStress = false;
      tab = "try";
      break;
      
    case 'b':
      inStress = false;
      tab = "timer";
      break;
      
    case 'r':
      inStress = false;
      tab = "rx_ss";
      break;
      
    case 'f':
      inStress = false;
      tab = "fitnes";
      break;
      
    case 's':
      inStress = false;
      tab = "sumry";
      break;
      
    case '2':
      inStress = false;
      tab = "processing";
      break;
      
    case 'n':
      inStress = false;
      tab = "graph";
      break;
      
    //case 's':
    //  inStress = true;
    //  tab = "intro_tab";
    //  break;
      
    case '1':
      inStress = true;
      tab = "relaxres";
      break;
      
    case '5':
      inStress = true;
      tab = "relax";
      break;
      
    case 'h':
      inStress = true;
      tab = "resting";
      break;
  }
}
