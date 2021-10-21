import processing.sound.*;

Stripe[] stripes = new Stripe[30];

//Env inviluppo;
float attacco = 0.002;
float sustain = 0.002;
float livello_sustain = 0.3;
float release = 0.4;

void setup() {
  size(500,500);
  //inviluppo = new Env(this);
  for (int i = 0; i < stripes.length; i++) {
    stripes[i] = new Stripe();
    stripes[i].oscillatore = new SinOsc(this);
    stripes[i].oscillatore.freq(random(220,440));
    stripes[i].inviluppo = new Env(this);
    //stripes[i].oscillatore.play();
    
  }
}

void draw() {
  background(100);
  // Move and display all stripes
  for (int i = 0; i < stripes.length; i++) {
    stripes[i].rollover(mouseX, mouseY);
    stripes[i].move();
    stripes[i].display(); 
  } 
}

class Stripe {
  float x;
  float speed;
  float w;
  boolean mouse;  
  SinOsc oscillatore;
  
Env inviluppo;

  Stripe() {
    x = 0;
    speed = random(1);
    w = random(10, 30);
    mouse = false;
  }
  void display() {
    if (mouse) {
      fill(255);
    } else {
      fill(255, 100);
    }
    noStroke();
    rect(x, 0, w, height);
  }
  
  void move() {
    x += speed;
    if (x > width + 20) x = -20;
  }
  void rollover(int mx, int my) { 
    if (mx > x && mx < x + w){
      if(!mouse)
        inviluppo.play(oscillatore,attacco,sustain,livello_sustain,release);
      mouse = true;
    } else {
      mouse = false;
    }
  } 
}
