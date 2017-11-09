PImage img;
PImage rb;
PImage rn;
PImage db;
PImage dn;
PImage ab;
PImage an;
PImage cb;
PImage cn;
PImage tb;
PImage tn;
PImage pb;
PImage pn;
int fila =8;
int columna=8;
int t=7;
int[][] Mx;
int[][] My;
Piezas[] PiezasB;
Piezas[] PiezasN;


 void setup(){
   // Ubicación
    Mx=new int[columna][fila];
    My=new int[columna][fila];
   for (int i =0; i<8;i++){
        for(int j =0; j<8; j++){
             Mx[i][j]=width/2-height/2+(height/8)*j;
             My[i][j]=(height/8)*t;
          }
        t--;
      }
   
   //Piezas 
   
   PiezasB = new Piezas[16];
   PiezasN = new Piezas[16];
   background(0);
   fullScreen();
   img = loadImage("t1.png");
   rb = loadImage("rb.png");
   rn = loadImage("rn.png");
   db = loadImage("db.png");
   dn = loadImage("dn.png");
   ab = loadImage("ab.png");
   an = loadImage("an.png");
   cb = loadImage("cb.png");
   cn = loadImage("cn.png");
   tb = loadImage("tb.png");
   tn = loadImage("tn.png");
   pb = loadImage("pb.png");
   pn = loadImage("pn.png");
   
   // Piezas Blancas
   PiezasB[0] = new Rey(Mx[0][4],My[0][4],true,"RB");//cambiado temporalmente
   
   PiezasB[1] = new Reina(Mx[0][3],My[0][3],true,"QB");
   
   PiezasB[2] = new Alfil(Mx[0][2],My[0][2],true,"AB1");
   PiezasB[3] = new Alfil(Mx[0][5],My[0][5],true,"AB2");
   
   PiezasB[4] = new Caballo(Mx[0][1],My[0][1],true,"CB1");
   PiezasB[5] = new Caballo(Mx[0][6],My[0][6],true,"CB2");
   
   PiezasB[6] = new Torre(Mx[0][0],My[0][0],true,"TB1");
   PiezasB[7] = new Torre(Mx[0][7],My[0][7],true,"TB2");
   
   PiezasB[8] = new Peon(Mx[1][0],My[1][0],true,"PB1");
   PiezasB[9] = new Peon(Mx[1][1],My[1][1],true,"PB2");
   PiezasB[10] = new Peon(Mx[1][2],My[1][2],true,"PB3");
   PiezasB[11] = new Peon(Mx[1][3],My[1][3],true,"PB4");
   PiezasB[12] = new Peon(Mx[1][4],My[1][4],true,"PB5");
   PiezasB[13] = new Peon(Mx[1][5],My[1][5],true,"PB6");
   PiezasB[14] = new Peon(Mx[1][6],My[1][6],true,"PB7");
   PiezasB[15] = new Peon(Mx[1][7],My[1][7],true,"PB8");
   
   // Piezas Negras
   PiezasN[0] = new Rey(Mx[7][4],My[7][4],false,"RN");
   
   PiezasN[1] = new Reina(Mx[7][3],My[7][3],false,"QN");
   
   PiezasN[2] = new Alfil(Mx[7][2],My[7][2],false,"AN1");
   PiezasN[3] = new Alfil(Mx[7][5],My[7][5],false,"AN2");
   
   PiezasN[4] = new Caballo(Mx[7][1],My[7][1],false,"CN1");
   PiezasN[5] = new Caballo(Mx[7][6],My[7][6],false,"CN2");
   
   PiezasN[6] = new Torre(Mx[7][0],My[7][0],false,"TN1");
   PiezasN[7] = new Torre(Mx[7][7],My[7][7],false,"TN2");
   
   PiezasN[8] = new Peon(Mx[6][0],My[6][0],false,"PN1");
   PiezasN[9] = new Peon(Mx[6][1],My[6][1],false,"PN2");
   PiezasN[10] = new Peon(Mx[6][2],My[6][2],false,"PN3");
   PiezasN[11] = new Peon(Mx[6][3],My[6][3],false,"PN4");
   PiezasN[12] = new Peon(Mx[6][4],My[6][4],false,"PN5");
   PiezasN[13] = new Peon(Mx[6][5],My[6][5],false,"PN6");
   PiezasN[14] = new Peon(Mx[6][6],My[6][6],false,"PN7");
   PiezasN[15] = new Peon(Mx[6][7],My[6][7],false,"PN8");
   

   
 
 
 }
 
 
void draw(){
     background(0);
     image(img, width/2-height/2, 0, height, height);
     for (Piezas piezas : PiezasB){
        piezas.draw();
     }
     for (Piezas piezas : PiezasN){
        piezas.draw();
     }
     /*for (int i=0;i<PiezasB.length;i++){
          switch(i){
              case 0:
                PiezasB[0].updaterb(mouseX, mouseY);
                break;
              case 1:
                PiezasB[1].updatedb(mouseX, mouseY);
                break;
              case 2:
                PiezasB[2].updateab(mouseX, mouseY);
                break;
              case 3:
                PiezasB[3].updateab(mouseX, mouseY);
                break;
              case 4:
                PiezasB[4].updatecb(mouseX, mouseY);
                break;
              case 5:
                PiezasB[5].updatecb(mouseX, mouseY);
                break;
              case 6:
                PiezasB[6].updatetb(mouseX, mouseY);
                break;
              case 7:
                PiezasB[7].updatetb(mouseX, mouseY);
                break;
              case 8:
                PiezasB[8].updatepb(mouseX, mouseY);
                break;
              case 9:
                PiezasB[9].updatepb(mouseX, mouseY);
                break;
              case 10:
                PiezasB[10].updatepb(mouseX, mouseY);
                break;
              case 11:
                PiezasB[11].updatepb(mouseX, mouseY);
                break;
              case 12:
                PiezasB[12].updatepb(mouseX, mouseY);
                break;
              case 13:
                PiezasB[13].updatepb(mouseX, mouseY);
                break;
              case 14:
                PiezasB[14].updatepb(mouseX, mouseY);
                break;
              case 15:
                PiezasB[15].updatepb(mouseX, mouseY);
                break;
            }  
       */
     for (Piezas piezas : PiezasB){
            piezas.updateb(mouseX, mouseY);// ejecuta la translación para cada 
         }
     for (Piezas piezas : PiezasN){
            piezas.updaten(mouseX, mouseY);
         }

}
     

 
 void mousePressed() {    
   for (Piezas piezas : PiezasB){ //recorre el arreglo para que en clickb se mire si esta encima y ha presionado
            piezas.clickb(mouseX, mouseY);
         }
       for (Piezas piezas : PiezasN){
          piezas.clickn(mouseX, mouseY);
       }
}

/*void mouseClicked(){
  int x=7;
  int y=7;
  if(get(mouseX,mouseY)==color(0,0,255)){
  for(int i=0;i<7;i++){
       if((mouseX>width/2-height/2+(height/8)*i)&&(mouseX<width/2-height/2+(height/8)*(i+1)))
               x=i;                
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
     PiezasB[0].setTranslation(x,y); 
  }   
}*/