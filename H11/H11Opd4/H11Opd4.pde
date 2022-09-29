int[] mijnarray = new int[10];

void setup(){
  for(int i = 0; i < mijnarray.length; i++){
    mijnarray[i] = i * 12 + 12;
  }
  
  println(mijnarray);
}
