class Llamas {
  float x=random(width);
  float y=random(-500, -10);
  float speedY=random(3, 8);
  PImage llamitas;
  float r= random (0, 20);
  float rand = map(r, 0, 20, 4, 10);

  Llamas(PImage picllamas  ) {
    llamitas =picllamas;
  }

  void caer() {
    y = y + speedY;
    speedY = speedY +0.1;
    if (y > height) {

      y= random(-100, -80);
      speedY= map(r, 0, 20, 4, 10);
    }
  }
  void display() {
    image(llamitas, x, y);
  }
}
