class rettangolino{
  int altezza;
  int larghezza;
  float posizionex;
  int posizioney;
  float velocita;
  color colore;
  
  rettangolino(int parametro_posizione_x,int parametro_altezza){
    posizionex = parametro_posizione_x;
    posizioney = int(random(0,height-30));
    altezza = parametro_altezza;
    larghezza = int(random(50,100));
    colore = color(random(255),random(255),random(255));
    velocita = random(1,4);
  }

  void disegna(){
    fill(colore);
    rect(posizionex,posizioney,larghezza,altezza);
  }
  
  void sposta(){
    posizionex+=velocita;
  }

}
