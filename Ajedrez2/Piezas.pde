abstract class Piezas {
protected PVector trans;
protected boolean dye,Turno;
protected String identity;
protected boolean selectb = false;
protected boolean selectn = false;

 public Piezas(int x, int y, boolean c, String w) {

    trans = new PVector(x, y);
    dye = c;
    identity = w;
  }





public void draw() {
    pushStyle();
    pushMatrix();
    translate(translation().x, translation().y);
    drawFigure(dye);
    popMatrix();
    popStyle();
    //Transformation(identity);
    
}

abstract void drawFigure(boolean dye);   

abstract void move(int x,int y);  


public PVector translation() {
    return trans;
  }

public void setTranslation(int x, int y) {
    trans.x = Mx[y][x];
    trans.y = My[y][x];
  }




public void updateb(int x, int y) { // movimiento
    x=7;
    y=7;
    if (selectb) {
      for(int i=0;i<7;i++){
              if((mouseX>width/2-height/2+(height/8)*i)&&(mouseX<width/2-height/2+(height/8)*(i+1))){
                  x=i;
                }
          }for(int i=8;i>0;i--){
              if((mouseY<(height/8)*(i))&&(mouseY>(height/8)*(i-1))){
                switch(i-1){
                case 7:
                  y=0;
                  break;
                case 6:
                  y=1;
                  break;
                case 5:
                  y=2;
                  break;
                case 4:
                  y=3;
                  break;
                case 3:
                  y=4;
                  break;
                case 2:
                  y=5;
                  break;
                case 1:
                  y=6;
                  break;
                
               }    
             }
            } 
        setTranslation(x, y);
    }
}
public void updaten(int x, int y) {
    x=7;
    y=7;
    if (selectn) {
      for(int i=0;i<7;i++){
              if((mouseX>width/2-height/2+(height/8)*i)&&(mouseX<width/2-height/2+(height/8)*(i+1))){
                  x=i;
                }
          }for(int i=8;i>0;i--){
              if((mouseY<(height/8)*(i))&&(mouseY>(height/8)*(i-1))){
                switch(i-1){
                case 7:
                  y=0;
                  break;
                case 6:
                  y=1;
                  break;
                case 5:
                  y=2;
                  break;
                case 4:
                  y=3;
                  break;
                case 3:
                  y=4;
                  break;
                case 2:
                  y=5;
                  break;
                case 1:
                  y=6;
                  break;
                
               }    
             }
            } 
        setTranslation(x, y);
    }
} 

  
  

//desde aca, intento movimiento perzonalizado
/*
public void updaterb(int x, int y) { // movimiento
    int t=0;
    
    if(mousePressed&&trans.x<x&&(trans.x+height/8)>x&&trans.y<y&&(trans.y+height/8)>y){
      strokeWeight(4);  
      stroke(0,0,255);
      fill(255,200,200,25);
      rect(trans.x,trans.y,height/8,height/8);
      for(int i=0;i<7;i++){
              if((mouseX>width/2-height/2+(height/8)*i)&&(mouseX<width/2-height/2+(height/8)*(i+1))){
                  x=i;
                  t++;
                }
      if(t==0){
        x=7;
        t=0;
      }
      }for(int i=8;i>0;i--){
              if((mouseY<(height/8)*(i))&&(mouseY>(height/8)*(i-1))){
                switch(i-1){
                case 7:
                  y=0;
                  break;
                case 6:
                  y=1;
                  break;
                case 5:
                  y=2;
                  break;
                case 4:
                  y=3;
                  break;
                case 3:
                  y=4;
                  break;
                case 2:
                  y=5;
                  break;
                case 1:
                  y=6;
                  break;
                default:
                  y=7;
                  break;
               }    
             }
            }
      noStroke();
      fill (0,255,0,100);
      if(x+1<8)
        rect(Mx[y][x+1],My[y][x+1],height/8,height/8);
      if(x-1>-1)
        rect(Mx[y][x-1],My[y][x-1],height/8,height/8);
      if(y+1<8)
        rect(Mx[y+1][x],My[y+1][x],height/8,height/8);
      if(y-1>-1)
        rect(Mx[y-1][x],My[y-1][x],height/8,height/8);
      if(x+1<8&&y+1<8)
        rect(Mx[y+1][x+1],My[y+1][x+1],height/8,height/8);
      if(x+1<8&&y-1>-1)
        rect(Mx[y-1][x+1],My[y-1][x+1],height/8,height/8);
      if(x-1>-1&&y+1<8)
        rect(Mx[y+1][x-1],My[y+1][x-1],height/8,height/8);
      if(x-1>-1&&y-1>-1)
        rect(Mx[y-1][x-1],My[y-1][x-1],height/8,height/8);
      }
      if(mousePressed&&get(mouseX,mouseY)==color(0,255,0)){
      for(int i=0;i<7;i++){
              if((mouseX>width/2-height/2+(height/8)*i)&&(mouseX<width/2-height/2+(height/8)*(i+1))){
                  x=i;
                  t++;
                }
      if(t==0){
        x=7;
        t=0;
      }
      }for(int i=8;i>0;i--){
              if((mouseY<(height/8)*(i))&&(mouseY>(height/8)*(i-1))){
                switch(i-1){
                case 7:
                  y=0;
                  break;
                case 6:
                  y=1;
                  break;
                case 5:
                  y=2;
                  break;
                case 4:
                  y=3;
                  break;
                case 3:
                  y=4;
                  break;
                case 2:
                  y=5;
                  break;
                case 1:
                  y=6;
                  break;
                default:
                  y=7;
                  break;
               }    
             }
            }
            setTranslation(x,y);}
    
}

public void updatedb(int x, int y) {
     if(mousePressed&&trans.x<x&&(trans.x+height/8)>x&&trans.y<y&&(trans.y+height/8)>y){
       strokeWeight(4); 
       stroke(0,0,255);
       fill(255,200,200,25);
       rect(trans.x,trans.y,height/8,height/8);
       
    }


}
public void updateab(int x, int y) {
     if(mousePressed&&trans.x<x&&(trans.x+height/8)>x&&trans.y<y&&(trans.y+height/8)>y){
       strokeWeight(4); 
       stroke(0,0,255);
        fill(255,200,200,25);
        rect(trans.x,trans.y,height/8,height/8);
        
    }

}
public void updatecb(int x, int y) {
     if(mousePressed&&trans.x<x&&(trans.x+height/8)>x&&trans.y<y&&(trans.y+height/8)>y){
       strokeWeight(4); 
       stroke(0,0,255);
        fill(255,200,200,25);
        rect(trans.x,trans.y,height/8,height/8);
    }

}
public void updatetb(int x, int y) {
     if(mousePressed&&trans.x<x&&(trans.x+height/8)>x&&trans.y<y&&(trans.y+height/8)>y){
       strokeWeight(4); 
       stroke(0,0,255);
        fill(255,200,200,25);
        rect(trans.x,trans.y,height/8,height/8);
    }
}
public void updatepb(int x, int y) {
     if(mousePressed&&trans.x<x&&(trans.x+height/8)>x&&trans.y<y&&(trans.y+height/8)>y){
       strokeWeight(4); 
       stroke(0,0,255);
        fill(255,200,200,25);
        rect(trans.x,trans.y,height/8,height/8);
    }

}


*/
//hasta acá










  
  
  
public void clickb(int x, int y) {  
    if (trans.x<x&&(trans.x+height/8)>x&&trans.y<y&&(trans.y+height/8)>y) //verifica si esta encima de la pieza  
        selectb = !selectb;
  }
public void clickn(int x, int y) {  
    if (trans.x<x&&(trans.x+height/8)>x&&trans.y<y&&(trans.y+height/8)>y) 
        selectn = !selectn;
  }

  
} 