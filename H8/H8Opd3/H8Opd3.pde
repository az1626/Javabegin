size(500,500);
background(255,255,255);

for(int i = 0; i < 10; i++){
  stroke(0,255,0);
  strokeWeight(3);
  line(60,i * 20 + 60,60,20);
}
for(int i = 0; i < 11; i++){
          print(" |");
          println(i);
}
