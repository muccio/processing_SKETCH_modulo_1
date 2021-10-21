size(500,300);
background(255);
strokeWeight(5);
smooth();
int centroX = width/2;
int centroY = height/2;
float raggio = 100;
stroke(0,30);
noFill();
ellipse(centroX,centroY,2*raggio,2*raggio);


raggio = 10;
float ultimox = -10;
float ultimoy = -10;
float noise_delraggio = random(10);
for(float angolo=0;angolo<=360*4;angolo+=5){
  noise_delraggio += 0.05;
  raggio+=0.5;
  float raggio_attuale = raggio + (noise(noise_delraggio)*200)-100;
  float radianti = radians(angolo);
  float x = centroX + (raggio_attuale * cos(radianti));
  float y = centroY + (raggio_attuale * sin(radianti));
  
  stroke(0);
  if(ultimox>0)
    line(x,y,ultimox,ultimoy);
  ultimox=x;
  ultimoy=y;
}
