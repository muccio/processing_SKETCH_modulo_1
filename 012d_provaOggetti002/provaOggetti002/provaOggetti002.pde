rettangolino[] gruppo;

void setup(){
  size(500,500);
  gruppo = new rettangolino[10];
  for(int i=0;i<10;i++){
    gruppo[i] = new rettangolino(5,30);
  }
}

void draw(){
  background(255);
  for(int i=0;i<10;i++){
    gruppo[i].disegna();
    gruppo[i].sposta();
  }
}
