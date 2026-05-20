class Key {
  color startColor = color(254,248,228);
  color endColor = color(249,226,154);
  float posX,posY;
  float lerping = 0.5;
  boolean keyCollected = false;
  
  int score = 0;
  int points = 10; // Points associated with each coin
  Key(float x,float y) 
  {
    posX = x;
    posY = y;
  }

  void Render() 
  {
       if (!keyCollected)
    {
    push();
    noStroke();
    translate(posX,posY);
    rotate(radians(-22));
    fill(255,216,1);
    ellipse(19,-4,25,24);
    fill(lerpColor(color(255,228,95),color(255,247,204),sin(frameCount * lerping)));
    ellipse(23,-5,23,18);
    rotate(radians(-8));
    rect(26,-8,48,7);
    rotate(radians(-3));
    rect(67,-4,6,29);
    rotate(radians(1));
    rect(51,-4,8,20);
    pop();
    }

    
    if ( !keyCollected && keyCollisionDetected())
    {
          keyCollected = true;
          coinSound.play();
         println("key collected!");
         level1Complete = true;
    }
  }

  
 boolean keyCollisionDetected() {
    float distance = dist(posX, posY, r1.pos.x, r1.pos.y - 32);
    return distance < (53 / 2) + (65 / 2); //   radii of the key and robot
  }
  
 void resetKey() {
    posX = 879;  // Reset the x-coordinate to the initial value
    posY = 189;  // Reset the y-coordinate to the initial value
    keyCollected = false;  // Reset the collected state
  }
  

  
  
  
}
