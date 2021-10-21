size(600,600);
background(255);
strokeWeight(0.5);
smooth();
int centroX = width/2;
int centroY = height/2;


float raggio = 100;
stroke(0,30);
noFill();
ellipse(centroX,centroY,2*raggio,2*raggio);

for(int i=0;i<100;i++){
  raggio = 10;
  float ultimox = -10;
  float ultimoy = -10;
  float noise_delraggio = random(10);
  float incremento_angolo = random(8);
  float angolo_di_partenza = random(360);
  float numero_giri = random(10);
  float trasparenze = random(120);
  for(float angolo=angolo_di_partenza;angolo<=360*numero_giri;angolo+=incremento_angolo){
    noise_delraggio += 0.05;
    raggio+=0.5;
    float raggio_attuale = raggio + (noise(noise_delraggio)*200)-100;
    float radianti = radians(angolo);
    float x = centroX + (raggio_attuale * cos(radianti));
    float y = centroY + (raggio_attuale * sin(radianti));
    color colore_casuale = color(random(255),random(255),random(255));
    stroke(colore_casuale,trasparenze);
    if(ultimox>0)
      line(x,y,ultimox,ultimoy);
    ultimox=x;
    ultimoy=y;
  }
}
