class freccetta extends Particle{
  float angolo = 0.0;
  float lunghezza = 20.0;
  
  freccetta(int xIn,int yIn,float velx, float vely, float r){
    super( xIn, yIn, velx,  vely,  r);
  }
  
  void update(){
    super.update();
    angolo = atan2(vy,vx);
  }
  
  void display(){
    stroke(255);
    pushMatrix();
    
    translate(x,y);
    rotate(angolo);
    scale(lunghezza);
    strokeWeight(1.0/lunghezza);
    //disegna freccia nell'origine
    line(0,0,1,0);
    line(1,0,0.7,-0.3);
    line(1,0,0.7,0.3);
    
    popMatrix();
  }
}
