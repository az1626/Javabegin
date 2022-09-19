size(1000,800);
background(255,255,255);

int circ = 750;

for(int i = 0; i < 50; i++){
  ellipse(500, 400, circ/2, 1 - circ/2);
  circ -= 15;
  println(circ);
}  
