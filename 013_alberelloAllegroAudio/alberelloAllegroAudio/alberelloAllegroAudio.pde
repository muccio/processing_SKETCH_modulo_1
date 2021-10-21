import processing.sound.*;

float angolo = PI/4;
AudioIn input;
Amplitude rms;


void setup() {
  size(600, 600);
  input = new AudioIn(this);
  input.amp(1.0);
  input.start();
  
  rms = new Amplitude(this);
  rms.input(input);
}


void ramo(float lun) {
  line(0, 0, 0, -lun);
  translate(0,-lun);
  if(lun>10){
    pushMatrix();
    rotate(angolo);
    ramo(lun*0.7);
    popMatrix();
    pushMatrix();
    rotate(-angolo);
    ramo(lun*0.7);
    popMatrix();
  }
}

void draw() {
  background(255);
  translate(width/2, height);
  ramo(100);
  
  println(rms.analyze());
  //angolo = mouseX/100.0;
  angolo = rms.analyze()*2*PI;
}
