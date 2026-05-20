class MonsterLevel1
{   //Declaring variables
  float posX = 513;
  float posX2 = 0;
  float xSpeed = 2,x2Speed = 2;
  boolean isBlinking = false, monster1Dead = false, monster2Dead= false;
  int blinkTimer = 0;
  int blinkDuration = 60;
  color monsterColor = color(0);
  float rectWidth = 58;
  float rectHeight = 5;
  float distance1,distance2;
  
    MonsterLevel1()
    {
    
    
    
    }

  void Render()
  {
    
     noFill();
    noStroke();
    rect(posX, 410 - rectHeight / 2, rectWidth, rectHeight);       //invisible rectangle on top of the monster  1's head
    rect(posX2, 620 - rectHeight / 2, rectWidth, rectHeight);       //invisible rectangle on top of the monster  2's head
  //monster
  if(!monster1Dead)
  {
     fill(monsterColor);
     rect(posX,423,58,58,10);
    //square(posX,423,58);
   
   
  
  //eyebrows
  stroke(0);
  fill(255);
  triangle(posX+-3,440,posX+15,430,posX+30,440);
  triangle(posX+26,440,posX+41,430,posX+61,440);
  triangle(posX+14,472,posX+28,454,posX+44,471);
  fill(0);
  triangle(posX+6,439,posX+15,434,posX+24,440);
  triangle(posX+33,440,posX+39,435,posX+51,440);
  triangle(posX+19,474,posX+29,460,posX+40,474);
  
  monsterEyeBlink();
  }
  
  
  if(!monster2Dead)
  {
    //monster2
   fill(monsterColor);
   rect(posX2,634,58,58,10);
  //square(posX2,634,58);
 
 
  
  //eyebrows
   color c = lerpColor(0,255,0.9);
   fill(c);
  triangle(posX2+51,665,posX2+24,666,posX2+39,653);
  triangle(posX2+11,665,posX2+28,666,posX2+2,653);
  triangle(posX2+48,682,posX2+6,683,posX2+25,673);
  }
 

  MonsterDies(); // Monster dies gets called
  RobotDies(); // robot dies gets called

  }

  
    void Monster()
  {
 
 
 //Moving the monster
    posX = posX+ xSpeed;

  
  //Bouncing the monster back
  if(posX > 950)
  { 
    xSpeed = -2;
     
  }
  if(posX < 513)
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
      push();
      fill(255);
      ellipse(posX+15,446,12,15);
      ellipse(posX+41,446,12,15);
      fill(0);
      ellipse(posX+15,446,6,7);
      ellipse(posX+41,446,6,7);
      pop();
    } else {
      
    // Closed eyes (only a line is visible)
    push();
    fill(255);
    strokeWeight(2);
    rect(posX+6, 443,16,4);
    rect(posX+35,443,16,4);
    pop();
    }
 
  }
void Monster2Move()
{
//Moving the monster
    posX2 = posX2+ x2Speed;
      
  //Bouncing the monster back
  if(posX2 > 950)
  { 
    x2Speed = -2;
     
  }
  if(posX2 < 0)
 
    x2Speed = 2 ;
  
  }
  
  
  
  
boolean collisionDetectedMonster1()
{
                                                           // Calculate the distance between the centers of robot and monster
  float distance = dist(r1.pos.x, r1.pos.y-32, posX, 423);

                                                           // Collision occurs 
  if (distance < r1.diameter/2 + 29)                          // 29 is half the width of the monster
  {
    return true;                                           // Collision detected
  }
  return false;                                           // No collision

}

boolean collisionDetectedMonster2()
{
                                                           // Calculate the distance between the centers of robot and monster
  float distance = dist(r1.pos.x, r1.pos.y-32, posX2, 634);

                                                           // Collision occurs 
  if (distance < r1.diameter/2 + 29 )                          // 29 is half the width of the monster
  {
    return true;                                           // Collision detected
  }
  return false;                                           // No collision

}



void MonsterDies()
{
  
  if( collisionDetectedMonster1Head())
  {
  
    monster1Dead = true;
      r1.robotDead =false;
  println("Monster1 Dead");
  }
  
  if( collisionDetectedMonster2Head())
  { 
      monster2Dead = true;
    r1.robotDead =false;
  
  println("Monster2 Dead");
  }
 
 

}


                                                           // Function to handle monster's death
void RobotDies() {
  
  if(collisionDetectedMonster1() || collisionDetectedMonster2())
  {   
         r1.robotDead = true;
         if(Pressed)
         Die.play();
         println("Robot Dead");
         currentPage = gameOver;
         
          
         //  if(!monster2Dead )
         //{
         //println("Robot Dead");
         //currentPage = gameOver;
         //}
         
            
  } 
      
}



boolean collisionDetectedMonster1Head() 
{
  float distance1 = dist(r1.pos.x , r1.pos.y - 32, posX, 407 - rectHeight / 2);
 
  return distance1 < (r1.diameter / 2) + (rectHeight / 2) +35 ;
}

boolean collisionDetectedMonster2Head()
{
  float distance2 = dist(r1.pos.x , r1.pos.y - 32, ml1.posX2, 618 - rectHeight / 2);
  
  return distance2 < (r1.diameter / 2) + (ml1.rectHeight / 2 )+35;
}
   

                              




void resetMonstersl1() {
    posX = 513;
    posX2 = 0;
    xSpeed = 2;
    x2Speed = 2;
    isBlinking = false;
    monster1Dead = false;
    monster2Dead = false;
    blinkTimer = 0;
    
  }
}
    
