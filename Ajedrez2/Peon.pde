class Peon extends Piezas {
protected PVector trans;
protected boolean dye;
protected float PosX,PosY;
protected String identity;

public Peon(int x, int y, boolean Dye, String Identity ) {
    super(x,y,Dye,Identity);
  
    Dye = dye;
    Identity = identity;
  }
  
  @Override
   void drawFigure(boolean dye){
    if(dye==true){
      image(pb, 0, 0, height/9, height/9);
    }else{
      image(pn, 0, 0, height/9, height/9);
      }
    }
  
  
  @Override
  void move(int x, int y){
      
  }

  

  
  
}