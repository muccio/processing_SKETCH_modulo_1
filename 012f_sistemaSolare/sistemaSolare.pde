import processing.sound.*;

pianeta[] pianeti = new pianeta[20];

float a = 0.01;
float d = 0.2;
float s = 0.3;
float r = 0.3;

void setup(){
  size(800,600);
  for(int i=0;i<pianeti.length;i++){
    pianeti[i] = new pianeta(80+i*15,i+10);
    pianeti[i].oscillatore = new SinOsc(this);
    pianeti[i].inviluppo = new Env(this);
    pianeti[i].inizializzaOsc();
  }
}

void draw(){
  background(0);
  stroke(255);
  line(0,height/2,width,height/2);
  noStroke();
  //SOLE
  //pushMatrix();
  translate(width/2,height/2);
  fill(255,255,0);
  ellipse(0,0,80,80);
  
  //disegna i pianeti
  for(int i=0;i<pianeti.length;i++){
    pianeti[i].muovi();
    pianeti[i].visualizza();
  }
  //popMatrix();
}
