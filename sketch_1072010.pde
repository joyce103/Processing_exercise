int r=0;
int g=0;
int b=0;
int c=0;
int bx=100;
int by=100;
float fx=5;
float fy=3;
float br=0;
float bg=0;
float bb=0;
void setup(){
  size(400,400);
  rectMode(CENTER);
}
void draw(){
  r=mouseX;
  g=mouseY;
  b=mouseX-mouseY;

  background(0);
  bx+=fx;
  by+=fy;
  if(bx-25<=0||bx+25>=width){
  fx*=(-1);
  br=random(100,255);
  bg=random(100,255);
  bb=random(100,255);
  }
  if(by-25<=0||by+25>=height){
  fy*=(-1);
  br=random(100,255);
  bg=random(100,255);
  bb=random(100,255);
  }
  if(bx-25>=mouseX-50 && bx+25<=mouseX+50 && by+25>=340){
    fx*=(-1);
    fy*=(-1);
  br=random(100,255);
  bg=random(100,255);
  bb=random(100,255);
  }
  if(by+25>=height){
  noLoop();
  }
  
  fill(br,bg,bb);
  ellipse(bx,by,50,50);
  fill(r,g,b);
  rect(mouseX,350,100,20);
}
