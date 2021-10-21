size(400,400);

for(int i=0;i<width;i+=20){
  for(int j=0;j<height;j+=20){
    noStroke();
    fill(random(255),random(255),random(255));
    rect(i,j,20,20);
  }
}
