void setup() {
  
  size (600,600);
  colorMode (HSB);
  colorMode (HSB,360,100,100);

  }
  
  void draw() {
  
  
   //lineas
  stroke (0);
  strokeWeight (3);
  line (300, 500, 120, 400);
  
  stroke (0);
  strokeWeight (3);
  line (120, 400, 120, 200);
  
  stroke (0);
  strokeWeight (3);
  line (120, 200, 300, 70);
  
  stroke (0);
  strokeWeight (3);
  line (300, 70, 500 , 200);
  
  stroke (0);
  strokeWeight (3);
  line (500, 200, 500, 400);
  

 stroke (0);
 strokeWeight (3);
  line (500, 400, 300, 500);
  
  noStroke();
  
    //circulo rojo
  fill (0, 100, 100);
  circle (300,500, 130);
  
  //circulo azul
  fill (240, 100, 100);
  circle (120, 200, 130);
  
  //circulo verde
  fill (120, 100, 100);
  circle (500, 200, 130);
  
  //circulo magenta
  fill (309, 100, 100);
  circle ( 120, 400 , 80);
  
  //circulo amarillo
  fill (60, 100, 100);
  circle (500, 400, 80);
  
  //circulo cyan
  fill (182, 100, 100);
  circle (300, 70, 80);
  
 //circulo fucsia
 fill (329, 100, 100);
 circle (200, 445, 30);
 
 //circulo violeta
 fill (288, 100, 100);
 circle ( 120, 310, 30);
 
 //circulo cerúleo
 fill (200, 100, 100);
 circle ( 210 , 135, 30);
 
 //circulo verde cyan
 fill (155, 100, 100);
 circle (390, 130 , 30);
 
 //circulo lima
 fill (85, 100, 100);
 circle (500, 310, 30);
 
 //circulo naranja
 fill ( 24, 100, 100);
 circle (410,  450, 30);
}
