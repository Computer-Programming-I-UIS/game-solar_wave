class osop {
  int totalFrames=2;
  int currentFrame=0;
  int frameDivisor = 20, cntFrame = 0;
  PImage[] picoso = new PImage[totalFrames];
  int px, py;

  osop( int Px, int Py) {
    px=Px;
    py=Py;
    for (int j = 0; j < totalFrames; j++) {
      String osoprin = "Oso prin" + nf(j, 2) + ".png";
      picoso[j] = loadImage(osoprin);
    }
  }
  void dibujar() { // Called each frame
    image(picoso[currentFrame], x, 400);
    cntFrame++;
    if (cntFrame == frameDivisor) { // called each 'frameDivisor' frames
      currentFrame = (currentFrame +1) % picoso.length;
      cntFrame = 0;
    }
  }
}
