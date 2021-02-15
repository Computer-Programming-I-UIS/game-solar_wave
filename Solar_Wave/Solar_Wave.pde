//Juego xd
mini oso;
osop principal;
Llamas[] llamitas = new Llamas[1];
PImage fondom1, fondop, sol, fondogo, pezg, fondop2, menu, titulo;
int  velocidadOso;
boolean colision = false; 
int numJuego = 0;

float x=0;
void setup() {
  size(800, 600);
  //frameRate(5);
  fondom1 = loadImage("Iglu.png");
  sol = loadImage("sol.png");
  fondogo = loadImage ("fondo game over.png");
  pezg = loadImage("pez gana.png");
  fondop= loadImage("fondoj-1.png");
  fondop2=loadImage("fondoj-2.png");
  menu= loadImage("fmenu.png");
  titulo = loadImage("swave.png");
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
    menu();
    break;
  case 1:
    juegoprin();
    break;
  case 2:
    jugando();
    break;
  case 3:
    gameover(oso);
    break;
  case 4:
    win();
    break;
  case 5: 
    // Aquí pondría mi juego 2, si tuviese uno :c
    break;
  default:

    break;
  }
}
void menu() {
  background(menu);
  image(titulo,150,-10);
  textSize(20);
  stroke(0);  
  fill(#FEFF0F);
  rect(350, 352, 100, 40, 7); //Cuadro RESET
  fill(0);
  textAlign(CENTER);
  text("PLAY", 400, 380);
  if (mousePressed && mouseX>350 && mouseX<450 && mouseY<392 && mouseY>352) { //Botón de reinicio
    numJuego=1;
  }
  /* fill(#FFC00F);
   rect((width/2)-70, (height/2)+102, 140, 40, 7); //Cuadro RESET
   fill(0);
   textAlign(CENTER);
   text("HOW TO PLAY", 400, 430);
   if (mousePressed && mouseX>735 && mouseX<785 && mouseY<420 && mouseY>370) { //Botón de reinicio
   numJuego=1;
   }
   fill(#FF370F);
   rect((width/2)-50, (height/2)+152, 100, 40, 7); //Cuadro RESET
   fill(0);
   textAlign(CENTER);
   text("CREDITS", 400, 480);
   if (mousePressed && mouseX>735 && mouseX<785 && mouseY<420 && mouseY>370) { //Botón de reinicio
   numJuego=1;
   }*/
}
void juegoprin() {
  background(fondop);
  principal.dibujar();
  principal.jump();
  principal.land();
  stroke(0);  //no dibujar botones, porque va el iglu
  fill(#D108FF);
  square(735, 300, 50); //Cuadro RESET
  if (mousePressed && mouseX>735 && mouseX<785 && mouseY<350 && mouseY>300) { //Botón de reinicio
    numJuego=2;
  }
}
void jugando() {
  background(fondom1);
  oso.setEst(true);
  for ( int i = 0; i <llamitas.length; i++) {
    llamitas[i].caer();
    llamitas[i].display();
    llamitas[i].colision(oso);
    if (llamitas[i].getPeligro()) {//Hubo una colisión
      numJuego = 3;
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
    numJuego=4;
  }
  if (s<width+20) {
    oso.mostrar();
    oso.move();
  }
  //println(oso.est);
}

void gameover(mini osoMuerto) {
  background(fondogo);
  textSize(20);
  stroke(0);  //Se dibujan los botones y los cuadros que se encuentran en la interfaz
  fill(255);
  square(280, 320, 200);
  fill(0);
  text("¿PLAY AGAIN?", 310, 360);
  //Cuadro YES
  fill(#00F025);
  rect(310, 450, 40, 20, 7);
  textSize(15);
  text("YES", 315, 430);
  //Cuadro NO
  fill(#F00014);
  rect(410, 450, 40, 20, 7);
  textSize(15);
  text("NO", 420, 430);

  if (mousePressed && mouseX>310 && mouseX<350 && mouseY<470 && mouseY>450) { //Botón de YES
    numJuego=1;
    osoMuerto.center.x=width/2;
  }
  if (mousePressed && mouseX>410 && mouseX<450 && mouseY<470 && mouseY>450) { //Botón de NO
    numJuego=0;
  }
}
void win() {
  background(#BADDF2);
  image(pezg, (width/2)-200, (height/2)-300); 
  textSize(50);
  fill(0);
  textAlign(CENTER);
  text("You earned", width/2, (height/2)+50);
  text("a fish", width/2, (height/2)+100);
  stroke(0);  //Se dibujan los botones y los cuadros que se encuentran en la interfaz
  fill(#D108FF);
  square(735, 270, 50); //Cuadro RESET
  ///numJuego=0;
}
void keyPressed () {
  principal.keyPressed();
  if (keyCode==RIGHT) {
    oso.cambio.x= velocidadOso;
  }
  if (keyCode==LEFT) {
    oso.cambio.x=- velocidadOso;
  }
}
