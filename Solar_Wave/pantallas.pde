void h1() {
  background(h1);
  stroke(0);  
  fill(#FEFF0F);
  rect(450, 50, 300, 150, 10);
  rect(680, 530, 100, 40, 7);
  textSize(15);
  fill(0);
  textAlign(LEFT);
  text("Paco, is a polar bear which is very", 470, 80); 
  text("happy in his habitat with his", 470, 110);
  text("family, but he didn't expect human", 470, 140);
  text("actions be so far...", 470, 170);
  text("NEXT", 708, 555);
  if (mousePressed && mouseX>680 && mouseX<780 && mouseY<580 && mouseY>530) { //Botón de NEXT
    numJuego=1;
    mousePressed = false;
  }
}
void h2() {
  background(h2);
  stroke(0);  
  fill(#FEFF0F);
  rect(450, 50, 315, 110, 10);
  rect(680, 530, 100, 40, 7);
  textSize(15);
  fill(0);
  textAlign(LEFT);
  text("Therefore, one day the solar radiations", 470, 80);
  text("aggressively stalked the North Pole...", 470, 110);
  text("NEXT", 708, 555);
  if (mousePressed && mouseX>680 && mouseX<780 && mouseY<580 && mouseY>530) { //Botón de NEXT
    numJuego=2;
    mousePressed = false;
  }
}
void h3() {
  background(h3);
  stroke(0);  
  fill(#FEFF0F);
  rect(450, 50, 320, 110, 10);
  rect(680, 530, 100, 40, 7);
  textSize(15);
  fill(0);
  textAlign(LEFT);
  text("Forcing Paco to undertake a long journey", 460, 80);
  text("to save his life for those who could not...", 460, 110);
  text("NEXT", 708, 555);
  if (mousePressed && mouseX>680 && mouseX<780 && mouseY<580 && mouseY>530) { //Botón de NEXT
    numJuego=3;
    mousePressed = false;
  }
}
void h4() {
  background(#D6DEFF);
  image(pan, 200, 100);
  fill(255);
  textSize(18);
  textAlign(CENTER);
  text("¡SAVE YOURSELF!, follow the map", 400, 230);
  text(" and go to the 'safe place' ", 400, 260);
  stroke(0);  
  fill(#FEFF0F);
  rect(680, 530, 100, 40, 7);
  textSize(20);
  fill(0);
  text("NEXT", 730, 557);
  if (mousePressed && mouseX>680 && mouseX<780 && mouseY<580 && mouseY>530) { //Botón de NEXT
    numJuego=4;
    mousePressed = false;
  }
}
void h5() {
  background(map);
  stroke(0);  
  fill(#FEFF0F);
  rect(680, 530, 100, 40, 7);
  textSize(20);
  fill(0);
  text("NEXT", 730, 557);
  if (mousePressed && mouseX>680 && mouseX<780 && mouseY<580 && mouseY>530) { //Botón de NEXT
    numJuego=5;
    mousePressed = false;
  }
}
void menu() {
  background(menu);
  image(titulo, 150, -10);
  textSize(20);
  stroke(0);  
  fill(#FEFF0F);
  rect(350, 352, 100, 40, 7); 
  fill(0);
  textAlign(CENTER);
  text("PLAY", 400, 380);
  if (mousePressed && mouseX>350 && mouseX<450 && mouseY<392 && mouseY>352) { //Botón de PLAY
    numJuego=6;
    mousePressed = false;
  }
  fill(#FFC00F);
  rect(330, 402, 140, 40, 7); //Cuadro RESET
  fill(0);
  textAlign(CENTER);
  text("HOW TO PLAY", 400, 430);
  if (mousePressed && mouseX>330 && mouseX<470 && mouseY<442 && mouseY>402) { //Botón de reinicio
    numJuego=11;
    mousePressed = false;
  }
  fill(#FF370F);
  rect(350, 462, 100, 40, 7); 
  fill(0);
  textAlign(CENTER);
  text("CREDITS", 400, 490);
  if (mousePressed && mouseX>350 && mouseX<450 && mouseY<502 && mouseY>462) { //Botón de reinicio
    numJuego=10;
    mousePressed = false;
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
    o.hit(principal);
  }
  if (random(30)<10 && frameCount % 60==0) {
    llamitasP.add(new Obstaculo ());
  }
  pasar(principal);
  principal.dibujar();
  principal.jump();
  principal.land();
  x = 0;
  
  fill(0);
  text("Fish:"+p, 700, 50);
  image(pezmin, 600, 20);
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
      numJuego = 8;
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
    numJuego=9;
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
  stroke(0);  
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
    principal.reset();
    osoMuerto.center.x=width/2;
    numJuego=6;
    x = 0;
    X = 0;
    for (int i = 0; i < 7; i++) {
      llamitas[i].reset();
    }
    mousePressed = false;
  }
  if (mousePressed && mouseX>410 && mouseX<450 && mouseY<470 && mouseY>450) { //Botón de NO
     principal.reset();
    osoMuerto.center.x=width/2;
    numJuego=5;
    x = 0;
    X = 0;
    for (int i = 0; i < 7; i++) {
      llamitas[i].reset();
    }
    mousePressed = false;
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
  if (mousePressed && mouseX>650 && mouseX<750 && mouseY<60 && mouseY>20) { //Botón de EXIT
    numJuego=5;
    mousePressed = false;
     p=p+1;
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

  float d= dist(pxi+rad, pyi+rad, cambio.pxo+cambio.r, cambio.pyo+cambio.r);
  if (d < rad + cambio.r) { 
    numJuego=7;
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
  if (mousePressed && mouseX>600 && mouseX<700 && mouseY<530 && mouseY>490) { //Botón de EXIT
    numJuego=5;
    mousePressed = false;
  }
}
void howtoplay() {
  background(0);
  image(p1, 40, 40);
  fill(255);
  textSize(20);
  textAlign(LEFT);
  text("PRESS SPACE TO JUMP AND DODGE", 350, 80);
  text("THE FLAMES", 350, 100);
  image(p2, 500, 220);
  textAlign(LEFT);
  text("MOVE WITH THE ARROWS OF THE KEYBOARD", 40, 260);
  text("FROM RIGHT TO LEFT TO DODGE", 40, 280);
  text("THE FLAMES", 40, 300);
  //image(p3,40,440);
  textAlign(LEFT);
  text("CLICK OVER THE CARDS AND FIND", 350, 440);
  text("THE COUPLE", 350, 460);
  stroke(0);  
  fill(#FEFF0F);
  rect(680, 530, 100, 40, 7);
  textSize(20);
  fill(0);
  text("EXIT", 708, 557);
  if (mousePressed && mouseX>680 && mouseX<780 && mouseY<580 && mouseY>530) { //Botón de NEXT
    numJuego=5;
    mousePressed = false;
  }
}

void mini2 () {
  background(iglu);


  for (int indice = 0; indice < (cantidadCartas); indice ++) {

    cartas[indice].dibujar();
    if (cartas[indice].mostrando) {
      if ( cartaRevelada1 > 8) {
        cartaRevelada1 = indice;
      } else if (cartaRevelada1 != indice) {
        cartaRevelada2 = indice;
      }
    }

    if (indice == cartaRevelada2) {
      //delay(3000);
    }
  }
  if (cartaRevelada2 < 8) {
    if (cartas[cartaRevelada2].numeroImagen == cartas[cartaRevelada1].numeroImagen) {  // Encontró pareja!
      cartas[cartaRevelada2].desaparecer = true;
      cartas[cartaRevelada1].desaparecer = true;
    } else {

      cartas[cartaRevelada2].mostrando = false;
      cartas[cartaRevelada1].mostrando = false;

      cartaRevelada2 = 10;
      cartaRevelada1 = 10;
    }
  }
}
