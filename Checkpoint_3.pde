//Hysan Lee
//2-3
//Feb 26, 2025

color Aquamarine = #5DFDCB;
color paleAzure = #90D7FF;
color lightCyan = #C9F9FF;
color columbiaBlue = #BFD0E0;
color frenchGray = #B8B3BE;
color white = #ffffff;
color indColor;

void setup () {
  size(600, 600);
  strokeWeight(5);
  stroke(columbiaBlue);
  indColor = 255;
}

void draw () {
  background (frenchGray);
  
  //buttons
  
  if (dist(100, 500, mouseX, mouseY) < 50) {
  stroke(white);
  } else {
    stroke(Aquamarine);
  }
  fill(Aquamarine);
  circle(100, 500, 100);
  
  if (dist(300, 500, mouseX, mouseY) < 50) {
  stroke(white);
  } else {
    stroke(paleAzure);
  }
  fill(paleAzure);
  circle(300, 500, 100);
  
  if (dist(500, 500, mouseX, mouseY) < 50) {
  stroke(white);
  } else {
  stroke (lightCyan);
  }
  fill(lightCyan);
  circle(500, 500, 100);
  
  //indicator
  stroke(white);
  fill(indColor);
  square(150, 50, 300);
}

void mouseReleased() {
 if (dist(100, 500, mouseX, mouseY) < 50)
 indColor = Aquamarine;
 if (dist(300, 500, mouseX, mouseY) < 50)
 indColor = paleAzure;
 if (dist(500, 500, mouseX, mouseY) < 50)
 indColor = lightCyan;

}
