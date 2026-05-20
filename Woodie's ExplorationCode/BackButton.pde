class BackButton {
  color buttonColor = color(230, 115, 117); // color for button 
  color newButtonColor = color(95, 219, 17);
  color normalColor = color(230, 115, 117);
  color hovercolor2 = color(55,11,46);
  color normalColor2 = color(0, 0, 30);
  color buttonColor2 =  color(0, 0, 30);
  boolean isHovered; // boolean for hover function
  PVector pos;

  int xPosExit;
  int musicX;
  int buttonWidth = 80;
  int buttonHeight = 62;
  float textX,textY,rectX,rectY;
  boolean wasClicked = false; // Track if the button was clicked in the previous frame

  BackButton(float x, float y,float X,float Y,float X1,float Y1) {
    pos = new PVector(x, y);
    textX = X;
    textY = Y;
    rectX = X1;
    rectY = Y1;
  }

  void Render()                  // creating back button
  {         
    stroke(230);
    fill(buttonColor);
    if(currentPage == win)
    fill(buttonColor2);
    rect(pos.x, pos.y, buttonWidth, buttonHeight, 30);
    fill(255);
    b1.font4 = loadFont("Arial-Black-48.vlw");
    textFont(b1.font4, 40);
    textSize(39);
    text("<", textX, textY);
    noStroke();
    rect(rectX, rectY, 34, 9);
  }
  
     void RenderExitButton()                  // creating exit button
  {         
    stroke(230);
    fill(buttonColor);
    if(currentPage == win)
    fill(buttonColor2);
    rect(pos.x, pos.y, buttonWidth, buttonHeight, 30);
    fill(255);
    b1.font4 = loadFont("Arial-Black-48.vlw");
    textFont(b1.font4, 40);
    textSize(42);
    text("X", 641,433);
    //text("Exit", textX,textY);
    noStroke();

  }

  void mouseHover() {       //checking mouse hovering
    buttonColor = normalColor;
    buttonColor2 = normalColor2;

    if (mouseX > pos.x && mouseX < pos.x + buttonWidth && mouseY > pos.y && mouseY < pos.y + buttonHeight) {
      buttonColor = newButtonColor;
       buttonColor2 = hovercolor2;
      isHovered = true;
    } else {
      isHovered = false;
    }
  }

  boolean ButtonClick() {       // checking for button clcik
    boolean clickEvent = false;

    if (mousePressed && isHovered ) {
      clickEvent = true;
    }


    return clickEvent;
  }
  
  void Restart()
  {
     stroke(230);
    fill(buttonColor);
    rect(490, 501, 115, buttonHeight, 30);
    fill(255);
    b1.font4 = loadFont("Arial-Black-48.vlw");
    textFont(b1.font4, 40);
    textSize(25);
    text("Restart",548,533);
    
    
    
     //Reset();
  
  }
  
  void Reset()                   //Reset everything with this function
  {
        r1.resetRobot();
        k1.resetKey();
        for(int i = 0 ; i< rewards.length; i++)
        {
           rewards[i].resetRewards();
        }
         ml1.resetMonstersl1();
         level1.score = 0;
         level1Complete = false;
         level2.k2.resetKey();
         for(int i = 0 ; i< rewards1.length; i++)
        {
           rewards1[i].resetRewards();
        }
         level2.sm1.resetSnowMonster();
         level1Restart = false;
         level2Restart = false;
  }
  
}
