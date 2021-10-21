stripe[] righe = new stripe[20];

void setup(){
  size(600,600);
  for(int i=0; i<righe.length; i++){
    righe[i] = new stripe();
  }
}

void draw(){
  background(200);
  for(int i=0; i<righe.length; i++){
    righe[i].rollover(mouseX,mouseY);
    righe[i].muovi();
    righe[i].display();
  }
}

class stripe{
  float x;
  float velocita;
  float larghezza;
  boolean mouseOver;
  
  stripe(){
    x=0;
    velocita = random(1);
    larghezza = random(10,30);
    mouseOver = false;
  }
  
  void display(){
    if(mouseOver){
      fill(255);
    }
    else{
      fill(255,100);
    }
    noStroke();
    rect(x,0,larghezza,height);
  }
  
  void muovi(){
    x += velocita;
    if(x>width+20){
      x = -20;
    }
  }
  
  void rollover(int coordinata_x_del_mouse,int coordinata_y_del_mouse){
    if(
      coordinata_x_del_mouse <= x+larghezza &&
      coordinata_x_del_mouse > x
    ){
      mouseOver = true;
    }
    else{
      mouseOver = false;
    }
  }
}
