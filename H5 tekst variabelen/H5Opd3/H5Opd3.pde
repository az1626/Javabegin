int lengte = 175;
int gewicht = 80;
int gemBMI = 38;
String Tekst = "Met een lengte van 175 cm en eeng gewicht van 80 kg is je bmi 38";
String Samenvar = "";

Samenvar = str(gemBMI);
gemBMI = lengte * lengte / gewicht;

println(Tekst + gemBMI);
