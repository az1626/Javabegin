import controlP5.*;

ControlP5 c5;

Textfield T1;
Button knop1;

void setup(){
  size(750,750);
  
c5 = new ControlP5(this);

T1 = c5.addTextfield("Textfield1").setText("Ayman").setSize(300,150).setPosition(350,350).setCaptionLabel(" ");
knop1 = c5.addButton("knop1").setSize(60,60).setPosition(200,200).setCaptionLabel("hoi mijn naam is");
} 

void draw(){
  background(255,0,0);
}

void knop1(){
  println("hoi dit is mijn naam:" + T1.getText());
}
