

void setup(){
  size(450,450);
  
}

void draw(){
  background(255,255,255);
  int circ = 80;
    for(int i = 0; i <5; i++){
      
  ellipse(220 - circ/2, 220, circ, circ);
  circ -= 15;
  }
}
  
