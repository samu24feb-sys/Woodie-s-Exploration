class Cloud
  {                                                     //  Declaring variables                                                   
    float posX = 0;
     float cloudSpeed = 1;
        color c;                                                 
                                                  //constructor initialised with position X for cloud
    Cloud(float x,color color1)
    {
    
    posX = x;
     c= color1;
    }
  
  
  void Render()
  {
                                                           //Cloud
      //fill(191,238,255);
      fill(c); 
      noStroke();
      circle(116+posX,91,94);
      circle(63+posX,113,89);
      circle(29+posX,145,85);
      circle(91+posX,153,87);
      circle(161+posX,143,108);
    
  
  }
  
  
  void Move()
  {
    float targetX = posX + cloudSpeed;
  
         //Fofr smooth movemenr of cloud
         posX = lerp(posX,targetX, 0.9);
   
       // Reset the clouds when they go off the screen
      if (posX > width) {
        posX = -200;  // Reset the clouds to the left side
  
  }
  }
  
  }
