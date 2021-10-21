rettangolino istanza = new rettangolino();

void setup(){
  size(500,500);
  
  istanza.posizionex = 100;
  istanza.posizioney = 100;
  istanza.altezza = 100;
  istanza.larghezza = 100;
  istanza.colore = color(0,255,0);
}

void draw(){
  background(255);
  istanza.disegna();
  /*
  disegnaRettangolo(100,150,50);
  disegnaRettangolo(200,150,40);
  disegnaRettangolo(300,150,30);
  */
}

void disegnaRettangolo(int x,int y,int dimensione){
  fill(0,255,0);
  rect(x,y,dimensione,dimensione);
}
