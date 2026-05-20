import processing.sound.*;
boolean recording = false;
                                                     // Intialising final variables
  
  final int menuPage = 0;
  final int gameLevel1 = 1;
  final int helpPage = 2;
  final int gameLevel2 = 3;
  final int gameOver = 4;
  final int win = 5;
  SoundFile coinSound;
  SoundFile menu,jump,Die;
  
  boolean level1Complete = false;
  int currentPage = menuPage;
  
   ALevel1 level1;     //Declaring object
   ALevel2 level2;
   Menu m1;
   BackButton bb1,bb2;
   Win w1;
   GameOver go1;

  

   Cloud c1,c2,c3,c4;

   Instructions i1;


  
   
  void setup()
  {
    size(1000,800);
                                                         //Initializing object
      level1 = new ALevel1();
         level2 = new ALevel2();

     
       m1= new Menu(); 
      c1 = new Cloud(100,color(191,238,255));
      c2 = new Cloud(600,color(191,238,255));
      c3 = new Cloud(100,color(220, 220, 255));
      c4 = new Cloud(600,color(220, 220, 255));      
      i1 = new Instructions();  
      w1 = new Win();
      go1 = new GameOver();
       coinSound = new SoundFile(this, "Sound/star.wav");
       menu = new SoundFile(this, "Sound/Menu.mp3");
       jump = new SoundFile(this,"Sound/jump.wav");
       Die = new SoundFile(this,"Sound/Die.wav");
  }

    void draw()
    {
         
       background(0);     
  
                                             //calling object as per page     
     if (currentPage == menuPage)                             // menupage
      {
         m1.Render();
         m1.Move();
    
      }
      
      else if (currentPage == gameLevel1)                        //Game Level 1 page                
      {
       
          level1.Render();                                      //calling Level1

      }
      
      else if (currentPage == helpPage)
      {
      
        i1.Render();                                            //calling Instruction page
        i1.InfoPage();
       
      } 
      
      else if (currentPage == gameLevel2)
      {        
        level2.Render();                                      //calling Level2

      }
      else if (currentPage == gameOver)                      // calling gameover
      {
           go1.Render();
           
      }
      
      else if (currentPage == win)
      {
          w1.Render();
        
      }
      
      if(recording )
      {
        saveFrame("output/game_####.png");
        fill(250,0,0);
        
    }else
      fill(0);
      ellipse(width/2,height-30,20,20);  
      
  }
  
  
 void mousePressed() {
  if (currentPage == menuPage) {
    // Check if the mouse is over the button and execute the action
           
             if (m1.buttons[0].ButtonClick()) 
               {
                currentPage = gameLevel1;
                  }
                 
               else  if (m1.buttons[1].ButtonClick())
                  {    Pressed = !Pressed;  
                       if(Pressed)
                       {
                                           
                        menu.play();
                         
                       }
                        else 
                        {
                        menu.stop();
                        }
                  } 
                 else if (m1.buttons[2].ButtonClick())
                   {
                    exit();
                 }
                  else if  (m1.buttons[3].ButtonClick())
                     {
                    currentPage = helpPage;
                }  
                                
  } 
  
  else if (currentPage == gameLevel1)
  {
       if (bb6.ButtonClick()) {
                currentPage = menuPage;
                bb6.Reset();
                
                   }
  
  
  }
  else if (currentPage == helpPage) {
    // Check if the mouse is over the back button and execute the action
                if (bb1.ButtonClick()) {
                  currentPage = menuPage;
                  
                  bb1.Reset();
                        }  
          }
          
   else if (currentPage == gameLevel2)
    {
              if (bb2.ButtonClick()) {
                currentPage = menuPage;
                bb2.Reset();
                
                   }
  }
  else if (currentPage == win){
   if (bb3.ButtonClick()) {
                  currentPage = menuPage;
                  
                  bb3.Reset();
                  r1.resetRobot();
                        }  
                        
     if (bb4.ButtonClick()) {
                 exit();
                  
                  bb4.Reset();
                        }  
 
 }
  else if (currentPage == gameOver){
   
     if (bb3.ButtonClick()) {
                   bb3.Reset();
                  currentPage = menuPage;
                                          
                        } 
                        
                        
     if (bb4.ButtonClick()) {
                 exit();
                  
                  bb4.Reset();
                        }  
       if (bb7.ButtonClick()) {
            
                 //level1Restart = !level1Restart;
                 //level2Restart = !level2Restart;
                  if (level1Restart)
                  {
                  currentPage = gameLevel1;
                   level1Restart = true;
                  }
                          
                 if (level2Restart)
                 {
                  currentPage = gameLevel2;
                   level2Restart = true;
                 }
                  
                   bb7.Reset();
                        } 
                        
  }
 
 
 
 
 
 }
 
  
  
                                                       //Fucntion for key pressed
    void keyPressed() {
      if (currentPage == gameLevel1) 
      {
        r1.WhenKeyPressed(key);
        
      }
      else if (currentPage == gameLevel2)
      {
      r1.WhenKeyPressed(key);
      
      }
      
      
      if (key == 'r' || key == 'R')
      {
      recording = !recording;
      }
      
      }
    
    void keyReleased() {
      if (currentPage == gameLevel1) 
      {
        r1.WhenKeyReleased(key);
      }
        else if (currentPage == gameLevel2)
      {
       r1.WhenKeyReleased(key);
      
      }
      }



 
