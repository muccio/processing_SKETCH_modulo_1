float r = 150,g=0,b=0;

void setup(){
  size(600,600);
}

void draw(){
  background(r,g,b);
  stroke(255);
  line(width/2,0,width/2,height);
  if(mouseX>width/2){
    r=r+1;
  }
  else{
    r=r-1;
  }
  r = constrain(r,0,255);
  //if(r>255)....
}
