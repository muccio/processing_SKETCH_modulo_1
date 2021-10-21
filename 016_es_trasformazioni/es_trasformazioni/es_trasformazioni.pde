rettangolo[] r = new rettangolo[100];//(400,300,10);

void setup(){
  size(800,600);
  for(int i=0;i<r.length;i++){
    r[i] = new rettangolo(width/2,height/2,i*10,i*15);
  }
}

void draw(){
  background(0);
  for(int i=0;i<r.length;i++){
    r[i].draw();
  }
}

class rettangolo{
  float x,y;
  float alpha;
  float size = 0.0;
  
  rettangolo(int x_,int y_,int s_,int a_){
    x=x_;
    y=y_;
    size = s_;
    alpha= a_;
  }
  
  void draw(){
    noFill();
    stroke(255,size/4);
    pushMatrix();
    translate(x,y);
    rotate(alpha);
    rectMode(CENTER);
    rect(0,0,size,size);
    popMatrix();
    alpha+=0.01;
    //size+=0.5;
  }
}
