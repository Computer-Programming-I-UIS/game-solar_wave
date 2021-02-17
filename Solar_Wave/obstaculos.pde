class Obstaculo {
  //float bottom=random(150, 160);
  float pX=width;
  float pY=500;
  PImage fueguitos;
  //float w=40;
  float velObs=3;
  int R=25;
  float Rad=25.01;
  //por si lo necesito 
  boolean hits =false;
  Obstaculo() {
    fueguitos= loadImage("llamitas.png");
    //llamitasP =picllamasP;
  }

  void move() {
    pX-=5;
  }

  void dibujar() {
    image(fueguitos, pX, pY);
    /*stroke(0);
    noFill();
    ellipse(pX+20, pY+35, 30, 30);*/
  }

  /*void hit(osop hit) {
    float D= dist(pX+Rad, pY+Rad, hit.px+hit.radhit, hit.py+hit.radhit);
    if (D < Rad+ hit.radhit) { 
      numJuego=3;
      
    }
  }*/
}
