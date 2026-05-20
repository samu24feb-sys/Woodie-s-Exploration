  class SnowMonster
  {
     float posX = 84;                    //Declaring and initialising variables
    float xSpeed = 2,x2Speed = 2;
    boolean isBlinking = false;
    int blinkTimer = 0;
    int blinkDuration = 60;
    float rectTopX = posX;
    float rectTopY = 65;
    float rectWidth = 75;
    float rectHeight = 10;
    boolean SnowMonsterDead = false;
   SnowMonster()
  {
  
  
  }
  
  void Render()
  {
    if (!SnowMonsterDead)
    {
    push();
   stroke(211, 211, 211, 200);
  fill(46,144,169);
  rect(posX,77,75,63);
   noStroke();
  color c = lerpColor(0,255,0.9);
   fill(c);
  triangle(posX+56,124,posX+12,118,posX+37,113);
  pop();
  
    monsterEyeBlink();
    }
  
  
     SnowMonsterMove();

   noFill();
   rect(posX,rectTopY,rectWidth,rectHeight);
     
   if (collisionDetectedSnowMonster()) {
      r1.robotDead = true;
    println("Collision detected!");
  }
  
      if(collisionDetectedSnowMonster1Head())
    {
      print ("SnowMonster Dead");
      SnowMonsterDead = true;
    }
  
  }
     void SnowMonsterMove()
    {
   
   
   //Moving the monster
      posX = posX+ xSpeed;
  
    
    //Bouncing the monster back
    if(posX > 400)
    { 
      xSpeed = -2;
       
    }
    if(posX < 5)
      xSpeed = 2 ;
      
    
   
    }
   
    
    void monsterEyeBlink()
   {
    
       blinkTimer++;
  
      // Check if it's time to blink
      if (blinkTimer >= blinkDuration) {
        isBlinking = !isBlinking; // Reversing the blinking state
        blinkTimer = 0; // Reset the blinkTimer
      }
  
      
      fill(0);
  
      if (!isBlinking) {
         //eyes
        
       noStroke();
       color c = lerpColor(0,255,0.9);
       fill(c);
       triangle(posX+14,88,posX+10,106,posX+35,105);
       triangle(posX+61,88,posX+62,113,posX+41,100);
       
        fill(0);
        ellipse(posX+20,101,6,8);
        ellipse(posX+47,101,6,8);
      } else {
        
      // Closed eyes (only a line is visible)
      push();
      fill(255);
      strokeWeight(2);
      rect(posX+18, 101,18,4);
      rect(posX+45,101,18,4);
      pop();
      
      }
   
    }
    
boolean collisionDetectedSnowMonster( ) {
    float distance = dist(posX, 77, r1.pos.x, r1.pos.y-32);

    
    return distance < r1.diameter/2 + 37.5; 
  }
  
  boolean collisionDetectedSnowMonster1Head() 
{
  float distance1 = dist(r1.pos.x , r1.pos.y - 32, posX, 65 - rectHeight / 2);
 
  return distance1 < r1.diameter / 2 + rectHeight / 2 ;
}

 void resetSnowMonster() {
    posX = 84;
    xSpeed = 2;
    isBlinking = false;
    blinkTimer = 0;
    blinkDuration = 60;
    rectTopX = posX;
    SnowMonsterDead = false;
  }



  
  

  
  }
