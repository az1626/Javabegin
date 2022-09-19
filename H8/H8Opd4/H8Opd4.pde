size(35,80);
background(255,255,255);

int xW = 10;
int yW = 10;

for(int i = 0; i < 2; i++){
  for(int j = 0; j < 5; j++){
      rect(xW, yW, 10,10);
      yW += 10;
  }
  yW = 10;
  xW += 10;
}
