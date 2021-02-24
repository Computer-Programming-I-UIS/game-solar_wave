import ddf.minim.*;
class music {
  AudioPlayer a1, a2, a3, a4, a5;
  music(Minim minim) {
    a1 = minim.loadFile("historia.mp3"); //Se inserta la música
    a2 = minim.loadFile("juegop.mp3");
    a3 = minim.loadFile("minijuego.mp3");
    a4 = minim.loadFile("gameo.mp3");
    a5 = minim.loadFile("ganar.mp3");
    a1.setGain(-30);
    a2.setGain(-25);
    a3.setGain(-25);
    a4.setGain(-20);
    a5.setGain(-10);
    //a3=minim.loadFile(fname);
    //a4=minim.loadFile(fname);
    //a5=minim.loadFile(fname);
    // a2=minim.loadFile(fname);
  }
  void start () {
    if ((numJuego==1 || numJuego== 0) && !a1.isPlaying()) { //música pantalla menu
      a1.play();
      a1.rewind();
      if (!a1.isPlaying()) a1.play();
      if (a2.isPlaying()) a2.pause();
      if (a3.isPlaying()) a3.pause();
      if (a4.isPlaying()) a4.pause();
      if (a5.isPlaying()) a5.pause();
    }
    if (numJuego==2 && !a2.isPlaying()) { //música juego prin
      a2.play();
      a2.rewind();
      if (!a2.isPlaying()) a2.play();
      if (a1.isPlaying()) a1.pause();
      if (a3.isPlaying()) a3.pause();
      if (a4.isPlaying()) a4.pause();
      if (a5.isPlaying()) a5.pause();
    }
    if (numJuego==3 && !a3.isPlaying() ) { //música minijuego
      a3.play();
      a3.rewind();
      if (!a3.isPlaying()) a3.play();
      if (a1.isPlaying()) a1.pause();
      if (a2.isPlaying()) a2.pause();
      if (a4.isPlaying()) a4.pause();
      if (a5.isPlaying()) a5.pause();
    }
    if (numJuego==4 && !a4.isPlaying()) { //música game over
      a4.play();
      if (!a4.isPlaying()) a4.play();
      if (a1.isPlaying()) a1.pause();
      if (a2.isPlaying()) a2.pause();
      if (a3.isPlaying()) a3.pause();
      if (a5.isPlaying()) a5.pause();
    }
    if (numJuego==5 && !a5.isPlaying()) { //música win
      a5.play();
      if (!a5.isPlaying()) a5.play();
      if (a1.isPlaying()) a1.pause();
      if (a2.isPlaying()) a2.pause();
      if (a3.isPlaying()) a3.pause();
      if (a4.isPlaying()) a4.pause();
    }
  }
}
