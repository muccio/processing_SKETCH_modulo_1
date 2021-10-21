class ParticleGen extends Particle{
  float origineX,origineY;
  
  ParticleGen(int xIn,int yIn,float velx, float vely, float r,float orX,float orY){
    super( xIn, yIn, velx,  vely,  r);
    origineX = orX;
    origineY = orY;
  }
  
  void rigenera(){
    if(
      (x>width+raggio) || (x<-raggio) ||
      (y>height+raggio) || (y<-raggio)    
      ){
        x=origineX;
        y=origineY;
        vx = random(-1.0,1.0);
        vy = random(-4.0,-2.0);
    }
  }
  
  void aggiornoOrigine(int nuovox,int nuovoy){
    origineX = nuovox;
    origineY = nuovoy;
  }
}
