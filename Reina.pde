class Reina extends Piezas {
protected PVector trans;
protected boolean dye;
protected float PosX,PosY;
protected String identity;

public Reina(int x, int y, boolean Dye, String Identity) {
    super(x,y,Dye,Identity);
  
    Dye = dye;
    Identity = identity;
  }

 

  
  @Override
   void drawFigure(boolean dye){
    if(dye == true){
      image(db, 0, 0, height/9, height/9);
    }else if(dye == false){
      image(dn, 0, 0, height/9, height/9);
      }

    }
       
  
  @Override
  void move(int x, int y){
    
      PosX=x;
      PosY=y;
      
  }
  }