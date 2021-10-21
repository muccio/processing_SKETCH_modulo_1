float colore_sfondo_red = 150;
float colore_sfondo_green = 150;
float colore_sfondo_blue = 150;

void setup(){ // una volta all'inizio (loadbang) 
  size(600,600);
}
void draw(){
  // {..blocco racchiuso in una graffa..}
  background(colore_sfondo_red,colore_sfondo_green,colore_sfondo_blue);
  stroke(255);//vale per tutti i comandi che seguono
  line(width/2,0,width/2,height);
  line(0,height/2,width,height/2);
  //width = larghezza impostata per lo sketch
  //height = altezza impostata per lo sketch
  //mouseX mouseY
  if(mouseX<width/2 && mouseY<height/2){
     //println("primo quadrante");
     colore_sfondo_red += 1;
  }
  if(mouseX>width/2 && mouseY<height/2){
    //println("secondo quadrante");
    colore_sfondo_green += 1;
  }
  if(mouseX<width/2 && mouseY>height/2){
    //println("terzo quadrante");
    colore_sfondo_blue += 1;
  }
  if(mouseX>width/2 && mouseY>height/2){
    //println("quarto quadrante");
    colore_sfondo_red -= 1;
    colore_sfondo_green -= 1;
    colore_sfondo_blue -= 1;
  }
  colore_sfondo_red = constrain(colore_sfondo_red,0,255);
  colore_sfondo_green = constrain(colore_sfondo_green,0,255);
  colore_sfondo_blue = constrain(colore_sfondo_blue,0,255);
  
}
