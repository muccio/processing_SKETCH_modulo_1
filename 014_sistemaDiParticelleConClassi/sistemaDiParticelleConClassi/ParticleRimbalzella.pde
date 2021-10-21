class ParticleRimbalzella extends Particle{
  float smorzamento = 0.99;
  
  ParticleRimbalzella(int xIn,int yIn,float velx, float vely, float r){
    super( xIn, yIn, velx,  vely,  r);
  }
  
  void update(){
    vy *= smorzamento;
    vx *= smorzamento;
    super.update();
    limita();
  }
  
  void limita(){
    if(y>height-raggio){
      vy = -vy;
      y = constrain(y,-height*height,height-raggio);
    }
    if(x<raggio||x>width-raggio){
      vx = -vx;
      x = constrain(x,raggio,width-raggio);
    }
  }
}
