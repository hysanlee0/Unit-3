//Hysan Lee
//2-3
//March 3, 2025

color lightGreen = #A2FAA3;
color cambridgeBlue = #92C9B1;
color uclaBlue = #4f759B;
color ultraViolet = #5D5179;
color palatinate = #571F4E;

float sliderX1;
float sliderX2;
float shade;
float thick;

void setup() {
  size (800, 600);
  strokeWeight(10);
  stroke(cambridgeBlue);
  sliderX1 = 400;
  sliderX2 = 400;
}

void draw() {
  background(shade);
  shade = map(sliderX1, 100, 700, 0, 255);
  strokeWeight(thick);
  thick = map(sliderX2, 100, 700, 1, 15);
  fill(palatinate);
  line (100, 200, 700, 200);
  circle(sliderX1, 200, 100);
  line (100, 400, 700, 400);
  circle(sliderX2, 400, 100);
}

void mouseDragged () {
  controlSlider();
}
void mouseReleased () {
  controlSlider();
}

void controlSlider() {
  if (mouseX > 100 && mouseX < 700 && mouseY > 150 && mouseY < 250) {
    sliderX1 = mouseX;
  }
  if (mouseX > 100 && mouseX < 700 && mouseY > 350 && mouseY < 450) {
    sliderX2 = mouseX;
  }
 
}
