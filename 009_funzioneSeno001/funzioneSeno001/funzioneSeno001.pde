size(500,100);

background(255);

strokeWeight(5);
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
  coordinatay = 50+(sin(radianti)*40);
  
  line(x,coordinatay,ultimax,ultimay);
  
  ultimax=x;
  ultimay=coordinatay;
  angolo_x++;
}
