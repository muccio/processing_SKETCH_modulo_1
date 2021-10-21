class ramo{
  PVector inizio;
  PVector fine;
  boolean finito;
  
  ramo(PVector in,PVector fin){
    inizio = in;
    fine = fin;
    finito = false;
  }
  
  void display(){
    stroke(255);
    line(inizio.x,inizio.y,fine.x,fine.y);
  }
  
  void vento(){
    fine.x += random(-0.5,0.5);
    fine.y += random(-1,1);
  }
  
  ramo ramoA(){
    PVector dir = PVector.sub(fine,inizio);
    dir.rotate(PI/6);
    dir.mult(0.7);
    PVector nuovaFine = PVector.add(fine,dir);
    ramo b = new ramo(fine,nuovaFine);
    return b;
  }
  
  ramo ramoB(){
    PVector dir = PVector.sub(fine,inizio);
    dir.rotate(-PI/4);
    dir.mult(0.7);
    PVector nuovaFine = PVector.add(fine,dir);
    ramo b = new ramo(fine,nuovaFine);
    return b;
  }
}

ramo radice;
float angolo = 0.01;
ArrayList<ramo> albero = new ArrayList<ramo>();

void setup(){
  size(600,600);
  PVector start = new PVector(width/2,height);
  PVector end = new PVector(width/2,height-100);
  radice = new ramo(start,end);
  albero.add(radice);
  albero.add(radice.ramoA());
  albero.add(radice.ramoB());
}

void draw(){
  background(127);
  angolo = mouseX * 0.01;
  for(int i=0;i<albero.size();i++){
    albero.get(i).display();
    albero.get(i).vento();
  }
  //radice.display();
}

void mousePressed(){
  for(int i=albero.size()-1;i>=0;i--){
    if(!albero.get(i).finito){
      albero.add(albero.get(i).ramoA());
      albero.add(albero.get(i).ramoB());
    }
    albero.get(i).finito = true;
  }
}
