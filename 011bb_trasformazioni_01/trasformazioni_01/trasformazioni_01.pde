float lato = 100;

void setup(){
  size(400,400);
}

void draw(){
  background(255);
  fill(125);
  float mouse = map(mouseX,0,width,0,360);
  translate(width/2,height/2);
  float angolo_di_rotazione_in_radianti = radians(mouse);
  rotate(angolo_di_rotazione_in_radianti);
  rectMode(CENTER);
  rect(0,0,lato,lato);
  rect(-100,100,10,10);
}
