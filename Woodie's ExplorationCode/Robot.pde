
class Robot {
  // Declaring and Initializing variables
  PVector pos;
  boolean iscolliding = false;
  PVector vel;
  float moving = 0;
  float walk = 5;
  boolean spacePressed = false;
  
  float posX , initialX  ;
  float posY,initialY;
  //float speed = 5;
  boolean isBlinking = false,robotDead= false;
  int blinkTimer = 0;
  int blinkDuration = 45;
  boolean showEyes = false;
  boolean noEyes = false;  
  float distance1,distance2;
  float rotationAngle = 0; // Initial rotation angle
  float diameter = 65;

  float rotationChange = 0.03;
  
  
  Robot(float x,float y) {
    pos = new PVector(61,300);
     vel = new PVector();
     initialX = x;
     initialY = 400;
     
    
  }

  void Render() {
    noStroke();
    push();
    stroke(0);
    translate(pos.x, pos.y-32);
     rotate(rotationAngle);
    fill(230,115,117);
    circle(3, 0, diameter); // Robot
    arc(0 + 3, 0 + 10, 17, 8, radians(0), radians(180)); // Mouth
    if (showEyes) {
      fill(255);
      ellipse(0 - 9, 2 - 9, 12, 15);
      ellipse(0 + 13, 2 - 9, 12, 15);
      fill(0);
      ellipse(0 - 9, 2 - 7, 6, 7);
      ellipse(0 + 13, 2 - 7, 6, 7);
    } else if (noEyes) {
      fill(255);
      strokeWeight(2);
      rect(0 - 18, 0 - 6, 14, 1);
      strokeWeight(2.5);
      rect(0 + 8, 0 - 6, 14, 1);
    }
    pop();
    
         //Adjust the robots position to stay within screen boundaries
    pos.x = constrain(pos.x, 20, width-20);
    pos.y = constrain(pos.y, 0, height);


    robotEyeBlink();
    RobotMovement();
  }

  void robotEyeBlink() {
    blinkTimer++;

    if (blinkTimer >= blinkDuration) {
      isBlinking = !isBlinking;
      showEyes = false;
      noEyes = false;
      blinkTimer = 0;
    }

    fill(0);

    if (!isBlinking) {
      showEyes = true;
    } else {
      noEyes = true;
    }
  }

void RobotMovement() {
  //collision(); // calling collision
 
  
    if (!iscolliding) 
    {
      vel.y += 1;
    }
    pos.add(vel);
    pos.x += moving;
    vel.mult(0.9);

     rotationAngle += moving * rotationChange;
  
 
}

  void WhenKeyPressed(char k) {
    switch (k) {
      
      case 'a': 
       moving = -walk;

        break;
      case 'd':
         moving = walk;

        break;
      case ' ':        // when space is pressed
    spacePressed = true;
       if(Pressed)
       jump.play();
      if (iscolliding) {
        vel.y -= 30;
      }
       break;
    }
       

    }
  

  void WhenKeyReleased(char k) {
    switch (k) {

      case 'a':
        moving = 0;
        break;
      case 'd':
         moving = 0;
        break;
      case ' ':
       spacePressed = false;
        break;
    }
  }




void resetRobot() {
     moving = 0;
     walk = 5;
    pos.x = initialX;  // Reset the x-coordinate to the initial value
    pos.y = initialY;  // Reset the y-coordinate to the initial value
    isBlinking = false;  // Reset blinking state
    blinkTimer = 0;      // Reset the blink timer
    showEyes = false;    // Reset eye display
    noEyes = false;      // Reset no eyes display
    rotationAngle = 0;   // Reset rotation angle
    robotDead = false;   // Reset robot is dead or not as well
    iscolliding = false;  //reset movement
  }








}






       
