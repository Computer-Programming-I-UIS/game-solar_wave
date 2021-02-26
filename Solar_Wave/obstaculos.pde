class Obstaculo {
  float pX=width;
  float pY=500;
  PImage fueguitos;
  float velObs=3;
  float R=25;
  boolean hits =false;
  Obstaculo() {
    fueguitos= loadImage("llamitas.png");
  }

  void move() {
    pX-=5;
  }

  void dibujar() {
    image(fueguitos, pX, pY);

  }

  boolean hit(osop hit) {
    boolean hit_ahoraSi = false;
    float D= dist(pX+R, pY+R, hit.pxo+hit.r, hit.pyo+hit.r);
    if (D < R + hit.r) { 
      numJuego=9;
      hit_ahoraSi = true;
      
    }
    return hit_ahoraSi;
  }
}
