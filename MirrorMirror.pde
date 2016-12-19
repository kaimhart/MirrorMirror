boolean isMousePressed = false;

void setup() {
  size(1280, 720);
  background(50);
  
}

void draw() {
  
  stroke(255);
  line(width/2, 0, width/2, height);
  if(isMousePressed) {
    stroke(100, 255, 100);
    PVector mouse = new PVector(mouseX, mouseY);
    PVector pmouse = new PVector(pmouseX, pmouseY);
    line(mouse.x, mouse.y, pmouse.x, pmouse.y);
    PVector distance = new PVector(width/2, mouse.y);
    PVector pdistance = new PVector(width/2, pmouse.y);
    
    distance.sub(mouse);
    distance.mult(2);
    pdistance.sub(pmouse);
    pdistance.mult(2);
    mouse.add(distance);
    pmouse.add(pdistance);
    line(mouse.x, mouse.y, pmouse.x, pmouse.y);
  }
}

void mousePressed() {
  isMousePressed = true;
}

void mouseReleased() {
  isMousePressed = false;
}

void keyPressed() {
  if (keyCode == ' ') {
   background(50); 
  }
}