size(500,500);
background(255,255,255);

int circ = 250;

for(int i = 0; i < 4; i++){
  ellipse(250, 250, circ,circ);
  circ -= 60;
  println(circ);
}
  
