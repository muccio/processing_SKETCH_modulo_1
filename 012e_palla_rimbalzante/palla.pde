class palla{
  PVector posizione;
  PVector velocita;
  color colore;
  
  SinOsc oscillatore;
  Env inviluppo;
  
  palla(){
    posizione = new PVector(random(50,500),random(50,200));
    velocita = new PVector(random(2,4),random(2,5));
    colore = color(random(255),random(255),random(255));
  }
  
  void inizializzaOsc(){
    oscillatore.freq(random(100,600));
    oscillatore.amp(0.05);
    //oscillatore.play();
  }
  
  void calcolaPosizione(){
    posizione.x+=velocita.x;
    posizione.y+=velocita.y;
    velocita.y+=gravita;
    if(posizione.x>(width)||posizione.x<0){
      velocita.x *= -1;
      inviluppo.play(oscillatore,a,d,s,r);
    }
    if(posizione.y>(height-20)){
      if(abs(velocita.y)<0.8){
        velocita.y = 0;
      }
      else{
        velocita.y *= -0.7;
        posizione.y = height-20;
        inviluppo.play(oscillatore,a,d,s,r);
      }      
    }
  }
  
  void disegna(){
    fill(colore);
    ellipse(posizione.x,posizione.y,40,40);
  }
}
