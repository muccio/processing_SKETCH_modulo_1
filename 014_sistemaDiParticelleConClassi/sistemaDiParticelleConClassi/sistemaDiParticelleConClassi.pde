//Particle p;
//ParticleGen[] array_particelle = new ParticleGen[800];
//ParticleRimbalzella[] array_rimbalzelle = new ParticleRimbalzella[800];
freccetta[] array_freccette = new freccetta[200];

void setup(){
  size(600,600);
  noStroke();
  smooth();
  //p = new Particle(0,height,2.2,-4.2,20.0);
  
  /*for(int i=0;i<array_particelle.length;i++){
    float velx = random(-1,1);
    float vely = -i/4.0;
    array_particelle[i] = new ParticleGen(width/2,height/2,velx,vely,3.0,width/2,height/2);
  }*/
  /*
  for(int i=0;i<array_rimbalzelle.length;i++){
    float velx = random(-2,2);
    float vely = -i;
    array_rimbalzelle[i] = new ParticleRimbalzella(width/2,height/2,velx,vely,3.0);
  }
  */
  for(int i=0;i<array_freccette.length;i++){
    float velx = random(1,8);
    float vely = random(-5,-1);
    array_freccette[i] = new freccetta(0,height/2,velx,vely,1.2);
  }
}

void draw(){
  background(0);
  
  //p.update();
  //p.display();
  
  /*for(int i=0;i<array_particelle.length;i++){
    array_particelle[i].update();
    array_particelle[i].rigenera();
    array_particelle[i].display();
    array_particelle[i].aggiornoOrigine(mouseX,mouseY);
  }*/
  /*
  for(int i=0;i<array_rimbalzelle.length;i++){
    array_rimbalzelle[i].update();
    array_rimbalzelle[i].display();
  }
  */
  for(int i=0;i<array_freccette.length;i++){
    array_freccette[i].update();
    array_freccette[i].display();
  }
}
