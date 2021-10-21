void setup(){
  size(500,100);
  background(255);
  strokeWeight(1);
  stroke(0,30);
  line(20,50,480,50);
  stroke(0);
  int bordo = 20;
  int incremento = 1;
  float coordinatay = 50;
  int ultimax = 20;
  float ultimay = 50;
  float angolo_x = 0;
  for(int x=bordo;x<=width-bordo;x+=incremento)
  {
    float radianti = radians(angolo_x);
    coordinatay = 20 + (60*customRandom());//50+(pow(sin(radianti),3)*noise(2*radianti)*30);
    line(x,coordinatay,ultimax,ultimay); 
    ultimax=x;
    ultimay=coordinatay;
    angolo_x++;
  }
}

float customRandom(){
  float risultato = 1-pow(random(1),5);
  return risultato;
}
