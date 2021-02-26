class Llamas {
  float x=random(width);
  float y=random(-500, -10);
  float speedY=random(3, 5);
  PVector centro;
  PImage llamitas;
  float r= random (0, 20);
  float rand = map(r, 0, 20, 4, 10);
  float px;
  int r1=30;
  int r2=50;
  int radio = 25;
  boolean peligro = false;

  Llamas(PImage picllamas  ) {
    llamitas =picllamas;
  }

  boolean getPeligro() {
    return peligro;
  }

  void caer() {
    y = y + speedY;
    if (y > height) {

      y= random(-100, -80);
      x=random(width);
      speedY= map(r, 0, 20, 4, 10);
    }
  }
 void display() {
    image(llamitas, x, y);
  }
  
  void reset() {
    
    y=random(-500, -10);
  }

  void colision (mini osoEnPeligro) {
    float d1= dist(this.x+this.radio, this.y+this.radio, osoEnPeligro.center.x+osoEnPeligro.radio, osoEnPeligro.center.y+osoEnPeligro.radio);
    if (d1 < radio + osoEnPeligro.radio) { 
      peligro = true;
    } else 
    peligro = false;
  }
}
