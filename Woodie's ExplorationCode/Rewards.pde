PFont f9;


class Rewards {
  color startColor = color(254,248,228);
  color endColor = color(249,226,154);
  float posX,posY;
  float lerping = 0.5;
  boolean rewardCollected = false;
  float initialX;
  float initialY;
  int score = 0;
  int points = 100; // Points associated with each coin
  Rewards(float x,float y) 
  {
    posX = x;
    posY = y;
    initialX = x;
    initialY = y;
  }

  void Render() 
  {

    if (!rewardCollected)
    {
      push();
    stroke(249, 217, 121);      
    strokeWeight(4);
    fill(228, 178, 26);
    ellipse(402+posX,433+posY, 42, 53);//1      //coin
    noStroke();
    fill(228, 189, 72);
    ellipse(403+posX,435+posY, 24, 42);//2
    fill(228,187,64);
    ellipse(403+posX,433+posY, 14, 15);//3
    noStroke();
    fill(lerpColor(startColor, endColor, sin(frameCount * lerping)));
    f9 = loadFont("Stencil-48.vlw");
    textFont(f9, 39);
    text("$", 402+posX,434+posY);
    pop();
    }
    
    
      // Check for collision with Robot
    if ( !rewardCollected && collisionDetectedCoin())
    {
      // Handle collision 
        rewardCollected = true;
        if(Pressed){
        coinSound.play();
    }
          level1.score += points;
         println("Reward collected! Points: " + points);
        }
    
    
  }

 
  
  
  boolean collisionDetectedCoin() {
    // distance between the centers of Reward and Robot
    float distance = dist(402 + posX, 433 + posY, r1.pos.x, r1.pos.y - 32);
    
         
    //  distance is less than the sum of their radii
    
    return distance < (53 / 2) + (65 / 2); // 53 is the diameter of the Reward circle(Assumption)
  }
  
  void resetRewards()
  {
     posX = initialX;
     posY = initialY;
     rewardCollected = false;
  
  
  }
  
  
  
  
  
}
