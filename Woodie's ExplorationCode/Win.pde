  BackButton bb3,bb4;
   PFont f;
  class Win
  
  {
      
 
   
    int numStars = 200; // Number of stars
    Star[] stars; // Array to store star objects
  
  Win()
  {
    createStars();
   bb3 = new BackButton(400,height/2,430,434,426,430);
   bb4 = new BackButton(600,height/2,639,434,0,0);
  }
  
  void Render()
  {
  

   drawNightSky();
   drawFallingStars();

   
   f = loadFont("101AlphaPiktureBet-48.vlw");
   fill(192, 192, 192); // Golden color
   textFont(f,50);
  textSize(60);
  textAlign(CENTER, CENTER);
  text("Congratulations!", width/2, 250);
  
  bb3.Render();
  bb3.mouseHover();
  bb4.mouseHover();
  bb4.RenderExitButton();
  
  

   
  }
  
  
  
  void createStars() {
    stars = new Star[numStars];
    for (int i = 0; i < numStars; i++) {
      stars[i] = new Star();
    }
  }
  
  void drawNightSky() {
   setGradient( 0, 0, width, height,   color(0, 0, 30),color(55,11,46));
  }
  
  void drawFallingStars() {
    for (int i = 0; i < numStars; i++) {
      stars[i].fall();
      stars[i].display();
    }
  }
   void setGradient(int x,int y,int w,int h, color from, color to)
  {
    for(int i=y;i<y+h;i++)
     {
       color c = lerpColor(from,to, map(i,y,y+h,1,0));
       stroke(c);
       line(x,i,x+w,i);
     }
  }
  
  void TotalPoints()
  {
  fill(192, 192, 192);
   textSize(30);
    text("Total Score: " + level1.score,140,50);
  
  }
  
  
  }




  
  
  class Star {
    float x, y;
    float size;
    float speed;
  
    Star() {
      x = random(width);
      y = random(-100, height); // Stars start from above the screen
      size = random(1, 3);
      speed = random(1, 3);
    }
  
    void fall() {
      y += speed;
      
      // Reset star if it goes below the screen
      if (y > height) {
        y = random(-100, 0);
        x = random(width);
        speed = random(1, 3);
      }
    }
  
    void display() {
      fill(255);
      noStroke();
      ellipse(x, y, size, size);
    }
  }
