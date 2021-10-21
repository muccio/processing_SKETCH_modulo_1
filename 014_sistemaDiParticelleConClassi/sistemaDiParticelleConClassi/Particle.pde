class Particle{
  float x, y;
  float vx, vy;
  float raggio;
  float gravity = 0.1;
  color colore;
  
  
  Particle(int posx, int posy, float velx, float vely, float r){
   x = posx;
   y = posy;
   vx = velx;
   vy = vely;
   raggio = r;
   colore = color(random(255),random(255),random(255));
  }
  
  void update(){
    vy = vy + gravity;
    y += vy;
    x += vx;
  }
  
  void display(){
    fill(colore);
    ellipse(x,y,raggio*2,raggio*2);
  }
}
