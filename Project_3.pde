//Hysan Lee
//2-3
//March 5, 2025
PImage banana;
boolean stampOn;

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
int toggle = 1;


void setup() {
  size (800, 800);
  background(white);
  fill(grey);
  strokeWeight(5);
  indColor = 255;
  sliderY = 100;
  banana = loadImage("Banana.png");
  stampOn = false;
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
sliderTactile(450, 30);
circle (450, sliderY, 30);

//buttons
circleTactile(red, 50, 50, 75);

circleTactile(orange, 50, 150, 75);

circleTactile(yellow, 150, 50, 75);

circleTactile(green, 150, 150, 75);

circleTactile(blue, 250, 50, 75);

circleTactile(violet, 250, 150, 75);

circleTactile(pink, 350, 50, 75);

circleTactile(black, 350, 150, 75);

//indicator
stroke(indColor);
strokeWeight(thickness);
line(500, 25, 500, 175);
thickness = map(sliderY, 25, 175, 1, 15);

//stamp
fill(white);
strokeWeight(5);
stampTactile();
stampToggle();
rect(550, 30, 75, 75);
image (banana, 550, 30, 75, 75);
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
 
 //stamp button
 if (mouseX > 550 && mouseX < 625 && mouseY > 30 && mouseY < 105) {
   stampOn = !stampOn;
 }
}

void stampTactile () {
  if (mouseX > 550 && mouseX < 625 && mouseY > 30 && mouseY < 105){
  stroke(black);
  } else {
    stroke (white);
  }
}

void circleTactile (color c, int x, int y, int r) {
  if (dist(x, y, mouseX, mouseY) < r - 37.5) {
  stroke(white);
  } else {
    stroke(grey);
  }
  fill(c);
  circle(x, y, r);
}
void mousePressed() {
 if (mouseY > 200) {
    stroke (indColor);
    strokeWeight (thickness);
  line(pmouseX, pmouseY, mouseX, mouseY);
  } 
}

void mouseDragged () {
  controlSlider();
  if (stampOn == false) {
    if (mouseY > 200) {
      stroke (indColor);
      strokeWeight (thickness);
    line(pmouseX, pmouseY, mouseX, mouseY);
    }
  } else {
    image (banana, mouseX, mouseY, 75, 75);
 }
}

void controlSlider () {
  if (mouseX > 435 && mouseX < 465 && mouseY > 25 && mouseY < 175) {
    sliderY = mouseY;
    }
  }
void sliderTactile (int x, int r) {
   if (dist(x, sliderY, mouseX, mouseY) < r - 15) {
       stroke (white);
        } else {
        stroke(black);
       }
}

void stampToggle () {
 if (stampOn == true) {
 stroke(red);
  }
}
