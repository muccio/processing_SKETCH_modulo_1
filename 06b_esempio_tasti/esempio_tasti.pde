color colore = color(255,0,0);
int x=200,y=200;
void setup(){
  size(600,600);
}

void draw(){
  background(255);
  fill(colore);
  rect(x,y,200,200);
}

void keyPressed(){
  colore=color(0,255,0);
  println(keyCode);
  
  if(keyCode==UP){
    y--;
  }
  else if(keyCode==DOWN){
    y++;
  }
}

void keyReleased(){
  colore=color(255,0,0);
}

void keyTyped(){
  println(key);
}
