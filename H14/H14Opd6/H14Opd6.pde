PImage img;

void setup(){
  background(255,255,255);
  size(500,500);
  img = loadImage("block.jpg");
  
}

void draw(){
    for(int i = 0; i < 20; i++){
    image(img,20,i * 20 + 20,20,20);
    image(img,1000,1000);
    }
  
}
