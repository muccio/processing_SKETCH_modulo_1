import processing.sound.*;

int pallina_x = 0;
int pallina_y = 0;
int velocita = 7;
int velocita_y = 5;
TriOsc triangolarino;
Env inviluppino;

float attacco = 0.01;
float sustain = 0.002;
float livello_sustain = 0.1;
float release = 0.2;

void setup(){
  size(300,300);
  triangolarino = new TriOsc(this);
  triangolarino.freq(220);
  triangolarino.amp(0.5);
  inviluppino = new Env(this);
}

void draw(){
  background(255);
  pallina_x = pallina_x + velocita;
  pallina_y = pallina_y + velocita_y;
  
  if(pallina_x>width || pallina_x<0){
    velocita = velocita*-1;
    triangolarino.freq(random(120,400));
    inviluppino.play(triangolarino,attacco,sustain,livello_sustain,release);
  }
  
  if(pallina_y>height || pallina_y<0){
    velocita_y = velocita_y*-1;
    triangolarino.freq(random(120,400));
    inviluppino.play(triangolarino,attacco,sustain,livello_sustain,release);
  }
  
  stroke(0);
  fill(0,255,0);
  ellipse(pallina_x,pallina_y,32,32);
}
