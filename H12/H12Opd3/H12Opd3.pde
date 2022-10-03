

void setup(){
  size(800,800);
  background(0,0,0);
  noStroke();
  
}

void draw(){
  
}

void mouseMoved(){
  int r = floor(random(255));
  int g = floor(random(255));
  int b = floor(random(255));
  fill(r,g,b);
  rect(mouseX,mouseY,20,20);
}
