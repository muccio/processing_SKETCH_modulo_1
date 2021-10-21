int valore = 20;

void setup(){
  size(400, 400);
}

void draw(){
  background(255);
  stroke(0);
  noFill();
  disegnaPlaid(valore);
  
}

void disegnaPlaid(int dimensione)
{
  for(int i=0; i<height; i+=dimensione){
    for(int c=0; c<width; c+=dimensione){
      float r = random(255);
      float g = random(255);
      float b = random(255);
      noStroke();
      fill(r,g,b);
      rect(c,i, dimensione,dimensione);
      
    }
  }
}

void mousePressed()
{
  valore = mouseX;
}
