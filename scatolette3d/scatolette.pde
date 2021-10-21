Scatola[] scatolotti = new Scatola[10];


float angolo_di_rotazione=0.0;
void setup(){
  size(400,400,P3D);
  for(int i=0;i<scatolotti.length;i++){
    scatolotti[i] = new Scatola(
        int(random(100)),
        int(random(100)),
        int(random(100)),
        int(random(15,50))
        );
  }
}

void draw(){
  background(0);
  stroke(100);
  fill(100,100);
  lights();
  
  translate(width/2,height/2);
  rotateX(angolo_di_rotazione);
  rotateY(angolo_di_rotazione*2.0);
  rotateZ(angolo_di_rotazione*3.0);
  for(int i=0;i<scatolotti.length;i++){
    scatolotti[i].disegna();
  }
  
  angolo_di_rotazione = angolo_di_rotazione+0.01;
}

void mousePressed(){
  for(int i=0;i<scatolotti.length;i++){
    scatolotti[i] = new Scatola(
        int(random(100)),
        int(random(100)),
        int(random(100)),
        int(random(15,50))
        );
  }
}
