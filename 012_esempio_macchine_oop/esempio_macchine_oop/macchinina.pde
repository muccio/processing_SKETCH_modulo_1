class macchinina{
  color colore;
  float posizione_x;
  float posizione_y;
  float velocita_x;
  float dimensione;
  
  macchinina(color colore_desiderato, float pos_x_des, float pos_y_des, float vel_x_des,float dim_des){
    colore = colore_desiderato;
    posizione_x = pos_x_des;
    posizione_y = pos_y_des;
    velocita_x = vel_x_des;
    dimensione = dim_des;
  }
 
  void muovi_un_passo(){
    posizione_x += velocita_x;
    if(posizione_x>width){
      posizione_x = 0;
    }
  }
  
  void disegna(){
    stroke(0);
    fill(colore);
    rectMode(CENTER);
    rect(posizione_x,posizione_y,dimensione,10);
  }
}
