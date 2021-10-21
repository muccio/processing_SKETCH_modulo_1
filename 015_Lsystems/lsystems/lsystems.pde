String assioma = "A";
ArrayList<regola> regole = new ArrayList<regola>();
String generazioni;

regola regolina_1 = new regola('A',"ABC");
regola regolina_2 = new regola('B',"A");
regola regolina_3 = new regola('C',"CBA");

void setup(){
  size(800,600);
  regole.add(regolina_1);
  regole.add(regolina_2);
  regole.add(regolina_3);
  String generazione_1 = generazioneSuccessiva(assioma);
  println("generazione_1:"+generazione_1);
  String generazione_2 = generazioneSuccessiva(generazione_1);
  println("generazione_2:"+generazione_2);
  String generazione_3 = generazioneSuccessiva(generazione_2);
  println("generazione_3:"+generazione_3);
  String generazione_4 = generazioneSuccessiva(generazione_3);
  println("generazione_4:"+generazione_4);
  String generazione_5 = generazioneSuccessiva(generazione_4);
  println("generazione_5:"+generazione_5);
  generazioni = generazione_1;
  for(int i=0;i<10;i++){
    generazioni = generazioneSuccessiva(generazioni);
    println(i);
  }
  println("generazioni: "+generazioni);
}

void draw(){
  background(0);
  disegna(generazioni);
}

String generazioneSuccessiva(String partenza){
  String generazione =  "";
  for(int j=0;j<partenza.length();j++){
    char carattere = partenza.charAt(j);
    for(int i=0;i<regole.size();i++){
      regola regola_da_applicare = regole.get(i); //<>//
      if(carattere==regola_da_applicare.a){
        generazione += regola_da_applicare.b;
      }
    }
  }
  return generazione;
}

void disegna(String generazione){
  float lungh = 20.0;
  float alpha = 35.0;
  
  stroke(255,20);
  translate(width/2,height/2-50);
  for(int i=0;i<generazione.length();i++){
    char carattere_corrente = generazione.charAt(i);
    switch(carattere_corrente){
      case 'A':
        line(0,0,0,-lungh);
        translate(0,-lungh);
      break;
      case 'B':
        rotate(radians(alpha));
      break;
      case 'C':
        rotate(radians(alpha));
      break;
    }
  }
}
