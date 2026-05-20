class Obstacles
{
                           //Declaring and Initializing variables
  float posX;
  Platform[] p;
  Platform p1;
  float diameter = 70;
 // MyCharacter mc1;
  int blinkTimer = 0;
  int blinkDuration = 60;
  boolean isBlinking = false;
  float posX2 = 0;
  float xSpeed = 1.5,x2Speed = 2;

 color monsterColor = color(0);
                                                 //Constructor
  Obstacles() 
  {
       
     p = new Platform[8];                              //obstacle Platform locations are given    
  
      
       p[0] = new Platform(388, 360,101, color (117, 61, 2)); // brown
       p[1] = new Platform(513, 482,494, color (153,214,12));   // Green
       p[2] = new Platform(-2,695,1096, color (117, 61, 2)); // brown
       p[3] = new Platform(-2,482,284, color (153,214,12));    // Green
       p[4] = new Platform(624,317,164,color (117, 61, 2)); // brown
       p[5] = new Platform(850,202,123,color (117, 61, 2)); //brown
       p[6] = new Platform(141,237,123,color (117, 61, 2) ); 
       p[7] = new Platform(290,550,123,color (117, 61, 2) ); 
       
  
 }
  
   void update() {                                     // Fucntion to display obstacle platform 
    r1.iscolliding = false;
   for (int i = 0; i < p.length; i++) {
     
     p[i].show();

  if (p[i].collision(r1.pos)) {                       //check for collsion between robot and platform
    r1.iscolliding = true;
    r1.pos.y = p[i].pos.y;                            // Assign platform y value to robot
  }
}

  }
}
  
