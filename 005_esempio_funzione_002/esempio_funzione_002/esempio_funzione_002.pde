void  disegnaMacchinina(int x, int y, int dimensione, color c)
{
  int offset = dimensione/4;
  rectMode(CENTER);
  stroke(200);
  fill(c);
  rect(x,y,dimensione,dimensione/2);
  fill(0);
  rect(x-offset,y-offset,offset,offset/2);
  rect(x+offset,y-offset,offset,offset/2);
  rect(x-offset,y+offset,offset,offset/2);
  rect(x+offset,y+offset,offset,offset/2);
}

void setup(){
  size(600,600);
}

void draw(){
  background(255);
  
  disegnaMacchinina(100,100,150,color(0,255,0));  
  disegnaMacchinina(200,150,100,color(255,255,0));  
  disegnaMacchinina(300,50,50,color(0,255,255));  
  disegnaMacchinina(300,300,80,color(255,0,0));
}
