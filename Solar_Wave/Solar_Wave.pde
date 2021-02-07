//Juego xd
mini oso;
Llamas[] llamitas = new Llamas[15];
PImage im1,fondo;
int posicion, velocidad;
float x=0;

void setup(){
  size(800,600);
  fondo = loadImage ("Iglu.png");
  im1 = loadImage("osito mini.png");
   for( int i = 0; i <llamitas.length; i++){
  llamitas[i]= new Llamas(loadImage ("llamitas.png"));
}
  oso = new mini(im1,390,450);
  posicion=2;
  velocidad=2;
  
}
void draw(){
  background(fondo);
   for( int i = 0; i <llamitas.length; i++){
  llamitas[i].caer();
  llamitas[i].display();
   }
   x+=0.1;
   float s= map(x,0,60,0,width+20);
   noStroke();
   fill(s/2,255,0);
   rect(0,0,s,height/12);
   if(s>=width+20){
     //imagen
   }
  oso.mostrar();
  oso.move();
}
void keyPressed (){
  if(keyCode==RIGHT){
    oso.cambio.x=posicion;
  }
  if(keyCode==LEFT){
    oso.cambio.x=-posicion;
  }
}
