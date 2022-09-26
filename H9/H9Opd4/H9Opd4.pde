

void setup(){
  size(500,500);
}

void draw(){
  background(255,255,255);
  //rect(150,150,150,150);
  stroke(0,0,0);
  vierkant(150,150,150,150);
  
}

void vierkant(int x,int y,int w,int h){
  //bovenlijn
  line(x,y,x+w,y);
  //onder lijn
  line(x,y+h,x+w,y+h);
  //linker lijn
  line(x,y,x,y+h);
  //rechterlijn
  line(x+y,y,x+w,y+h);
}
