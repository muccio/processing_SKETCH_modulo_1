class rettangolino{
  int altezza;
  int larghezza;
  int posizionex;
  int posizioney;
  color colore;

  void disegna(){
    fill(colore);
    rect(posizionex,posizioney,larghezza,altezza);
  }

}
