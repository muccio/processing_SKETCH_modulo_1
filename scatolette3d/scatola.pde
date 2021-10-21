class Scatola{
  int x;
  int y;
  int z;
  int r;
  color c;
  float rx;
  
  Scatola(int x_des,int y_des,int z_des,int r_des){
    x = x_des;
    y = y_des;
    z = z_des;
    r = r_des;
    c = color(random(255),random(255),random(255));
    rx=random(1);
  }
  
  void disegna(){
    pushMatrix();
    translate(x,y,z);
    rotateX(rx);
    rotateY(rx*2);
    rotateZ(rx*3);
    fill(c,100);
    box(r);
    popMatrix();
  }
}
