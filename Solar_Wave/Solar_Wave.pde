//Juego xd
mini oso;
osop principal;
Llamas[] llamitas = new Llamas[7];
PImage fondom1, fondop, sol, fondogo, pezg, fondop2;
int  velocidadOso;
boolean colision = false; 
int numJuego = 0;

float x=0;
void setup() {
  size(800, 600);
  //frameRate(5);
  fondom1 = loadImage ("Iglu.png");
  sol = loadImage ("sol.png");
  fondogo = loadImage ("fondo game over.png");
  pezg = loadImage("pez gana.png");
  fondop= loadImage("fondoj-1.png");
  fondop2=loadImage("fondoj-2.png");

  for ( int i = 0; i <llamitas.length; i++) {
    llamitas[i]= new Llamas(loadImage ("llamitas.png"));
  }
  oso = new mini(390, 450);
  velocidadOso=4;

  principal = new osop (300, 400);
}

void draw() {
  switch (numJuego) {
  case 0:
    juegoprin();
    break;
  case 1:
    jugando();
    //background(fondogo);
    // fondo negro
    /* textAlign(CENTER);
     fill(255);
     text("GAME OVER", width/2, height/2);*/
    break;
  case 2:
    background(fondogo);
    break;
  case 3:
    background(#BADDF2);
    image(pezg, (width/2)-200, (height/2)-300); 
    textSize(50);
    fill(0);
    textAlign(CENTER);
    text("You earned", width/2, (height/2)+50);
    text("a fish", width/2, (height/2)+100);
    break;
  case 4:
    // Aquí pondría mi juego 2, si tuviese uno :c
  default:

    break;
  }
}

void jugando() {
  background(fondom1);
  for ( int i = 0; i <llamitas.length; i++) {
    llamitas[i].caer();
    llamitas[i].display();
    llamitas[i].colision(oso);
    if (llamitas[i].getPeligro()) {//Hubo una colisión
      numJuego = 2;
      oso.setEst(false);
    }
  }
  x+=0.1;
  float s= map(x, 0, 60, 0, width+20);
  noStroke();
  fill(s/2, 255, 0);
  rect(0, 0, s, height/12);
  image(sol, s, 2);
  if (s>=width+20) { //se acaba el tiempo
    numJuego=3;
  }
  if (s<width+20) {
    oso.mostrar();
    oso.move();
  }
  //println(oso.est);
}
void juegoprin() {
  background(fondop);
  principal.dibujar();
  principal.jump();
  principal.land();
}
/*
  switch(juego) {
 case 0: //
 draw_miniGame1();
 break;
 case 1: //
 draw_miniGame1();
 break;  
 }   
 */

void keyPressed () {
   principal.keyPressed();
  if (keyCode==RIGHT) {
    oso.cambio.x= velocidadOso;
  }
  if (keyCode==LEFT) {
    oso.cambio.x=- velocidadOso;
  }
}
