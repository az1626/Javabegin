import controlP5.*;

ControlP5 c5;

Button knop1;
Button knop2;

void setup(){
  size(750,750);
  
  c5 = new ControlP5(this);
  
  knop1 = c5.addButton("knop1").setSize(150,100).setPosition(350,100).setCaptionLabel("Klik mij");
  knop2 = c5.addButton("knop2").setSize(150,100).setPosition(350,350).setCaptionLabel("Klik mij");
       

}

void draw(){
  background(255,255,0);
  
}

void knop1(){
  println("Helaas fout!");
  
}

void knop2(){
  println("Goed gedaan!");
  
}
