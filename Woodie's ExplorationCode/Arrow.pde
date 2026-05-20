class Arrow      
{
   float posX;           // Declaring variables  
  float posY;
  float width1;
  float height1;
  float triangleSize;
  float direction = 0.5;
  float speedUp  ;
  boolean iscollidingwithArrow = false;
   float rectWidth = 20;
  float rectHeight = 50;
  float rectX,rectY;

//constructor
Arrow(float x, float y, float w, float h, float t, float s)
{
  posX = x;
  posY = y;
   width1 = w;
   height1 = h;
   triangleSize = t;
    direction = 1;
    speedUp = s;

}

void Render()     //creating arrows
{
  
  
    float rectX = posX + width1 / 2 - rectWidth / 2;
    float rectY = posY - height1 - rectHeight;
  
    noFill();                             // Red color for the rectangle
    rect(rectX, rectY, rectWidth, rectHeight);
    
    
    
    
    
 fill(97,52,10);
    rect(posX, posY - height1, width1, height1);

    float triangleX1 = posX;
    float triangleY1 = posY - height1;

    float triangleX2 =posX + width1;
    float triangleY2 = posY - height1;

    float triangleX3 = posX + width1 / 2;
    float triangleY3 = posY - height1 - triangleSize * 1.5;

    fill(44,25,7);
    triangle(triangleX1, triangleY1, triangleX2, triangleY2, triangleX3, triangleY3);
    checkCollision();
    
    if (iscollidingwithArrow)
    {
    print("Robot dead");
    r1.robotDead = true;
    if(Pressed)
    Die.play();
    currentPage = gameOver;
    }
    
  }
  
   void move() {          //motion given to arrow
   
   
 // Move the rectangle along with the arrow
    float rectX = posX + width1 / 2 - rectWidth / 2;
    float rectY = posY - height1 - rectHeight;
    
    
    height1 += direction * speedUp;

    if (height1 >= 300 || height1 <= 0) {
      direction *= -1;

      if (direction == 1) {
        speedUp = 1;
 
      } 
 
      }
    }
    
    
  void checkCollision() {
  float arrowCenterX = posX + width1 / 2;
    float arrowCenterY = posY - height1 / 2;

    float rectCenterX = posX + width1 / 2;
    float rectCenterY = posY - height1 - rectHeight / 2;

    float arrowRadius = (width1 + height1) / 4; // Average of width and height divided by 2
    float rectRadius = (rectWidth + rectHeight) / 4; // Average of width and height divided by 2

    // distance between the centers of the arrow and the robot
    float distance = dist(arrowCenterX, arrowCenterY, r1.pos.x, r1.pos.y);

    // Check for collision
    if (distance < arrowRadius + r1.diameter / 2) {
      println("yes"+distance);
      // Collision detected
      //r1.iscolliding = true;

    }

    // distance between the centers of the rectangle and the robot
    distance = dist(rectCenterX, rectCenterY, r1.pos.x, r1.pos.y);

    // Check for collision
    if (distance < rectRadius + r1.diameter / 2) {
      println("no"+ distance);
      // Collision detected
     iscollidingwithArrow = true;
   }
     else
     iscollidingwithArrow = false;


    }
  
  }


    
    
