float[] vettore = new float[10];

for(int i=0;i<vettore.length;i++){
  vettore[i] = random(1,100);
}

println(vettore);

float[][] matrice = new float[10][10];

for(int i=0;i<matrice.length;i++){
  for(int j=0;j<matrice[i].length;j++){
    matrice[i][j] = random(1,100);
  }
}

for(int i=0;i<matrice.length;i++){
    println( "Riga "+i+"-sima");
    println(matrice[i]);
}

//{{0,1,2},{3,4,5},{6,7,8}}
