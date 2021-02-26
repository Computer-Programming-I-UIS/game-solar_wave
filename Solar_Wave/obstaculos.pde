class Obstaculo {
  //float bottom=random(150, 160);
  float pX=width;
  float pY=500;
  PImage fueguitos;
  float velObs=3;
  float R=25;
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

  boolean hit(osop hit) {
    boolean hit_ahoraSi = false;
    float D= dist(pX+R, pY+R, hit.pxo+hit.r, hit.pyo+hit.r);
    if (D < R + hit.r) { 
      numJuego=8;
      hit_ahoraSi = true;
      
    }
    return hit_ahoraSi;
  }
}
