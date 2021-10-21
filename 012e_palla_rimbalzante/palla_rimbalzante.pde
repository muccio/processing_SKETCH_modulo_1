import processing.sound.*;

palla[] balls = new palla[10];

float gravita = 0.1;

float a = 0.01;
float d = 0.2;
float s = 0.3;
float r = 0.3;

void setup(){
  size(800,600);
  for(int i=0;i<balls.length;i++){
    balls[i] = new palla();
    balls[i].oscillatore = new SinOsc(this);
    balls[i].inviluppo = new Env(this);
    balls[i].inizializzaOsc();
  }
}

void draw(){
  background(0);
  for(int i=0;i<balls.length;i++){
    balls[i].calcolaPosizione();
    balls[i].disegna();
  }
}
