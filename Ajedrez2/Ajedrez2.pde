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
boolean Turno=true;
int fila =8;
int columna=8;
int t=7;
int n=0;
int j, k;
int[][] Mx;
int[][] My;
Piezas[] PiezasB;
Piezas[] PiezasN;


void setup() {
  // Ubicación
  Mx=new int[columna][fila];
  My=new int[columna][fila];
  for (int i =0; i<8; i++) {
    for (int j =0; j<8; j++) {
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


void draw() {
  background(0);
  image(img, width/2-height/2, 0, height, height);
  for (int i =0; i<j; i++) {
    PiezasB[i].draw();
  }
  for (int i =0; i<k; i++) {
    PiezasN[i].draw();
  }

  for (int i =0; i<j; i++) {
    PiezasB[i].updateb(mouseX, mouseY);// ejecuta la translación para cada
  }
  for (int i =0; i<k; i++) {
    PiezasN[i].updaten(mouseX, mouseY);
  }
}



void mousePressed() {    

  if (Turno == true) {
    for (int i = 0; i<j; i++) { //recorre el arreglo para que en clickb se mire si esta encima y ha presionado
      PiezasB[i].clickb(mouseX, mouseY);
    }
  } else if(Turno == false) {
    for (int i =0; i<k; i++) {
      PiezasN[i].clickn(mouseX, mouseY);
    }
  }
}


void keyPressed() {
  n++;
  Turno=true;
  problemas(n);
}