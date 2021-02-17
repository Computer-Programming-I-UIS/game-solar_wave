import ddf.minim.*;
class music {
  AudioPlayer a1, a2, a3, a4, a5;
  music(Minim minim, String fname ) {
    a1 = minim.loadFile(fname); //Se inserta la música
    a2=minim.loadFile(fname);
    a3=minim.loadFile(fname);
    a4=minim.loadFile(fname);
    a5=minim.loadFile(fname);
    // a2=minim.loadFile(fname);
  }
  void start () {
    if (numJuego==1) { //música pantalla menu
      a1.play();
    }
 if (numJuego==2) { //música pantalla menu
 //a2.play();
 a1.pause();
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
