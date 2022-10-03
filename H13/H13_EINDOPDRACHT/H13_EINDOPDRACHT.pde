int maps[][] = new int[][]{
   {0,0,0},{0,0,0},{0,0,0}};
int GekliktNum=0; 
int flag=0; 
int rood=0;
int groen=0;
int gp;
int mark=0;
PFont font;
void setup()
{
  size(800,800);
  background(255,255,255);
  //smooth(8);
  surface.setResizable(true); 
  pixelDensity(displayDensity());
  font = createFont("Trebuchet MS Vet Cursief", 12);//ik heb hier gebruik gemaakt van font list
}

void init()
{
  if(flag == 1)
    rood++;
  else if(flag == 2) 
    groen++;
  else if(flag == 3)
    gp++;
  flag=0;
  mark++;
  if(mark%2==1)
    GekliktNum=1;
  else
    GekliktNum=0;
  for(int i=0;i<3;i++)
    for(int j=0;j<3;j++)
       maps[i][j]=0; 
}

void draw()
{
  background(255,255,255);
  DrawLine();
  DrawChess();
  GameResult();
}

void DrawLine()
{
  if(mark % 2 == 0)
  {
    fill(255,0,0);
    textFont(font,20);
    textAlign(CENTER);
    text(" rood eerst ",740,80);
    textFont(font,7);
    textSize(35);
    int r=  floor (random(255));
    delay(150);
    int g = floor (random(255));
    delay(150);
    int b = floor (random(255));
    fill(r,g,b);
    text(" boter kaas en eieren gemaakt door ayman ", 400,750);
    noFill();
   }
   else
   {
     fill(0,255,0);
      textFont(font,20);
      textAlign(CENTER);
      text(" groen eerst ",740,80);
      textFont(font,7);
      textSize(35);
      int r = floor (random(255));
      delay(150);
      int g = floor (random(255));
      delay(150);
      int b = floor (random(255));
      fill(r,g,b);
      text(" boter kaas en eieren gemaakt door ayman ", 400,750);
      noFill();
   }
  stroke(0,0,0);//zwart
  strokeWeight(5);
  line(150,200,600,200);
  line(150,350,600,350);
  line(300,50,300,500);
  line(450,50,450,500);
  fill(255,0,0);
  textFont(font,20);
  textAlign(CENTER);
  text(" Rood :"+rood,740,20);
  noFill();
  fill(0,255,0);
  textFont(font,20);
  textAlign(CENTER);
  text(" Groen :"+groen,740,40);
  noFill();
  if(flag > 0)
  {
    noFill();
    fill(255,0,255);
    textFont(font,20);
    textAlign(CENTER);
    text(" nieuwe ronde ",380,580); //klik op de text
    textSize(25);
    noFill();
  }
}

void mouseClicked()
{
  if(flag<=0)
  {
    int x=(mouseX-150)/150;
    int y=(mouseY-50)/150;
    if(x<3 && y<3){
      if(GekliktNum%2 == 0 && maps[x][y] == 0)
      {
        GekliktNum++;
        maps[x][y]=1;
      }
      else if(GekliktNum%2 == 1 && maps[x][y] == 0)
      {
        GekliktNum++;
        maps[x][y]=2;
      } 
    }
  }else if(flag>0)
  {
    if(mouseX>= 330 && mouseX <= 430 && mouseY >= 560 && mouseY <= 590)
       init();
  }
}

void DrawChess()
{
  for(int i=0;i<3;i++)
  {
    for(int j=0;j<3;j++)
    {
      if(maps[i][j]==1)
      {   
        stroke(255,0,0);
        ellipse(225+150*i,125+150*j,100,100);
        noFill();
      }else if(maps[i][j]==2){
        
         stroke(0,255,0);
         rect(175+150*i,75+150*j,100,100);
         noFill();
      }
    }
  }
}

void GameResult()
{
  flag=JudgeResult();
  if(flag==-1 && ((GekliktNum > 9 && (mark%2 == 1)) || (GekliktNum == 9 && mark%2 == 0)))
  {
    flag=3;
    fill(0,0,0);
    textFont(font,20);
    textAlign(CENTER);
    text(" Game over , het is gelijkspel !",380,550);
    noFill();
  }
  else if(flag == 1)
  {
    fill(255,0,0);
    textFont(font,20);
    textAlign(CENTER);
    text(" Game over , rood wint !",380,550);
    noFill();
  }
  else if(flag == 2)
  {
    fill(0,255,0);
    textFont(font,20);
    textAlign(CENTER);
    text(" Game over , groen wint !",380,550);
    noFill();
  }
}

int JudgeResult()
{
  for(int i=0;i<3;i++) 
  {
    if(maps[i][0] == maps[i][1] && maps[i][1] == maps[i][2])
      return maps[i][0];
  }
  for(int j=0;j<3;j++)
  {
    if(maps[0][j] == maps[1][j] && maps[1][j] == maps[2][j])
      return maps[0][j];
  }
  if(maps[0][0] == maps[1][1] && maps[1][1] == maps[2][2])
    return maps[0][0];  
  if(maps[0][2] == maps[1][1] && maps[1][1] == maps[2][0])
    return maps[0][2];
   return -1;
}
