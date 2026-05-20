//Declaring objects

Snowflake[] snowflakes;           // declaring arrya
Arrow[] a1 = new Arrow[5];
Blade blade;

class BackgroundLevel2

{                    
         //constructor
  BackgroundLevel2()
  {
   snowflakes = new Snowflake[25];
    for (int i = 0; i < snowflakes.length; i++) {
      snowflakes[i] = new Snowflake();
    }
                                             // Initialize the array of arrow objects
    for (int i = 0; i < a1.length; i++) {
      a1[i] = new Arrow(i * 35 + 220, 780, 20, 50, 25, 2);
    }
    
    blade = new Blade(800,200);
    bb2 = new BackButton(900,50,928,79,928,73);
  }
  
  
  
  void Render()
  {
    color fromColor = lerpColor(color(135, 206, 235), color(253, 94, 83), 1);
    color toColor = lerpColor(color(197, 239, 247), color(255, 185, 111), 1);
    
                                                          //calling the gradient function 
     setGradient(0,0,width,height,fromColor,toColor);
     
      for (int i = 0; i < snowflakes.length; i++) {
      snowflakes[i].display();
  
      snowflakes[i].y += snowflakes[i].speed;
  
      if (snowflakes[i].y > height) {
        snowflakes[i].reset();
      }
    }
    color c = lerpColor(fromColor,toColor,0.5);

    
        noStroke();
 fill (c);   
 rect(0, 318, 95, 471);
 rect(120, 251, 137, 603);
 rect(241, 306, 95, 546);
 rect(307, 269, 95, 539);
 rect(485, 300, 159, 427);
 rect(658, 203, 120, 579);
 rect(740, 295, 89, 604);
 rect(848, 206, 95, 619);
 rect(960, 171, 41, 542);
 rect(595, 350, 95, 669);
 rect(381, 229, 95, 601);
 rect(64, 339, 95, 518);
 rect(933, 372, 95, 526);
 
 
  rect(424, 129, 3, 471);
   rect(560, 242, 3, 471);
    rect(981, 76, 6, 471);
     rect(403, 206, 46, 450);
      rect(658, 159, 55, 471);
 
 //windows
 
 fill (toColor);
  rect(11, 348, 15, 15);
  rect(49, 376, 15, 15);
  rect(141, 276, 15, 15);
  rect(175, 311, 15, 15);
  rect(216, 276, 15, 15);
  rect(217, 348, 15, 15);
  rect(323, 283, 15, 15);
  rect(363, 283, 15, 15);
  rect(361, 323, 15, 15);
  rect(441, 323, 15, 15);
  rect(403, 348, 15, 15);
  rect(402, 251, 15, 15);
  rect(439, 285, 15, 15);
  rect(441, 250, 15, 15);
  rect(11, 407, 15, 15);
  rect(505, 320, 15, 15);
  rect(505, 348, 15, 15);
  rect(11, 348, 15, 15);
  rect(540, 348, 15, 15);
  rect(577, 348, 15, 15);
  rect(613, 319, 15, 15);
  rect(702, 218, 15, 15);
  rect(703, 250, 15, 15);
  rect(679, 286, 15, 15);
  rect(679, 316, 15, 15);
  rect(740, 348, 15, 15);
  rect(741, 285, 15, 15);
  rect(869, 224, 15, 15);
  rect(869, 256, 15, 15);
  rect(909, 287, 15, 15);
  rect(979, 185, 15, 15);
  rect(911, 322, 15, 15);
  
 
 
     
     c3.Render();
     c3.Move();
     c4.Render();
     c4.Move();
     
     
     //calling arrow
    for (int i = 0; i < a1.length; i++)
    {
       a1[i].Render();
      a1[i].move();
     
    }
  
  
  //platform
     fill(117, 61, 2);  //brown
     rect(0, 141,474,25);
     rect(253, 360,141,26);
     rect(496, 480,118,25);
     rect(734, 370,101,25);
     rect(839, 107,172,25);
     rect(570, 244,101,25);
     rect(641, 751,364,25);
     
     fill(230);    // white
     rect(-5, 643,218,20);
     rect(432, 643,218,20);
     
  
                                                          //ground
     noStroke();
     fill(117, 61, 2);
     rect(0,681,212,199);     
  
     fill(97,52,10);
     rect(0,641,212,109);
  
     
     fill(230);
     rect(0,617,212,26);
  
     
      fill(117, 61, 2);
      rect(212,777,231,32);
       fill(230);
      rect(211,777,235,18);            //// arrow above this rectangle
                         
     
      
   
   
     fill(117, 61, 2);
     rect(381,741,270,199);     
  
     fill(97,52,10);
     rect(380,641,270,109);
  
     
     fill(230);
     rect(380,617,270,26);
     
    
      fill(117, 61, 2); 
     rect(645,764,406,53);  
     
      fill(230);
     rect(650,750,383,42);                   /// monster on this rectangle
     
   
     arc(284, 360, 60, 25, 0, PI);               //small arcs on obstacles
     arc(296+23, 360, 43, 28, 0, PI);
     arc(0+359, 360, 53, 30, 0, PI);
     arc(27, 141, 60, 25, 0, PI);              
     arc(73+0, 141, 43, 28, 0, PI);
     arc(0+117, 141, 53, 30, 0, PI);
      arc(171, 140, 60, 25, 0, PI);             
     arc(195+23, 141, 43, 28, 0, PI);
     arc(0+257, 141, 53, 30, 0, PI);
      arc(300, 141, 60, 25, 0, PI);              
     arc(320+23, 140, 43, 28, 0, PI);
     arc(0+386, 141, 53, 30, 0, PI);
      arc(422, 141, 60, 25, 0, PI);               
     arc(430+23, 141, 43, 28, 0, PI);
     arc(0+598, 244, 53, 24, 0, PI);
      arc(640, 244, 60, 25, 0, PI);               
     arc(737+23, 370, 47, 14, 0, PI);
     arc(0+868, 107, 53, 30, 0, PI);
      arc(806, 370, 60, 25, 0, PI);              
     arc(871+23, 107, 43, 28, 0, PI);
     arc(0+982, 107, 53, 30, 0, PI);
      arc(934, 107, 60, 25, 0, PI);               
     arc(315+220, 480, 71, 28, 0, PI);
     arc(0+586, 480, 51, 19, 0, PI);
      
                                                      
                                                           
                                                           //ground snow curves
      
  
       
     fill(230);
     arc(0, 643, 100, 100, 0, PI);
     arc(112,643, 100, 100, 0, PI);
  
     arc(430, 643, 100, 100, 0, PI);
     arc(600,643, 100, 100, 0, PI);
     arc(600,643, 100, 100, 0, PI);
  
    
     
     arc(54, 643, 60, 60, 0, PI);               //small arcs
     arc(60+119, 643, 60, 60, 0, PI);
  
     arc(60+441, 643, 60, 60, 0, PI);
  
  
   
  
     
     blade.Render();
     blade.Move();
        
    bb2.Render();
    bb2.mouseHover();   
  
     TotalScoreDisplay();
  
  }
  
   //function to set gradient to background
   void setGradient(int x,int y,int w,int h, color from, color to)
    {
      for(int i=y;i<y+h;i++)
       {
         color c = lerpColor(from,to, map(i,y,y+h,1,0));
         stroke(c);
         line(x,i,x+w,i);
       }
    }
    
     void TotalScoreDisplay()
 {
   fill(230,115,117);
   textSize(30);
    text("Total Score: " + level1.score,140,50);
    
 
 }
  
  
  }
