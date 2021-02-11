//Juego xd
mini oso;
Llamas[] llamitas = new Llamas[7];
PImage fondom1, fondop, sol, fondogo, pezg;
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
  //fondop= loadImage("Fondop.png"); 
  //oso = new mini(im1, 390, 450);
  //PImage llamitas= new Llamas(loadImage ("llamitas.png"),80,posE,pos);

  for ( int i = 0; i <llamitas.length; i++) {
    llamitas[i]= new Llamas(loadImage ("llamitas.png"));

    //posE-=55;
    //llamitas[i]= new Llamas(llamitas,80,posE,pos);
    //pos++;
  }
  oso = new mini(390, 450);
  velocidadOso=4;
}

void draw() {
  switch (numJuego) {
  case 0:
    jugando();
    break;
  case 1:
    background(fondogo);
   // fondo negro
    /* textAlign(CENTER);
     fill(255);
     text("GAME OVER", width/2, height/2);*/
    break;
  case 2:
   background(#BADDF2);
  // pez.resize(300,300);
   image(pezg,(width/2)-150,(height/2)-150); // Aquí pondría mi juego 2, si tuviese uno :c
    break;
  default:

    break;
  }
}

void jugando() {
  background(fondom1);
  //float s= map(x, 0, 60, 0, width+20);
  for ( int i = 0; i <llamitas.length; i++) {
    llamitas[i].caer();
    llamitas[i].display();
    llamitas[i].colision(oso);
    if (llamitas[i].getPeligro()) {//Hubo una colisión
      numJuego = 1;
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
      numJuego=2;
 }
 if(s<width+20){
  oso.mostrar();
  oso.move();  
 }
  //println(oso.est);

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
}
void keyPressed () {
  if (keyCode==RIGHT) {
    oso.cambio.x= velocidadOso;
  }
  if (keyCode==LEFT) {
    oso.cambio.x=- velocidadOso;
  }
}
