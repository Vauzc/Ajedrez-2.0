void verificar(int n){
  if (n==1){
    image(p1, 0, 0, a, height-a/4);
    image(m2, a/4, 7*height/8, a/2, a/4);
    if(PiezasB[6].trans.x==Mx[1][5]&& mousePressed){
        println("hola");
        PiezasB[4].trans.x=width;
        PiezasN[2].trans.x=Mx[3][4];
        PiezasN[2].trans.y=My[3][4];
    }
  
  }


} 