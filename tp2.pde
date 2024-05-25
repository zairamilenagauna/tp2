//Zaira Milena Gauna - Comision 1
//Legajo 119038/8

PImage buttonImg;
PImage[] transitionImgs;
int state = 0; // Estado de la transición
PFont;
String intro;
int py;
void setup() {
  size(640, 480);
  buttonImg = loadImage("boton.png");
  transitionImgs = new PImage[2];
  transitionImgs[0] = loadImage("imagen1.png");
  transitionImgs[1] = loadImage("imagen2.png");

  py = height;
  font = loadFont("arial.vlw");
  textFont(font,32);
  intro ="Esta serie se trata de un grupo de amigos que recorren y experimentas cosas atraves de los años..";
 
}

void draw() {
  background(0);
 textAlign(CENTER, CENTER);
 stroke(255);
 line(0, 100, width, 100, 255, 0);
 float pitch = map(py, height, 100, 255, 0);
 textAlign(CENTER);
 fill(255, 0, 0, tone);
 text(enter, 100, py, 440,400);
 if(py>100){
 }
}
  
  if (state == 0) {
    image(buttonImg, 100, 100);
  } else {
    image(transitionImgs[state - 1], 10, 10);
  }
}

void mousePressed(){
if(py<=100){
  py = height;
}
}
void mouseClicked() {
  // Verifica si se hizo clic en el botón
  if (state == 0 && mouseX > 100 && mouseX < 100 + buttonImg.width &&
      mouseY > 100 && mouseY < 100 + buttonImg.height) {
    
    state++;
    
    if (state >= transitionImgs.length + 1) {
      state = 0;
    }
  }
}
