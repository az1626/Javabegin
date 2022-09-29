String vinaam = "Jan";
Boolean gevonden = false;
String[] namen = {"Josef", "Kevin", "Jan", "Kees"};

void setup(){
  for(int i=0; i < namen.length; i++){
    if(vinaam == namen[i]){
      gevonden = true;
    }
  }
  
  if(gevonden){
    println("Ja, de naam " + vinaam + " is gevonden.");
  }else{
    println("Helaas de naam " + vinaam + " heb ik niet gevonden");
  }
}
