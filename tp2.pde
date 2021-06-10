PImage miFondo;
PImage miLogo;
PImage Imagen;
PImage Imagen2;
PImage Imagen3;
PImage Imagen4;
PImage Imagen5;
PImage Imagen6;

int pantalla;
int tamanoLogoX=3000;
int tamanoLogoY=3000;
int tamanoFuente=600;

float posXFondo=500;
float posXTexto=-500;
float tinteRimg=255;
float tinteGimg=255;
float tinteBimg=255;
float tinteRTexto=100;
float tinteGTexto=100;
float tinteBTexto=100;

String Nombre = "A R R O W";

PFont font;




void setup() 
{
  //textSize(80);
  size (1366, 768);
  miFondo = loadImage ("fondo.png"); 
  imageMode (CENTER);
  miLogo = loadImage ( "aa.png" );
  Imagen= loadImage  ("imagen.png");
  Imagen2= loadImage ("imagen2.png");
  Imagen3= loadImage ("imagen3.png");
  Imagen4= loadImage ("imagen4.png");
  Imagen5= loadImage ("imagen5.png");
  Imagen6= loadImage ("imagen6.png");
  pantalla = 0;
}

void draw () 
{
  if ( pantalla == 0) 
  { 
    if (frameCount < 25){
    image (miFondo,posXFondo, 300, 3000, 1750);
    posXFondo=posXFondo+random(5, 10);
    image (miLogo, width/2, height/2, tamanoLogoX, tamanoLogoY);
    fill (100, 100, 100);  //82 82 82
    }
    else
    {
        tint(tinteRimg,tinteGimg,tinteBimg);
        image (miFondo,posXFondo, 300, 3000, 1750);
        posXFondo=posXFondo+random(5, 10);
        image (miLogo, width/2, height/2,tamanoLogoX, tamanoLogoY);
        tinteRimg=tinteRimg-25.5;
        tinteGimg=tinteGimg-25.5;
        tinteBimg=tinteBimg-25.5;
        tinteRTexto=tinteRTexto-10;
        tinteGTexto=tinteGTexto-10;
        tinteBTexto=tinteBTexto-10;
        fill(tinteRTexto,tinteGTexto,tinteBTexto);
    }
    
    if ((tamanoLogoX>900) && (tamanoLogoY>900))
    {
    tamanoLogoX=tamanoLogoX-100;
    tamanoLogoY=tamanoLogoY-100;
    if (tamanoFuente>0){
      tamanoFuente=tamanoFuente-20;
      posXTexto=posXTexto+38.5;}
    }
   
    font = createFont ("Times New Normal Regular.ttf", tamanoFuente);
    textFont(font);
    text (Nombre, posXTexto, 400);
    
    /////////////////////////////////////////
    if (frameCount > 40)
    {
     pantalla=1;
     fill(tinteRTexto,tinteGTexto,tinteBTexto);
     tamanoFuente=50;
     tinteRimg=0;
     tinteGimg=0;
     tinteBimg=0;
     tinteRTexto=0;
     tinteGTexto=0;
     tinteBTexto=0;
    }
    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            
  }
  if (pantalla == 1)
  {
    if (frameCount<80)
    {
       if (tinteRimg<255)
       {
         tinteRimg=tinteRimg+6.375;
         tinteGimg=tinteGimg+6.375;
         tinteBimg=tinteBimg+6.375;
         tint(tinteRimg,tinteGimg,tinteBimg);
         image (Imagen, 683, 384);
       }
    }
    
    if (frameCount==79) {delay(333);}
    
    if ((frameCount>80) && (frameCount<120))
      {
        font = createFont ("Times New Normal Regular.ttf", tamanoFuente);
        textFont(font);
        text ("Stephen Amell", 100, 600);
        tinteRTexto=tinteRTexto+6.375;
        tinteGTexto=tinteGTexto+6.375;
        tinteBTexto=tinteBTexto+6.375;
        fill(tinteRTexto,tinteGTexto,tinteBTexto);
      }
    if ((frameCount>180) && (frameCount<220))
    {
        text ("Stephen Amell", 100, 600);
        tinteRTexto=tinteRTexto-6.375;
        tinteGTexto=tinteGTexto-6.375;
        tinteBTexto=tinteBTexto-6.375;
        fill(tinteRTexto,tinteGTexto,tinteBTexto);
    }
    
    if ((frameCount>220) && (frameCount<260))
    {
        tinteRimg=tinteRimg-6.375;
        tinteGimg=tinteGimg-6.375;
        tinteBimg=tinteBimg-6.375;
        tint(tinteRimg,tinteGimg,tinteBimg);
        image (Imagen,683, 384);
    }
    
    
    if (frameCount > 270)
    {
     pantalla=2;
     tinteRimg=0;
     tinteGimg=0;
     tinteBimg=0;
     tinteRTexto=0;
     tinteGTexto=0;
     tinteBTexto=0;
    }
  } 
    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    
    if (pantalla == 2)
    {
     if((frameCount > 310 ) && (frameCount < 350))
     {
       if (tinteRimg<255)
         {
           tinteRimg=tinteRimg+6.375;
           tinteGimg=tinteGimg+6.375;
           tinteBimg=tinteBimg+6.375;
           tint(tinteRimg,tinteGimg,tinteBimg);
           image(Imagen2, 683, 384);
         }
     }
    
         if ((frameCount>350) && (frameCount<390))
          {
        //    font = createFont ("Times New Normal Regular.ttf", tamanoFuente);
        //    textFont(font);
            tinteRTexto=tinteRTexto+6.375;
            tinteGTexto=tinteGTexto+6.375;
            tinteBTexto=tinteBTexto+6.375;
            fill(tinteRTexto,tinteGTexto,tinteBTexto);
            text ("Willa Holland", 100, 600);
         }
    if ((frameCount>450) && (frameCount<490))
    {
        tinteRTexto=tinteRTexto-6.375;
        tinteGTexto=tinteGTexto-6.375;
        tinteBTexto=tinteBTexto-6.375;
        fill(tinteRTexto,tinteGTexto,tinteBTexto);
        text ("Willa Holland", 100, 600);
    }
    
    if ((frameCount>490) && (frameCount<530))
    {
        tinteRimg=tinteRimg-6.375;
        tinteGimg=tinteGimg-6.375;
        tinteBimg=tinteBimg-6.375;
        tint(tinteRimg,tinteGimg,tinteBimg);
        image (Imagen2,683, 384);
    }
    
    if (frameCount > 540)
    {
     pantalla=3;
     tinteRimg=0;
     tinteGimg=0;
     tinteBimg=0;
     tinteRTexto=0;
     tinteGTexto=0;
     tinteBTexto=0;
    }
   
  }
   ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
   ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
   ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
   if (pantalla == 3)
   {
   
   if((frameCount > 580 ) && (frameCount < 620))
     {
       if (tinteRimg<255)
         {
           tinteRimg=tinteRimg+6.375;
           tinteGimg=tinteGimg+6.375;
           tinteBimg=tinteBimg+6.375;
           tint(tinteRimg,tinteGimg,tinteBimg);
           image(Imagen3, 683, 384);
         }
     }
    
         if ((frameCount>620) && (frameCount<660))
          {
        //    font = createFont ("Times New Normal Regular.ttf", tamanoFuente);
        //    textFont(font);
            tinteRTexto=tinteRTexto+6.375;
            tinteGTexto=tinteGTexto+6.375;
            tinteBTexto=tinteBTexto+6.375;
            fill(tinteRTexto,tinteGTexto,tinteBTexto);
            text ("David Ramsey", 100, 600);
         }
    if ((frameCount>720) && (frameCount<760))
    {
        tinteRTexto=tinteRTexto-6.375;
        tinteGTexto=tinteGTexto-6.375;
        tinteBTexto=tinteBTexto-6.375;
        fill(tinteRTexto,tinteGTexto,tinteBTexto);
        text ("David Ramsey", 100, 600);
    }
    
    if ((frameCount>760) && (frameCount<800))
    {
        tinteRimg=tinteRimg-6.375;
        tinteGimg=tinteGimg-6.375;
        tinteBimg=tinteBimg-6.375;
        tint(tinteRimg,tinteGimg,tinteBimg);
        image (Imagen3,683, 384);
    }
    
    if (frameCount > 810)
    {
     pantalla=4;
     tinteRimg=0;
     tinteGimg=0;
     tinteBimg=0;
     tinteRTexto=0;
     tinteGTexto=0;
     tinteBTexto=0;
    }
   
   }
   
   ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
   ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
   ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  
  if (pantalla == 4)
   {
   
   if((frameCount > 850 ) && (frameCount < 890))
     {
       if (tinteRimg<255)
         {
           tinteRimg=tinteRimg+6.375;
           tinteGimg=tinteGimg+6.375;
           tinteBimg=tinteBimg+6.375;
           tint(tinteRimg,tinteGimg,tinteBimg);
           image(Imagen4, 683, 384);
         }
     }
    
         if ((frameCount>890) && (frameCount<930))
          {
        //    font = createFont ("Times New Normal Regular.ttf", tamanoFuente);
        //    textFont(font);
            tinteRTexto=tinteRTexto+6.375;
            tinteGTexto=tinteGTexto+6.375;
            tinteBTexto=tinteBTexto+6.375;
            fill(tinteRTexto,tinteGTexto,tinteBTexto);
            text ("Producer", 100, 600);
            text ("Jennifer Lence", 100, 650);
         }
    if ((frameCount>990) && (frameCount<1030))
    {
        tinteRTexto=tinteRTexto-6.375;
        tinteGTexto=tinteGTexto-6.375;
        tinteBTexto=tinteBTexto-6.375;
        fill(tinteRTexto,tinteGTexto,tinteBTexto);
        text ("Producer", 100, 600);
        text ("Jennifer Lence", 100, 650);
    }
    
    if ((frameCount>1030) && (frameCount<1070))
    {
        tinteRimg=tinteRimg-6.375;
        tinteGimg=tinteGimg-6.375;
        tinteBimg=tinteBimg-6.375;
        tint(tinteRimg,tinteGimg,tinteBimg);
        image (Imagen4,683, 384);
    }
    
    if (frameCount > 1080)
    {
     pantalla=5;
     tinteRimg=0;
     tinteGimg=0;
     tinteBimg=0;
     tinteRTexto=0;
     tinteGTexto=0;
     tinteBTexto=0;
    }
   
   }
  
  ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
   ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
   ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  
  if (pantalla == 5)
   {
   
   if((frameCount > 1120 ) && (frameCount < 1160))
     {
       if (tinteRimg<255)
         {
           tinteRimg=tinteRimg+6.375;
           tinteGimg=tinteGimg+6.375;
           tinteBimg=tinteBimg+6.375;
           tint(tinteRimg,tinteGimg,tinteBimg);
           image(Imagen5, 683, 384);
         }
     }
    
         if ((frameCount>1160) && (frameCount<1200))
          {
        //    font = createFont ("Times New Normal Regular.ttf", tamanoFuente);
        //    textFont(font);
            tinteRTexto=tinteRTexto+6.375;
            tinteGTexto=tinteGTexto+6.375;
            tinteBTexto=tinteBTexto+6.375;
            fill(tinteRTexto,tinteGTexto,tinteBTexto);
            text ("Music By", 100, 600);
            text ("Blake Neely", 100, 650);
         }
    if ((frameCount>1260) && (frameCount<1300))
    {
        tinteRTexto=tinteRTexto-6.375;
        tinteGTexto=tinteGTexto-6.375;
        tinteBTexto=tinteBTexto-6.375;
        fill(tinteRTexto,tinteGTexto,tinteBTexto);
        text ("Music By", 100, 600);
        text ("Blake Neely", 100, 650);
    }
    
    if ((frameCount>1300) && (frameCount<1340))
    {
        tinteRimg=tinteRimg-6.375;
        tinteGimg=tinteGimg-6.375;
        tinteBimg=tinteBimg-6.375;
        tint(tinteRimg,tinteGimg,tinteBimg);
        image (Imagen5,683, 384);
    }
    
    if (frameCount > 1350)
    {
     pantalla=6;
     tinteRimg=0;
     tinteGimg=0;
     tinteBimg=0;
     tinteRTexto=0;
     tinteGTexto=0;
     tinteBTexto=0;
    }
   
   }
   
   ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
   ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
   ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  
  if (pantalla == 6)
   {
   
   if((frameCount > 1390 ) && (frameCount < 1430))
     {
       if (tinteRimg<255)
         {
           tinteRimg=tinteRimg+6.375;
           tinteGimg=tinteGimg+6.375;
           tinteBimg=tinteBimg+6.375;
           tint(tinteRimg,tinteGimg,tinteBimg);
           image(Imagen6, 683, 384);
         }
     }
    
         if ((frameCount>1430) && (frameCount<1470))
          {
        //    font = createFont ("Times New Normal Regular.ttf", tamanoFuente);
        //    textFont(font);
            tinteRTexto=tinteRTexto+6.375;
            tinteGTexto=tinteGTexto+6.375;
            tinteBTexto=tinteBTexto+6.375;
            fill(tinteRTexto,tinteGTexto,tinteBTexto);
            text ("Co-producer", 100, 600);
            text ("Jon Wallace", 100, 650);
         }
    if ((frameCount>1530) && (frameCount<1570))
    {
        tinteRTexto=tinteRTexto-6.375;
        tinteGTexto=tinteGTexto-6.375;
        tinteBTexto=tinteBTexto-6.375;
        fill(tinteRTexto,tinteGTexto,tinteBTexto);
        text ("Co-producer", 100, 600);
        text ("Jon Wallace", 100, 650);
    }
    
    if ((frameCount>1570) && (frameCount<1610))
    {
        tinteRimg=tinteRimg-6.375;
        tinteGimg=tinteGimg-6.375;
        tinteBimg=tinteBimg-6.375;
        tint(tinteRimg,tinteGimg,tinteBimg);
        image (Imagen6,683, 384);
    }
    
    if (frameCount > 1620)
    {
     pantalla=6;
     tinteRimg=0;
     tinteGimg=0;
     tinteBimg=0;
     tinteRTexto=0;
     tinteGTexto=0;
     tinteBTexto=0;
    }
   
   }
  
}
