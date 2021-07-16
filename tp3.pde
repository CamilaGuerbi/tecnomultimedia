//https://www.youtube.com/watch?v=28ekgcteHbM


boolean mousecolor=false; 
boolean circle1=false, circle2=false, circle3=false, circle4=false, circle5=false, circle6=false, circle7=false; 
float mx; 
float my; 

void setup () {
  size (1366, 768);
}

void draw () {

  background (0);
  for (int y = 0; y <= height; y+=30) 
  {
    for (int x = 0; x <= width; x+=30)
    {
      rect (x, y, 10, 10);
      noStroke ();
      println (frameCount);

      mx = map (mouseX, 0, width, 0, 255);
      my = map (mouseY, 0, height, 0, 255);


      if (mousecolor)
      { 
        fill (mx, 255, my);
      }


      if (circle1)
      { 
        circle ( 300, 500, 95);
      }


      if (circle2)
      { 
        circle ( 700, 150, 115);
      }


      if (circle3)
      { 
        circle ( 900, 600, 55);
      }


      if (circle4)
      { 
        circle ( 650, 550, 88);
      }


      if (circle5)
      { 
        circle ( 200, 90, 70);
      }


      if (circle6)
      { 
        circle ( 1000, 350, 90);
      }
    }


    if (circle7)
    { 
      circle ( 1200, 100, 100);
    }
  }
}



void keyPressed () {

  if ( key == 'a' )  
  {
    if (circle1 == false)
    {
      circle1 = true;
    } else
    {
      circle1 = false;
    }
  }

  if ( key == 'b' ) 
  {
    if (circle2 == false)
    {
      circle2 = true;
    } else
    {
      circle2 = false;
    }
  }

  if ( key == 'c' ) 
  {
    if (circle3 == false)
    {
      circle3 = true;
    } else
    {
      circle3 = false;
    }
  }

  if ( key == 'd' ) 
  {
    if (circle4 == false)
    {
      circle4 = true;
    } else
    {
      circle4 = false;
    }
  }

  if ( key == 'e' ) 
  {
    if (circle5 == false)
    {
      circle5 = true;
    } else
    {
      circle5 = false;
    }
  }

  if ( key == 'f' ) 
  {
    if (circle6 == false)
    {
      circle6 = true;
    } else
    {
      circle6 = false;
    }
  }

  if ( key == 'g' ) 
  {
    if (circle7 == false)
    {
      circle7 = true;
    } else
    {
      circle7 = false;
    }
  }


  if ( key=='m')  
  {
    if (mousecolor == false)
    {
      mousecolor = true;
    } else
    {
      mousecolor = false;
    }
  }

  if (key == 'z') 
  {
    circle1=false;
    circle2=false;
    circle3=false;
    circle4=false;
    circle5=false;  
    mousecolor=false;
    fill(255);
  }
}
