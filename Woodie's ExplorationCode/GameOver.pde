 BackButton bb7;
  class GameOver
  {
  
        GameOver()
        {
         
        bb7 = new BackButton(500,500,426,430,0,0);
        
        }
        
  
      void Render()
      {
        
           if (level1Restart)
        {
              b1.Render();                        
              b1.Move();        
              b1.drawGrass();
            
        }
        
           if (level2Restart)
             {
                level2.level2Bg.Render();
             }
             
             push();
             f = loadFont("PipeDream-48.vlw");
             fill(117, 61, 2); // Golden color
             textFont(f,50);
             textSize(80);
             textAlign(CENTER, CENTER);
             text("GAME OVER!", 500, 300);
             pop();
             
               bb3.Render();
               bb3.mouseHover();
               bb4.mouseHover();
               bb4.RenderExitButton();
              
                bb7.Restart();
                bb7.mouseHover();
        
     
        
        
       
      
      }
  
  
  
  }
