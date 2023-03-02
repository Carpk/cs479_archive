XYChart lineChart;
FloatList lineChartX;
FloatList lineChartY;
int hb;
int total;
int count;
int avg;

int savedT;
int totalT = 10000;

void graph_setup() {
  savedT = millis();
  lineChart = new XYChart(this);
  lineChartX = new FloatList();
  lineChartY = new FloatList();
  lineChart.setData(lineChartX.array(), lineChartY.array());
  
  lineChart.showXAxis(true);
  lineChart.showYAxis(true);
  lineChart.setMinY(0);
  
  lineChart.setYFormat("00");
  lineChart.setXFormat("0");
  
  lineChart.setPointColour(color(0));
  
  lineChart.setPointSize(2);
  lineChart.setLineWidth(10);
  
  count = 1;
  total=0;
}

void graph_draw() {
  background(0);
  textSize(9);
  
  lineChart.draw(15, 15, width - 30, height - 30);
  fill(255);
  rect(500, 200, 0, 0);
  
  fill(255);
  textSize(20);
  PFont font;
  font = createFont("Helvetica_Roman.ttf", 128);
  textFont(font, 25);
  text("Average heartrate: "+avg, 70, 30);
  text("Cardio started for 10 seconds", 420, 30);
  int passedT = millis() - savedT;
  if (passedT > totalT) {
    text("Click 'w' to see your cardiozone", 420, 300);
  }
  if(hb<=75)
  {
    lineChart.setLineColour(color(0,161,37));
  }
  else if(hb>=75 && hb<=80)
  {
    lineChart.setLineColour(color(167,228,0));
  }
  else if(hb>80 && hb<=85)
  {
    lineChart.setLineColour(color(220,228,0));
  }
  else if(hb>85 && hb<=90)
  {
    lineChart.setLineColour(color(228,182,0));
  }
  else if(hb>90 && hb<=100)
  {
    lineChart.setLineColour(color(228,121,0));
  }
  else if(hb>100)
  {
    lineChart.setLineColour(color(228,61,0));
  }
}

void graph_serialEvent(float val) {
  count++;
  hb=(int)val;
  total+=hb;
  avg=total/count;
  lineChartX.append(count);
  lineChartY.append(val);
  lineChart.setData(lineChartX.array(), lineChartY.array());
}
