int xPos;
int yPos;

void setup(){
  size(400,400);
  background(#EDDADA);
 
  xPos=width/2;
  yPos=height/2;
  target(100,100);
  
}

void target(int xPos,int yPos){
  fill(0,255,0);
  circle(xPos,yPos,150);
  fill(#157EEA);
  circle(xPos,yPos,100);
  fill(#F70A12);
  circle(xPos,yPos,50);
}
