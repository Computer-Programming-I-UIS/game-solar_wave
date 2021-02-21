import ddf.minim.*;
class music {
  AudioPlayer a1, a2, a3, a4, a5;
  music(Minim minim) {
    a1 = minim.loadFile("historia.mp3"); //Se inserta la música
    a2 = minim.loadFile("juegop.mp3");
    a1.setGain(-20);
    a2.setGain(-20);
    //a3=minim.loadFile(fname);
    //a4=minim.loadFile(fname);
    //a5=minim.loadFile(fname);
    // a2=minim.loadFile(fname);
  }
  void start () {
    if ((numJuego==1 || numJuego== 0) && !a1.isPlaying()) { //música pantalla menu
      
      a1.play();
    }
    if (numJuego==2) { //música pantalla menu
      
      if(!a2.isPlaying()) a2.play();
      if(a1.isPlaying()) a1.pause();
      //if(a2.isPlaying()){
      //   a1.pause();
      //}
    }
    /* if (numJuego==2) { //música pantalla menu
     a3.play();
     }*/
  }

  /*  void stop() {
   a1.pause();
   }*/
}
// a1.rewind();
/* if (a1.isPlaying()) {
 a2.pause();
 a3.pause();
 a4.pause();
 a5.pause();
 }
 }
 if(numJuego==1){
 a2.play();
 if(a2.isPlaying()){
 a1.pause();
 a3.pause();
 a4.pause();
 a5.pause();
 }
 }
 }
 }*/
// if(numJuego==0){ //música pantalla menu
//  song.play();
/* song.rewind();
 if(song.isPlaying()){
 song2.pause();
 song3.pause();
 song4.pause();
 song5.pause();
 }*/
//  }
