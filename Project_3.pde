//Hysan Lee
//2-3
//March 5, 2025
PImage banana;
PImage eraser;
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
float lineThickness;
float stampThickness;
int toggle = 1;


void setup() {
  size (800, 800);
  background(white);
  fill(grey);
  strokeWeight(5);
  indColor = 255;
  sliderY = 100;
  banana = loadImage("Banana.png");
  eraser = loadImage("eraser.jpg");
  stampOn = false;
}


void draw() {
  //hotbar
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
  circleButton(red, 50, 50, 75);
  circleButton(orange, 50, 150, 75);
  circleButton(yellow, 150, 50, 75);
  circleButton(green, 150, 150, 75);
  circleButton(blue, 250, 50, 75);
  circleButton(violet, 250, 150, 75);
  circleButton(pink, 350, 50, 75);
  circleButton(black, 350, 150, 75);

  //indicator
  stroke(indColor);
  strokeWeight(lineThickness);
  line(500, 25, 500, 175);
  lineThickness = map(sliderY, 25, 175, 1, 15);

  //stamp
  strokeWeight (5);
  stampButton(white, 550, 30, 75, 75);
  image (banana, 550, 30, 75, 75);
  stampThickness = map(sliderY, 25, 175, 1, 150);

  //eraser
  rectButton(white, 550, 115, 75, 75);
  image (eraser, 555, 120, 65, 65);

  //NEW button
  newButton (675, 20, 100, 50);
  
  //SAVE button
  fill(white);
  saveButton (675, 80, 100, 50);
  
  //LOAD button
  fill(white);
  loadButton (675, 140, 100, 50);
}

void mouseReleased() {
  controlSlider();
  if (dist(50, 50, mouseX, mouseY) < 37.5) {
    indColor = red;
    stampOn = false;
  }
  if (dist(50, 150, mouseX, mouseY) < 37.5) {
    indColor = orange;
    stampOn = false;
  }
  if (dist(150, 50, mouseX, mouseY) < 37.5) {
    indColor = yellow;
    stampOn = false;
  }
  if (dist(150, 150, mouseX, mouseY) < 37.5) {
    indColor = green;
    stampOn = false;
  }
  if (dist(250, 50, mouseX, mouseY) < 37.5) {
    indColor = blue;
    stampOn = false;
  }
  if (dist(250, 150, mouseX, mouseY) < 37.5) {
    indColor = violet;
    stampOn = false;
  }
  if (dist(350, 50, mouseX, mouseY) < 37.5) {
    indColor = pink;
    stampOn = false;
  }
  if (dist(350, 150, mouseX, mouseY) < 37.5) {
    indColor = black;
    stampOn = false;
  }
  if (mouseX > 548 && mouseX < 628 && mouseY > 115 && mouseY < 190) {
    indColor = white;
    stampOn = false;
  }

  //stamp button
  if (mouseX > 550 && mouseX < 625 && mouseY > 30 && mouseY < 105) {
    stampOn = !stampOn;
  }
  
  //new button
  if (mouseX > 675 && mouseX < 775 && mouseY > 20 && mouseY < 70) {
  fill(white);
  noStroke();
  rect(0, 200, 800, 600);  
  }
  
  //save button
  if (mouseX > 675 && mouseX < 775 && mouseY > 80 && mouseY < 130) {
    selectOutput("Choose a name for your new image file homie", "saveImage");
   }
   
   //load button
   if (mouseX > 675 && mouseX < 775 && mouseY > 140 && mouseY < 190) {
     selectInput("Pick an image to load homie", "openImage");
   }
  }

void rectButton (color c, int x, int y, int l, int w) {
  if (mouseX > x && mouseX < x + l && mouseY > y && mouseY < y + w) {
    stroke(black);
  } else {
    stroke (white);
  }
  fill (c);
  rect(x, y, l, w);
}

void stampButton (color c, int x, int y, int l, int w) {
  if (mouseX > x && mouseX < x + l && mouseY > y && mouseY < y + w) {
    stroke(black);
  } else {
    stroke (white);
    stampToggle();
  }
  fill (c);
  rect(x, y, l, w);
}

void circleButton (color c, int x, int y, int r) {
  if (dist(x, y, mouseX, mouseY) < r - 37.5) {
    stroke(white);
  } else {
    stroke(grey);
  }
  fill(c);
  circle(x, y, r);
}

void newButton (int x, int  y, int w, int l) {
  strokeWeight(5);
  if(mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + l) {
    stroke(black);
  } else {
    stroke(white);
  }
  rect(x, y, w, l);
  textSize (30);
  textAlign(CENTER, CENTER);
  fill(black);
  text("New", x + w / 2, y + l / 2);
}

void saveButton (int x, int y, int w, int l) {
strokeWeight(5);
  if(mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + l) {
  stroke(black);
  } else {
    stroke(white);
  }
  rect(x, y, w, l);
  textSize (30);
  textAlign(CENTER, CENTER);
  fill(black);
  text("Save", x + w / 2, y + l / 2);
}

void saveImage(File f) {
  if (f != null) {
    PImage canvas = get( 71, 1, width-71, height-1);
    canvas.save(f.getAbsolutePath());
  }
}

void loadButton (int x, int y, int w, int l) {
strokeWeight(5);
  if(mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + l) {
  stroke(black);
  } else {
    stroke(white);
  }
  rect(x, y, w, l);
  textSize (30);
  textAlign(CENTER, CENTER);
  fill(black);
  text("Load", x + w / 2, y + l / 2);
}

void openImage(File f) {
  if (f != null) {
    int n = 0;
    while (n < 10) {
      PImage pic = loadImage(f.getPath());
      image(pic, 0, 0);
      n = n + 1;
    }
  }
}


void mousePressed() {
  //slider
  if (mouseX > 435 && mouseX < 465 && mouseY > 25 && mouseY < 175) {
    sliderY = mouseY;
  }
  //brush
  if (mouseY > 200) {
    stroke (indColor);
    strokeWeight (lineThickness);
    //stamp
    if (stampOn == false) {
      line(pmouseX, pmouseY, mouseX, mouseY);
    } else {
     image (banana, mouseX - stampThickness / 2, mouseY - stampThickness / 2, stampThickness, stampThickness);
    }
  }
}

void mouseDragged () {
  controlSlider();
  if (stampOn == false) {
    if (mouseY > 200) {
      stroke (indColor);
      strokeWeight (lineThickness);
      line(pmouseX, pmouseY, mouseX, mouseY);
    }
  } else {
    if (mouseY > 200) {
      image (banana, mouseX - stampThickness / 2, mouseY - stampThickness / 2, stampThickness, stampThickness);
    }
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
    stroke (red);
  }
}
