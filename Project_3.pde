//Hysan Lee
//2-3
//March 5, 2025

color red = #d00000;
color orange = #e85d04;
color yellow = #ffee32;
color green = #38b000;
color blue = #4361ee;
color violet = #7209b7;
color pink = #ffafcc;
color grey = #9B9B9B;
color black = #000000;
color white = #FFFFFF;
color indColor;

int x;
int y;
int r;
float sliderY;
float thickness;


void setup() {
  size (800, 800);
  background(white);
  fill(grey);
  strokeWeight(5);
  indColor = 255;
  sliderY = 100;
}


void draw() {
noStroke();
fill(grey);
rect (0, 0, 800, 200);

//slider
strokeWeight(5);
stroke(black);
fill(white);
line(450, 25, 450, 175); 
circle(450, sliderY, 30);

//buttons
tactile(50, 50, 38);
fill(red);
circle(50, 50, 75);

tactile(50, 150, 38);
fill(orange);
circle(50, 150, 75);

tactile(150, 50, 38);
fill(yellow);
circle(150, 50, 75);

tactile(150, 150, 38);
fill(green);
circle(150, 150, 75);

tactile(250, 50, 38);
fill(blue);
circle(250, 50, 75);

tactile(250, 150, 38);
fill(violet);
circle(250, 150, 75);

tactile(350, 50, 38);
fill(pink);
circle(350, 50, 75);

tactile(350, 150, 38);
fill(black);
circle(350, 150, 75);

//indicator
stroke(indColor);
strokeWeight(thickness);
line(500, 25, 500, 175);
thickness = map(sliderY, 25, 175, 1, 15);
}

void mouseReleased() {
 controlSlider();
 if (dist(50, 50, mouseX, mouseY) < 37.5)
 indColor = red;
 if (dist(50, 150, mouseX, mouseY) < 37.5)
 indColor = orange;
 if (dist(150, 50, mouseX, mouseY) < 37.5)
 indColor = yellow;
 if (dist(150, 150, mouseX, mouseY) < 37.5)
 indColor = green;
 if (dist(250, 50, mouseX, mouseY) < 37.5)
 indColor = blue;
 if (dist(250, 150, mouseX, mouseY) < 37.5)
 indColor = violet;
 if (dist(350, 50, mouseX, mouseY) < 37.5)
 indColor = pink;
 if (dist(350, 150, mouseX, mouseY) < 37.5)
 indColor = black;
}

void tactile (int x, int y, int r) {
if (dist(x, y, mouseX, mouseY) < r) {
  stroke(white);
  } else {
    stroke(grey);
  }
}

void mouseDragged () {
  controlSlider();
  if (mouseY > 200) {
    stroke (indColor);
    strokeWeight (thickness);
  line(pmouseX, pmouseY, mouseX, mouseY);
  }
}

void controlSlider () {
  if (mouseX > 420 && mouseX < 480 && mouseY > 25 && mouseY < 175) {
    sliderY = mouseY;
    }
  }
