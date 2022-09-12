boolean quest1 = true;
boolean quest2 = true;
boolean quest3= false;

if(quest1 && quest2 && quest3){
  println("Gefeliciteerd je hebt alle levels gehaald!");
}else if(quest1 && quest2 && !quest3){
  println("Je moet nog 1 quest afmaken om het spel te winnen");
}
