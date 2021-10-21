int somma(int primo,int secondo,int terzo){
  int totale = primo + secondo + terzo;
  return totale;
}

float pitagora(int a,int b){
  float c = a*a + b*b;
  return c;
}

void setup(){
  int risultato = somma(100,50,200);
  println(risultato);
}
