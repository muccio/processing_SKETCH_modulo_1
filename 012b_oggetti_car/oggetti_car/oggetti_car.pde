/*
Car myCar1;
Car myCar2;

void setup() {
  size(640, 360);
  myCar1 = new Car(color(51), 0, 100, 2); // Parameters go inside the parentheses when the object is constructed.
  myCar2 = new Car(color(151), 0, 300, 1);
}

void draw() {
  background(255);
  myCar1.move();
  myCar1.display();
  myCar2.move();
  myCar2.display();
}
*/

Car[] traffico = new Car[30];

void setup() {
  size(640, 360);
  for(int i=0;i<30;i++){
    traffico[i] = new Car(
      color(random(255),random(255),random(255)),//colore 
      0,20+i*15, //posizione
      random(8) );  //velocita
  }
}

void draw() {
  background(255);
  for(int i=0;i<30;i++){
    traffico[i].move();
    traffico[i].display();  
  }
}