PImage img;

void setup(){
  size(700,700);
  img = loadImage("mario.jpg");
}

void draw(){
  image(img, 0, 0);
  img.resize(700, 700);
}
