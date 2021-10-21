float tempo = 0;

void setup(){
  size(600,600);
}

void draw(){
  background(255);
  float generato = noise(tempo);
  float posizione_x = generato  * width;
  float larghezza_d = 150 * generato;
  float trasparenza = 255 * generato;
  fill(0,255,0,trasparenza);
  ellipse(posizione_x,height/2,larghezza_d,larghezza_d);
  tempo = tempo + 0.005;
}
