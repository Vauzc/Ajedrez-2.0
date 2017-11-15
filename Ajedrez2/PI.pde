/*PImage ini;
PImage gf;
boolean a=false;
Btom[] b = new Btom [3];

void setup() {
  fullScreen();
  //size(900, 500);

  b[0] = new Btom (width-(width/3), height-(height/3)*2.5, width/4, height/10, color(0,128,255), "Jugar");
  b[1] = new Btom (width-(width/3), height-(height/3)*2, width/4, height/10, color(0,128,255), "Modo Libre");
  b[2] = new Btom (width-(width/3), height-(height/4), width/4, height/10, color(0,128,255), "Instrucciones");
  ini = loadImage("a1.jpg");
  gf = loadImage("b11.gif");
}
void draw() { 
  background(0);
  image(ini, 0, 0, width, height);
  image(gf, width/15,height/8,width-width/2,height-height/5);
  for (Btom i : b) 
    i.pintar();
}
void mouseMoved() {
  for (int i =0; i<3; i++) {
    if (dist(mouseX, mouseY, b[i].trans.x+b[i].gn.x/2, b[i].trans.y+b[i].gn.y/2)<width/25) {
      b[i].setCol(color(255,102,102));
    } else {
      b[i].setCol(color(0,128,255));
    }
  }
}

void mousePressed() {
  if ( mouseButton == LEFT ) {
    a=true;
  }
}
void mouseReleased() {
  a=false;
}*/