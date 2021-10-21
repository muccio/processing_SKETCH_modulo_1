import processing.sound.*;

int x_pulsante = 50;
int y_pulsante = 50;
int larghezza_pulsante = 100;
int altezza_pulsante = 60;
boolean interruttore_premuto = false;
SinOsc oscillatorino;

int x_pulsante_2 = 150;
int y_pulsante_2 = 50;
int larghezza_pulsante_2 = 100;
int altezza_pulsante_2 = 60;
boolean interruttore_premuto_2 = false;
SinOsc oscillatorino_2;

void setup(){
  size(400,400);
  oscillatorino = new SinOsc(this);
  oscillatorino_2 = new SinOsc(this);
}

void draw(){
  if(interruttore_premuto){
    fill(0,255,0);
  }
  else{
    fill(255,0,0);
  }
  oscillatorino.freq(mouseX);
  rect(x_pulsante,y_pulsante,larghezza_pulsante,altezza_pulsante);
  
  if(interruttore_premuto_2){
    fill(0,255,0);
  }
  else{
    fill(255,0,0);
  }
  oscillatorino_2.freq(mouseY);
  rect(x_pulsante_2,y_pulsante_2,larghezza_pulsante_2,altezza_pulsante_2);
}

void mousePressed(){
  if(mouseX>x_pulsante && mouseX<x_pulsante+larghezza_pulsante &&
     mouseY>y_pulsante && mouseY<y_pulsante+altezza_pulsante){
       interruttore_premuto = !interruttore_premuto;
  }
  if(interruttore_premuto){
    oscillatorino.play();
  }
  else{
    oscillatorino.stop();
  }
  if(mouseX>x_pulsante_2 && mouseX<x_pulsante_2+larghezza_pulsante_2 &&
     mouseY>y_pulsante_2 && mouseY<y_pulsante_2+altezza_pulsante_2){
       interruttore_premuto_2 = !interruttore_premuto_2;
  }
  if(interruttore_premuto_2){
    oscillatorino_2.play();
  }
  else{
    oscillatorino_2.stop();
  }
}
