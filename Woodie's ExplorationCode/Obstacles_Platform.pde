class Platform 
{                         //Declaring and Initializing variables
  PVector pos;
  float platformWidth;
  float platformHeight = 25;
  color color1;
                           //Constructor
  Platform(float x, float y, float width,color c) {
    pos = new PVector(x, y);         //Vector is declared
    platformWidth = width;
     color1 = c;
  }

                             //show function to create obstacle platform
  void show() {
    noStroke();  
    fill(color1);
    rect(pos.x, pos.y, platformWidth, platformHeight);
  }



                            //Collison detection function 
  boolean collision(PVector p) {
    if (p.x  > pos.x && p.y > pos.y && p.x < pos.x + platformWidth && p.y < pos.y + platformHeight) {
      return true;
    }
    return false;
  }
}
