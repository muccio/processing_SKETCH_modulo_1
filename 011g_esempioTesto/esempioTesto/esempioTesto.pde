PFont mioFont;

void setup(){
  size(600,600);
  mioFont = createFont("AvenirNextCondensed-BoldItalic",32);
}

void draw(){
  background(255);
  stroke(0);
  fill(0);
  textFont(mioFont);
  text("CIAO!",mouseX,mouseY);
}
