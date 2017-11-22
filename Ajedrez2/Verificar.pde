void verificar(int n){
  int a;
  if(width-height>300){
     a=400;
  }else{
     a=width-height;
  }
  if (n==1){
    image(p1, height/20, 0, a, height);
    image(m2, a+10, 7*height/8+height/20, height/4, height/12);
  
  }


}