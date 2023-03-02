float beats;
int count1;

void try_setup() {
  size(400, 300);
  background(255, 255, 255);
  stroke(0, 0, 0);
  int x0 = width / 2;
  int y0 = height / 2;
  line(0, y0, width, y0);
  line(x0, 0, x0, height);
  count1=1;
}

void try_draw() { 
  int xCoords = count1;
    if (beats < 80) {
      stroke(255, 0, 0);
    } else if (beats >= 80 && beats < 90) {
      stroke(0, 255, 0);
    } else {
      stroke(0, 0, 255);
    }
    int x1 = xCoords;
    int y1 = height;
    int x2 = xCoords;
    int y2 = height - (int)beats;
    line(x1, y1, x2, y2);
}

void try_serialEvent(float val) {
  beats = (int)val;
  count1+=1;
}
