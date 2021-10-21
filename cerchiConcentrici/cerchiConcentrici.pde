/*
float[] array_spessori = new float[30];

void setup(){
  size(800,800);
  for(int i=0;i<array_spessori.length;i++){
    array_spessori[i] =  random(5);
  }
}

void draw(){
  background(255);
  disegnaCerchi(mouseX,mouseY,30);
}

void disegnaCerchi(int centroX,int centroY,int numeroCerchi){
  noFill();
  strokeWeight(1);
  for(int i=0;i<numeroCerchi;i++){
    stroke(106,83,21,126+i*10);
    strokeWeight(array_spessori[i]);
    float raggio = i*10;
    ellipse(centroX,centroY,raggio,raggio);
  }
}
*/
/*
agglomerato c1 = new agglomerato(200,200,20);
agglomerato c2 = new agglomerato(500,300,40);
agglomerato c3 = new agglomerato(100,200,30);
agglomerato c4 = new agglomerato(300,400,90);


void setup(){
  size(800,800);
  
  
}

void draw(){
  background(255);
  c1.visualizza();
  c2.visualizza();
  c3.visualizza();
  c4.visualizza();
}

*/
ArrayList<agglomerato> lista_agglomerati = new ArrayList<agglomerato>();

void setup(){
  size(800,800);
}

void draw(){
  background(255);  
  for(int i=0;i<lista_agglomerati.size();i++){
    lista_agglomerati.get(i).visualizza();
  }
}

void mousePressed(){
  lista_agglomerati.add(new agglomerato(mouseX,mouseY,int(random(10,50))));
}
