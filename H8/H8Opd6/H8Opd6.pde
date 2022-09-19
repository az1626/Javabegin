size(500,500);
background(255,255,255);

int circ = 200;

for(int i = 0; i < 5; i++){
  ellipse(250 - circ/2,250,circ,circ);
  circ -= 20;
}
