
void setup(){
  float averageofnumber=numbers(10,20,30);
  println("average="+averageofnumber);
}

float numbers(int a, int b, int c)
{
  float x=a+b+c;
  return x/3;
}



//non return method
void findaverage(int a,int b, int c)
{
  float averageofnum=(a+b+c)/3;
  println("average="+averageofnum);
}
