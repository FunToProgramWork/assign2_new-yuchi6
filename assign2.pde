PImage bgImg;
PImage soilImg;
PImage lifeImg;
PImage soldierImg;
PImage cabbageImg;
PImage groundhogDownImg;
PImage groundhogIdleImg;
PImage groundhogLeftImg;
PImage groundhogRightImg;
int x =0;
int lightPos = 240+25;


void setup() {
   size(640, 480, P2D);
   bgImg = loadImage("img/bg.jpg");
   soilImg = loadImage("img/soil.png");
   lifeImg= loadImage("img/life.png");
   soldierImg = loadImage("img/soldier.png");
   cabbageImg = loadImage("img/cabbage.png");
   groundhogDownImg = loadImage("img/groundhogDown.png");
   groundhogIdleImg = loadImage("img/groundhogIdle.png");
   groundhogLeftImg = loadImage("img/groundhogLeft.png");
   groundhogRightImg = loadImage("img/groundhogRight.png");

}

void draw() {
  image(bgImg,0,0);
  image(soilImg, 0,160);
  image(lifeImg,10,10);
  image(lifeImg,80,10);
  //image(lifeImg,150,10);
  image(soldierImg, x, 160);
  image(groundhogIdleImg,320,80);
  image(cabbageImg,480,160);
  if(keyPressed){
  if(keyCode== LEFT){
  image( groundhogLeftImg ,320-80,80);
  }
  if(keyCode== DOWN){
  image( groundhogDownImg ,320,80+80);
  }
  if(keyCode== RIGHT){
  image( groundhogRightImg ,320+80,80);
  }
  else{
     image( groundhogIdleImg ,320,80);
  }
}
  
  x=x+1; 
  if ( x > 640)
    x = -80;
}
void keyPressed(){
  if(key== LEFT){
  }
}
void keyReleased(){
}
