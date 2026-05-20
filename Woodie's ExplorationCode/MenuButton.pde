boolean Pressed = false;
class MenuButton
{
         
  color  buttonColor= color(230,115,117);       //color for button 
  color newButtonColor = color (95,219,17);
  color normalColor = color(230,115,117);
  boolean isHovered;                              //boolean for hover function
  int posX;
  int posY;
  int xPosExit;
  int musicX;
  int buttonWidth;
  int buttonHeight;
  PFont font2;
  MenuButton(int x,int y,int w,int h)
  {
     posX = x;
     posY = y;
     buttonWidth = w;
     buttonHeight = h;
     //musicX = mX;
     //xPosExit = xE;
  }
  
  void Render()
  {
    fill(buttonColor);
    stroke(230);
    strokeWeight(2);
    rect(posX,posY,buttonWidth,buttonHeight,30);     // button
    
    
    Hover() ;                                          // calling hover function
    ShapesInsideButton();
  }
  
  void ShapesInsideButton()
  {
    noStroke();
    fill(255);
    triangle(365,343,365,372,393,357);
    //triangle(posX+24,posY+17,posX+24,posY+46,posX+52,posY+31);  // inside triangle
    
     fill(255);  
     noStroke();
    rect(503,348,9,16,10);                          //Sound Shape
    triangle(502,356,521,340,521,373);
    
    if (Pressed)
    { 
      push();
    translate(542,348);
    rotate(radians(54));
    rect(-11,3,4,10,10);   
    rotate(radians(35));
    rect(6,5,4,10,10);  
    rotate(radians(16));
    rect(21,-1,4,10,10);    
    pop();
        
      }
   else
    {  
      textSize(20);
       text("X", 531,357);  
      
    }
    
     
    stroke(0);
    fill(255);
    textSize(30);
    font2 = loadFont("Arial-Black-48.vlw");
    textFont(font2, 40);
    text('X',612+37,326+31);                   // X inside the exit button
    
    push();                                    // Help Button
    noStroke();               
    fill(buttonColor);
    circle(931,726,34);
    textSize(44);   
    fill(255);        
    strokeWeight(8);                        
    text("?", 931, 727);                     // Draw a question mark
    pop();
  
  }
  
  void Hover()                                  //Checks if mouse is hovering over the buttons
  {
       buttonColor = normalColor;
       
    if (mouseX>posX && mouseX< posX+buttonWidth && mouseY>posY && mouseY< posY+buttonHeight)
        {
        
          buttonColor = newButtonColor;      
          isHovered = true;
          
    
        }
         else
          isHovered = false;
  }
  
                                       //function to return boolean value if buttons are clicked
    boolean ButtonClick()
    {
      if (mousePressed && isHovered)
      {
        return true;  //Return true if the mouse is pressed and is within the button
      } 
        else 
        {
          return false; // Return false in any other case
        }
    
  }
}
