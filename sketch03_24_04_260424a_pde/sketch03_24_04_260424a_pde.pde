PImage img;

void setup(){
  size(500,500);
  img=loadImage("pic2.jpg");
  img.resize(width,height);
}

void draw(){
  image(img,0,0);
}
