void h1() {
  background(#3ACDD3);
  image(pan, 200, 100);
  fill(255);
  textSize(18);
  textAlign(CENTER);
  text("¡SAVE YOURSELF!, follow the map", 400, 230);
  text(" and go to the 'safe place' ", 400, 260);
  stroke(0);  
  fill(#FEFF0F);
  rect(650, 480, 100, 40, 7);
  textSize(20);
  fill(0);
  text("NEXT", 700, 508);
  if (mousePressed && mouseX>650 && mouseX<750 && mouseY<520 && mouseY>480) { //Botón de NO
    numJuego=7;
  }
}
void h2() {
  background(#6DCCFA);
  image(map, 180, 150);
  stroke(0);  
  fill(#FEFF0F);
  rect(650, 540, 100, 40, 7);
  textSize(20);
  fill(0);
  text("NEXT", 700, 565);
  if (mousePressed && mouseX>650 && mouseX<750 && mouseY<580 && mouseY>540) { //Botón de NO
    numJuego=1;
  }
}
void menu() {
  background(menu);
  image(titulo, 150, -10);
  textSize(20);
  stroke(0);  
  fill(#FEFF0F);
  rect(350, 352, 100, 40, 7); //Cuadro RESET
  fill(0);
  textAlign(CENTER);
  text("PLAY", 400, 380);
  if (mousePressed && mouseX>350 && mouseX<450 && mouseY<392 && mouseY>352) { //Botón de reinicio
    numJuego=2;
  }
  /* fill(#FFC00F);
   rect((width/2)-70, (height/2)+102, 140, 40, 7); //Cuadro RESET
   fill(0);
   textAlign(CENTER);
   text("HOW TO PLAY", 400, 430);
   if (mousePressed && mouseX>735 && mouseX<785 && mouseY<420 && mouseY>370) { //Botón de reinicio
   numJuego=1;
   }*/
  fill(#FF370F);
  rect(350, 462, 100, 40, 7); 
  fill(0);
  textAlign(CENTER);
  text("CREDITS", 400, 490);
  if (mousePressed && mouseX>350 && mouseX<450 && mouseY<502 && mouseY>462) { //Botón de reinicio
    numJuego=6;
  }
  image(c1, 20, 510);
  image(c2, 120, 510);
}
void juegoprin() {
  //background(fondop);
  X= constrain(X, 0, 2800);   
  image(fondop, -X, 0);
  X++;
  //X=frameCount;
  pxi=-X+1600;
  //println("x = " + str(x));
  image(fondop2, -X+800, 0);
  image(fondop3, -X+1600, 0);
  image(fondop2, -X+2400, 0);
  image(iglu, pxi, pyi);
  for ( int j = llamitasP.size()-1; j >=0; j--) {
    Obstaculo o = llamitasP.get(j);
    o.move();
    o.dibujar();
    //o.hit(principal);
  }
  if (random(30)<10 && frameCount % 60==0) {
    llamitasP.add(new Obstaculo ());
  }
  pasar(principal);
  principal.dibujar();
  principal.jump();
  principal.land();


  x = 0;
}
void jugando() {
  background(fondom1);
  oso.setEst(true);
  for ( int i = 0; i <llamitas.length; i++) {
    llamitas[i].caer();
    llamitas[i].display();
    llamitas[i].colision(oso);
    if (llamitas[i].getPeligro()) {//Hubo una colisión
      numJuego = 4;
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
    numJuego=5;
    println("x = " + str(x));
    println("s = " + str(s));
    println("Ya");
  }
  if (s<width+20) {
    oso.mostrar();
    oso.move();
  }
  //println(oso.est);
}

void gameover(mini osoMuerto) {
  background(fondogo);
  textAlign(CENTER);
  textSize(20);
  stroke(0);  //Se dibujan los botones y los cuadros que se encuentran en la interfaz
  fill(255);
  square(280, 320, 200);
  fill(0);
  text("¿PLAY AGAIN?", 380, 360);
  //Cuadro YES
  fill(#00F025);
  rect(310, 450, 40, 20, 7);
  textSize(15);
  text("YES", 330, 430);
  //Cuadro NO
  fill(#F00014);
  rect(410, 450, 40, 20, 7);
  textSize(15);
  text("NO", 430, 430);

  if (mousePressed && mouseX>310 && mouseX<350 && mouseY<470 && mouseY>450) { //Botón de YES
    osoMuerto.center.x=width/2;
    numJuego=2;
    x = 0;
  }
  if (mousePressed && mouseX>410 && mouseX<450 && mouseY<470 && mouseY>450) { //Botón de NO
    numJuego=1;
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
  stroke(0);  
  fill(#FEFF0F);
  rect(650, 20, 100, 40, 7);
  textSize(20);
  fill(0);
  text("EXIT", 700, 48);
  if (mousePressed && mouseX>650 && mouseX<750 && mouseY<60 && mouseY>20) { //Botón de NO
    numJuego=1;
  }
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
void pasar (osop cambio) {

  float d= dist(pxi+rad, pyi+rad, cambio.px+cambio.r, cambio.py+cambio.r);
  if (d < rad + cambio.r) { 
    numJuego=3;
  }
}

void creditos() {
  background(fondoc);
  image(osop, 100, 450);
  image(sol, 365, 120);
  image(sol, 365, 290);
  fill(0);
  textSize(30);
  textAlign(CENTER);
  text("CREADORAS", 400, 200);
  text("Ashely Amaya", 400, 240);
  text("Karen Prada", 400, 280);
  text("MÚSICA", 400, 380);
  text("Patrick de Arteaga", 400, 420);
  stroke(0);  
  fill(#FEFF0F);
  rect(600, 490, 100, 40, 7);
  textSize(20);
  fill(0);
  text("EXIT", 650, 515);
  if (mousePressed && mouseX>600 && mouseX<700 && mouseY<530 && mouseY>490) { //Botón de NO
    numJuego=1;
  }
}
