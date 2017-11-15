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
boolean Turno = true;
int fila =8;
int columna=8;
int t=7;
int n=1;
int j, k;
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
   problemas(n);
   
 }
 
 
void draw(){
     background(0);
     image(img, width/2-height/2, 0, height, height);
     for (int i =0; i<j;i++){
        PiezasB[i].draw();
     }
     for (int i =0; i<k;i++){
        PiezasN[i].draw();
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
     for (int i =0; i<j;i++){
            PiezasB[i].updateb(mouseX, mouseY);// ejecuta la translación para cada 
         }
     for (int i =0; i<k;i++){
            PiezasN[i].updaten(mouseX, mouseY);
         }

}
     

 
 void mousePressed() {    
   
  if(Turno==true){
   for (int i =0; i<j;i++){ //recorre el arreglo para que en clickb se mire si esta encima y ha presionado
          PiezasB[i].clickb(mouseX, mouseY);
       }
   } else {
   for (int i =0; i<k;i++){
          PiezasN[i].clickn(mouseX, mouseY);
       }
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