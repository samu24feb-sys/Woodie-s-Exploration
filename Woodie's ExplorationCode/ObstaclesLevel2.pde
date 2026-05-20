class ObstaclesLevel2
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
  ObstaclesLevel2() 
  {
       
     p = new Platform[10];                              //obstacle Platform locations are given    
  

     
       p[0] = new Platform(0, 141,474, color (117, 61, 2)); //brown
       p[1] = new Platform(253, 360,141, color (117, 61, 2));   
       p[2] = new Platform(496, 480,118, color (117, 61, 2)); 
       p[3] = new Platform(734, 370,101, color (117, 61, 2));  
       p[4] = new Platform(820, 107,172,color (117, 61, 2)); 
       p[5] = new Platform(570, 244,101,color (117, 61, 2)); 
       p[6] = new Platform(641, 751,364,color (117, 61, 2) ); 
       p[7] = new Platform(-5, 643,218,color (230) ); //white
       p[8] = new Platform(380, 643,218,color (230) ); 
        p[9] = new Platform(0, 780,1000,color (230) ); 
  
 }
  
   void Update() {                                     // Fucntion to display obstacle platform 
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
  
