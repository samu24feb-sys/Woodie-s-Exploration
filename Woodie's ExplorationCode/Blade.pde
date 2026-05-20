class Blade {
  float armLength = 200; // Length of the pendulum arm
  float angle = radians(45); // Initial angle (45 degrees)
  float angleVel = 0.05; // Angular velocity
  float bobSize = 90;  
  boolean  iscollidingWithbBlade = false;

  Blade(float startX, float startY) {

       float bobX = armLength * sin(angle);
    float bobY = armLength * cos(angle);
    // Adjust the initial angle based on the desired start position
    float angleOffset = atan2(startY - bobY, startX - bobX);
    angle += angleOffset;
  }

  void Render() {
    
    float bobX = armLength * sin(angle);
    float bobY = armLength * cos(angle);
    push();
    // blade cord (line)
    stroke(139, 69, 19);
    strokeWeight(5); // Cord thickness
    fill(139, 69, 19);
    line(810, 394, 810 + bobX, 394 + bobY);
    
    // blade (arc)
    stroke(211, 211, 211, 200);
    fill(169, 169, 169);
    strokeWeight(5);
  
    arc(810 + bobX, 394 + bobY, bobSize, bobSize, 0, PI, CHORD);
    pop();
    
    if (checkCollisionWithBlade())
    {
    print("blade touched");
    r1.robotDead = true;
    if(Pressed)
    Die.play();
    currentPage = gameOver;
    }
    
  }

  void Move() {
    // Gravity force
    float gravity = 0.4;

    // Angular acceleration calculation : acceleration = (-gravity / armLength) * sin(angle)
    float angleAcc = (-gravity / armLength) * sin(angle);

    // Updated angular velocity
    angleVel += angleAcc;

    // Updated angle
    angle += angleVel;
  }
  
  
   boolean checkCollisionWithBlade() {
    float bobX = armLength * sin(angle);
    float bobY = armLength * cos(angle);

    // distance between the centers of the bob and the robot
    float distance = dist(810 + bobX, 394 + bobY, r1.pos.x, r1.pos.y);

    // Check for collision
    if (distance < bobSize / 2 + r1.diameter / 2) {
      // Collision detected
      iscollidingWithbBlade = true;

      return true;
    }

    return false;
  }
}
