macchinina[] scuderia = new macchinina[100];

void setup(){
  size(400,400);
  for (int contamacchine=0;contamacchine<100;contamacchine++){
    scuderia[contamacchine] = new macchinina(color(random(255)),random(0,100),
      random(0,400),random(1,5),random(10,20));
  }
}

void draw(){
  background(255);
  for (int contamacchine=0;contamacchine<100;contamacchine++){
    scuderia[contamacchine].muovi_un_passo();
    scuderia[contamacchine].disegna();
  }
}
