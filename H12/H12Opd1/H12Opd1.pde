int seconden;
int spatiesin10sec;
int overigeseconden;
int millisecover;
boolean racing = true;


void setup(){
  size(600,600);
}

void draw(){
  background(255,255,255);
  
  seconden = millis()/1000;
  overigeseconden = 10 - seconden;
  millisecover = 1000 - (millis()%1000);
 
  if(overigeseconden <= 0){
    overigeseconden = 0;
    millisecover = 0;
  }
    if(millisecover <= 0){
      fill(255,0,0);
      textSize(20);
      text("De tijd is op!", 250,550);
  }
  if(seconden >= 10){
    racing = false;
    
  }
  fill(0,255,0);
  textSize(50);
  text("Spaties: " + spatiesin10sec, 200,300);
  fill(255,0,255);
  text("seconden over " + overigeseconden + "." + millisecover, 100,500);
  
  
}
  
void keyReleased(){
  if(keyCode == 32 && racing){
    spatiesin10sec++;
  }
}
