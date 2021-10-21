size(500,100);

background(255);

strokeWeight(5);

stroke(0,30);
line(20,50,480,50);
/*
float random_x = random(width);
float random_y = random(height);
stroke(20,50,70);
line(20,50,random_x,random_y);
*/

stroke(0);
int bordo = 20;
int bordoy = 30;
int incremento = 10;
int coordinatay = 50;

int ultimax = 20;
int ultimay = 50;

float tempo = 1;

for(int x=bordo;x<=width-bordo;x+=incremento)
{
  //stroke(random(255),random(255),random(255));
  //coordinatay = bordoy + int(random(height-2*bordoy));
  
  //coordinatay = coordinatay + int( random(20)-10 );
  coordinatay = 10 + int( noise(tempo)*80 );
  line(x,coordinatay,ultimax,ultimay);
  
  ultimax=x;
  ultimay=coordinatay;
  
  tempo = tempo + 0.1;
}
