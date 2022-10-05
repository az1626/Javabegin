PImage img;
PImage img2;
PImage img3;
void setup(){
         size(1000,1000);
         img = loadImage("shells.jpg");
         img2 = loadImage("baby.jpg");
         img3 = loadImage("beluga.jpg");
}

void draw(){
  image(img,200,200);
  image(img2,400,400);
  image(img3,600,100);
}
