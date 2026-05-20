class Menu

  {                                                      //Declaring variables
    float angle1 = 0.01;
    float angle2;
    color c ;
    color sunsetOrange = color (255, 136, 51);
    color softNavyBlue = color(65, 105, 225);
    color peachyPink = color(255, 204, 204);
    int numberOfRectangles = 50; 
     int x= 107;
     int y =19;
     int x1= 3;
     int y1 =9; 
     int x2= 3;
     int y2 =9; 
    
    
    
                                                         //Declaring Variables
    int groundArcX = 60;                //variable for Ground
    int posX = 0;
    int initialPosition = 0;            //  variable for clouds
    int speed = 1;                  
    boolean isBlinking = false;        //variables for eyes
    int blinkTimer = 0;
    int blinkDuration = 45; 
    String menuTitle1 = ("Woodie's");        // Title
    String menuTitle2 = ("Wild Expedition");    
    PFont font1;                                      // Font change
    color textColor = color (254, 162, 53);           //Color for Title
    color headingColor = color(65, 105, 225);
    color black = color(0);
    
   MenuButton[] buttons =  new MenuButton[4];  ;           // Declaring object for class menubutton
    
    //Constructor
   Menu()
   {
     
      buttons[0] =  new MenuButton(340,326,70,62); // playbutton
      buttons[1] =  new MenuButton(482,326,70,62); // music button
      buttons[2] =  new MenuButton(612,326,70,62);  //exit button
      buttons[3] =  new MenuButton(900,700,60,52);  //Help button

 
   }

   void Render()
  {
   
                                                        // calling cloud objects
  
                                                       // Background 
                                                       // Calculate gradient colors based on mouse position
  float gradient = map(mouseY, 0, height, 0, 1);
  color fromColor = lerpColor(color(135, 206, 235), color(253, 94, 83), gradient);
  color toColor = lerpColor(color(197, 239, 247), color(255, 185, 111), gradient);
   
                                                          //calling the gradient function 
     setGradient(0,0,width,height,fromColor,toColor);
     
   
   c1.Render();
   c1.Move();
   c2.Render();
   c2.Move();
                                                          //Code for Heading                                                      
    float textColorPercentage = map(mouseY, 0, height, 0, 1);
    color currentHeadingColor = lerpColor( color(204,92,88),color(97,52,10), textColorPercentage);
    stroke(0);
    font1 = loadFont("Machinta-48.vlw");
    textFont(font1, 50);
    textAlign(CENTER, CENTER);
    textSize(100);
    fill(currentHeadingColor);
    text(menuTitle1, 484, 164 );                          //Heading
     text(menuTitle2, 510, 254 );                          //Heading
    


   noStroke(); 
   fill(153,214,12);      //Light color  bush2
   ellipse(824,596,343,42);
   push();
   translate(969,549);
    scale(1.2);
   rotate(radians(39));
   ellipse(0,0,50,71);
   rotate(radians(85));
   ellipse(32,45,98,77);
   rotate(radians(85));
   ellipse(182,-110,94,60);
   rotate(radians(8));
   ellipse(118,-90,86,59);
   rotate(radians(239));
   ellipse(-14,104,99,60);
   pop();


  fill(44,116,22);                                                        //Darkcolor bush2
   ellipse(840,591,282,24);
   push();
   translate(927,563);
   scale(0.8);
   rotate(radians(39));
   ellipse(0,0,69,89);
   rotate(radians(85));
   ellipse(24,55,134,89);
   rotate(radians(85));
   ellipse(192,-110,116,77);
   rotate(radians(8));
   ellipse(123,-82,113,80);
   rotate(radians(239));
   ellipse(-25,108,118,71);
   pop();
   
   

   noStroke();                                                       //tree1 
      fill(97,52,10);
      rect(-2,-98,61,800);
      push();
      translate(50,400);
      rotate(10);
      rect(21,47,20,80);
      pop();
      fill(117, 61, 2);
      rect(20,280,10,45,30);
      rect(15,520,18,65,30);


      fill(97,52,10);   //tree2 
      rect(935,47,71,664);
      push();
      translate(950,500);
      rotate(40);
      rect(-104,81,22,80);
      pop();
      
      fill(117, 61, 2);
      rect(966,196,17,91,30);
      rect(975,422,10,35,30);
      
      
        
    
      fill(44,116,22);                                                        //leaves 1
      ellipse(0,0,550,290);
      circle(100,120,130);
      circle(200,121,105);
      circle(250,70,80);
      circle(300,0,150);
     
       fill(153,214,12);                                                      //Light color leaves 1
       push();
       translate(17,0);
       scale(0.9);
      ellipse(0,0,550,290);
      circle(100,120,130);
      circle(200,121,105);
      circle(250,70,80);
      circle(300,0,150);
      pop();
      
    
      fill(44,116,22);                                                        //leaves 2
      ellipse(822,0,400,250);
      circle(916,104,116);
      circle(833,114,109);
      circle(771,120,82);
      circle(702,91,100);
      circle(649,31,90);
      circle(970,95,90);
     
      fill(153,214,12);                                                      //Light color leaves 2
      push();
      translate(79,0);
      scale(0.9);
      ellipse(857,0,400,250);
      circle(916,104,116);
      circle(833,114,109);
      circle(771,120,82);
      circle(702,91,100);
      circle(649,31,90);
      circle(970,95,90);
      pop();
    
    

   noStroke();  
                                                                               //Ground  
   fill(117, 61, 2);
   rect(0,726,1000,199);
   
   fill(97,52,10);
   rect(0,625,1000,105);

   
                                                     //Grass 
   
      noStroke();                                                                          // Large ones Darkcolored
     fill(22,81,4);
   arc(0, 600, 100, 113, 0, PI);
   arc(120,599, 100, 113, 0, PI);
   arc(240, 599, 100, 113, 0, PI);
   arc(360, 600, 100, 113, 0, PI);
   arc(480, 599, 100, 113, 0, PI);
   arc(600,599, 100, 113, 0, PI);
   arc(720, 599, 100, 113, 0, PI);
   arc(840, 599, 100, 113, 0, PI);
   arc(960, 599, 100, 113, 0, PI);
   arc(1108,485, 100, 113, 0, PI);
   
                                                                                //Small ones Dark colored
     noStroke();
     fill(22,81,4);
    arc(groundArcX, 599, 60, 72, 0, PI);
   arc(groundArcX+120, 599, 60, 72, 0, PI);
   arc(groundArcX+240, 599, 60, 72, 0, PI);
   arc(groundArcX+360, 599, 60, 72, 0, PI);
   arc(groundArcX+480, 599, 60, 72, 0, PI);
   arc(groundArcX+600, 599, 60, 72, 0, PI);
   arc(groundArcX+720, 599, 60, 72, 0, PI);
   arc(groundArcX+840, 599, 60, 72, 0, PI);
   arc(groundArcX+1060, 599, 60, 72, 0, PI);  

                                                                                 //Large ones Light colored
   fill(153,214,12);
   arc(0, 600, 100, 100, 0, PI);
   arc(120,599, 100, 100, 0, PI);
   arc(240, 599, 100, 100, 0, PI);
   arc(360, 600, 100, 100, 0, PI);
   arc(480, 599, 100, 100, 0, PI);
   arc(600,599, 100, 100, 0, PI);
   arc(720, 599, 100, 100, 0, PI);
   arc(840, 599, 100, 100, 0, PI);
   arc(960, 599, 100, 100, 0, PI);
   arc(1108,485, 100, 100, 0, PI);
   
   
                                                                                   //Small ones Light Colored
     fill(153,214,12);
      arc(groundArcX, 599, 60, 60, 0, PI);
   arc(groundArcX+120, 599, 60, 60, 0, PI);
   arc(groundArcX+240, 599, 60, 60, 0, PI);
   arc(groundArcX+360, 599, 60, 60, 0, PI);
   arc(groundArcX+480, 599, 60, 60, 0, PI);
   arc(groundArcX+600, 599, 60, 60, 0, PI);
   arc(groundArcX+720, 599, 60, 60, 0, PI);
   arc(groundArcX+840, 599, 60, 60, 0, PI);
   arc(groundArcX+1060, 599, 60, 60, 0, PI);  

                                                                                   //bushes
    noStroke();                                                                            //dark color
   fill(44,116,22);
   ellipse(239,591,282,39);
   push();
   translate(347,554);
   scale(1.0);
   rotate(radians(39));
   ellipse(0,0,69,89);
   rotate(radians(85));
   ellipse(24,55,134,89);
   rotate(radians(85));
   ellipse(192,-110,116,77);
   rotate(radians(8));
   ellipse(123,-82,113,80);
   rotate(radians(239));
   ellipse(-25,108,118,71);
   pop();
   
       noStroke();                                                                           //Light color inside of bush
     fill(153,214,12);
   ellipse(236,596,267,42);
   push();
   translate(347,554);
   rotate(radians(39));
   ellipse(0,0,50,71);
   rotate(radians(85));
   ellipse(32,45,98,77);
   rotate(radians(85));
   ellipse(182,-110,94,60);
   rotate(radians(8));
   ellipse(118,-90,86,59);
   rotate(radians(239));
   ellipse(-14,104,99,60);
   pop();
   
         stroke(0);                                                    //Robot
       strokeWeight(2);
      fill(187,195,231);
       push();
      translate(157,644);
      rotate(radians(-34));
      fill(236,176,165);
      rect(66,-139,13,70);                                  
       pop();         //1 st hand
       
      
      push();
      translate(36,664);
      rotate(radians(32));
      fill(236,176,165);
      rect(-71,-167,12,70);                                 //2nd hand
      pop();
      
                                                              //legs

      fill(236,176,165);
      rect(77,547,11,49);                                     //1st leg
      rect(115,552,11,49);                                     //2nd leg
      rect(98,446,12,26);                                      //neck
      fill(188,197,228);
      rect(59,470,90,83,30);                                    //body
      rect(99,389,6,-60);                                       //antenna
      circle(104,329,16);                                       //antenna circle
      fill(236,176,165);
      //rect(62,388,85,67,40);      //face
      circle(104,418,83);
        ///mouth
        stroke(0);
       arc(105,433,23,9,radians(0), radians(180));
       robotEyeBlink();
       //feet
      fill(188,197,228); 
      rect(72,580,20,20); 
      rect(111,580,22,20);
      
                                                               //MenuButton
    for(int i =0; i<4;i++)
    {
       buttons[i].Render();      
    }      
     
      //Gear(x,y,150);                    //Gear 
      // MoveGear();
    
  }
  
  void robotEyeBlink()
   {
  
     blinkTimer++;

    // Check if it's time to blink
    if (blinkTimer >= blinkDuration) {
      isBlinking = !isBlinking; // Reversing the blinking state
      blinkTimer = 0; // Reset the blinkTimer
          }

    
    fill(0);

    if (!isBlinking) 
    {
       //eyes
      
      fill(255);
      ellipse(88,411,12,15);
      ellipse(119,411,12,15);
      fill(0);
      ellipse(88,413,6,7);
      ellipse(119,413,6,7);
       
    
      } 
      else {
      
    // Closed eyes (only a line is visible)
    fill(255);
   
    rect(83, 414,14,1);
    rect(110,414,14,1);
    
     
            }

   }
      
//function to move
  void Move()
  {
    
     posX+= speed;
   
   if (posX > width)
       posX = initialPosition;
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
  
  float change = 0.1;



  }
