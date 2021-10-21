class agglomerato{
  PVector centro;
  int numero_cerchi;
  float[] spessori;
  
  agglomerato(float cx,float cy, int num_cerchi){
    centro = new PVector(cx,cy);
    numero_cerchi = num_cerchi;
    spessori = new float[numero_cerchi];
    for(int i=0;i<spessori.length;i++){
      spessori[i] =  random(5);
    }
  }
  
  void visualizza(){
    noFill();
    strokeWeight(1);
    for(int i=0;i<numero_cerchi;i++){
      stroke(106,83,21,126+i*10);
      strokeWeight(spessori[i]);
      float raggio = i*10;
      ellipse(centro.x,centro.y,raggio,raggio);
    }
  }
}
