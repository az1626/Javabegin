float gewicht = 54;
float lengte = 1.74;
float leeftijd = 16;
float bmi = 0;

bmi = gewicht  / (lengte * lengte);
bmi *= 10;
bmi = round(bmi);
bmi /= 10;

println(bmi);

size(600,450);
background(255,255,255);

rect(105,150,105,35);
rect(200,75,105,35);
rect(300,150,105,35);

fill(0,0,0);
text("Gewicht = " + gewicht +  " KG",110,170);
text("Leeftijd = " + leeftijd + " jaar",205,95);
text("Lengte = " + lengte + " meter",305,170);

textSize(32);
text("BMI = " + bmi,215,300);

if(leeftijd < 18){ 
  if(bmi < 15){
  fill(255,255,0);
  }else if(bmi < 23){
  fill(0,255,0);  
  }else if(bmi < 29){
  
  }else{
    fill(255,0,0);
  }
}else{
  if(bmi < 18.5){
    fill(255,255,0);
  }else if(bmi < 25){
    fill(0,255,0);
  }else if(bmi < 30){
    
  }else{
    fill(255,0,0);
  }
}

textSize(32);
text("BMI = " + bmi ,215,300);
