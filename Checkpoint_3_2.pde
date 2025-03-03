//Hysan Lee
//2-3
//March 3

color sunset = #F2C57C;
color buff = #DDAE7E;
color cambridgeBlue = #7FB685;
color hookersGreen = #426A5A;
color lightCoral = #EF6F6C;

int toggle = 1;

void setup() {
  size (800, 600);
}

void draw() {
  background(lightCoral);
  
  rect(200, 200, 400, 200);
  if (toggle > 0) {
   fill (sunset);
  } else {
   fill (hookersGreen);
 }
}

void mouseReleased(){
  if (mouseX > 200 && mouseX < 600 && mouseY > 200 && mouseY < 400)
  toggle = toggle * -1;
  
}
