class pianeta{
  //attributi (in coordinate polari) 
  float distanza;
  float alpha;
  float dimensione;
  float velocita;
  color colore;
  
  SinOsc oscillatore;
  Env inviluppo;
  
  //costruttore
  pianeta(float dist,float dim){
    distanza = dist;
    dimensione = dim;
    alpha = 0;
    velocita = random(1,3);
    colore = color(random(255),random(255),random(255));
  }
  
  void inizializzaOsc(){
    oscillatore.freq(random(100,600));
    oscillatore.amp(0.05);
    //oscillatore.play();
  }
  
  void muovi(){
    alpha += radians(velocita);
  }
  
  void visualizza(){
    pushMatrix();
    rotate(alpha);
    translate(distanza,0);
    fill(colore);
    ellipse(0,0,dimensione,dimensione);
    if(degrees(alpha)%180<velocita){
      inviluppo.play(oscillatore,a,d,s,r);
    }
    popMatrix();
  }
}
