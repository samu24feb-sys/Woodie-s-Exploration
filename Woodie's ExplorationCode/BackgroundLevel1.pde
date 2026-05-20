BackButton bb6;

class BackgroundLevel1
{ // Declaring variables
    float angle = 0;
     PFont font4;
    float grassPosition = 0; 
    int[] grassX = new int[width/3]; // Array to store grass blade positions
     color  buttonColor= color(230,115,117);       //color for button 
  
    color hoverColor = color (95,219,17);
    color normalColor = color (230,115,117);
    color branchColor1 = color(210, 125, 45);
    color branchColor2 = color(111, 78, 55);
    int[] ellipse1X = {105, 55, 30, 200, 281, 391, 476, 592, 739, 952, 713, 143, 239, 350, 498, 537, 636, 797, 891, 919};        //Array for the ground elllipses
    int[] ellipse1Y = {581, 645, 593, 569, 603, 643, 597, 674, 577, 572, 661, 638, 653, 577, 675, 571, 578, 629, 604, 673};
    int[] ellipse1Width = {30, 40, 30, 30, 30, 30, 30, 30, 30, 30, 30, 40, 40, 40, 40, 40, 40, 40, 40, 40};
    int[] ellipseHeight = {10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10};
    int[] ellipse2X = {79, 22, 237, 296, 418, 502, 600, 700, 952, 842, 150, 250, 350, 450, 550, 650, 750, 850, 750};
    int[] ellipse2Y = {733, 755, 726, 754, 750, 729, 737, 728, 750, 726, 770, 781, 776, 783, 761, 776, 714, 780, 769};
    int[] ellipse2Width = {30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 40, 40, 40, 40, 40, 40, 40, 40, 40};
    int totalEllipses1 = ellipse1X.length;
    int totalEllipses2 = ellipse2X.length;
    int[] arcX = {0, 120, 240, 360, 480, 600, 720, 840, 960, 1108};
    int arcY = 485;
    int[] arcRadius = {110, 100, 60};
    int totalArcs = arcX.length;
    
    int leafVal = 120;
    int groundArcX = 60;
    
    //Ground variables
    ///
   int lowestGroundY = 605;
   int middleGroundY =487;
    int upperGroundY= 469;
      
  BackgroundLevel1()
  {
    bb6 = new BackButton(900,50,928,79,928,73);
    // Initialize grass blade positions
  for (int i = 0; i < grassX.length; i++) 
  {
    grassX[i] = i * 3;
  }
}
  
  void Render()
  {
    
    background(115,217,255);
    noStroke();
                                                       //cloud shade lines
    fill(196,239,255);
    ellipse(0,339,3000,110);
    ellipse(697,337,724,178);

    fill(139,224,253);
    beginShape();
    curveVertex(136, 308);
    curveVertex(-270, 372);
    curveVertex(63, 261);
    curveVertex(255, 220);
    curveVertex(320, 258);
    curveVertex(403, 245);
    curveVertex(691, 210);
    curveVertex(895, 216);
    curveVertex(1042, 268);
    curveVertex(2231, 327);
    curveVertex(884, 289);
    curveVertex(716, 256);
    curveVertex(254, 319);
    curveVertex(587, -64);
    endShape(CLOSE);
    
                                                     //sun
    noStroke();
    
    fill(144,226,250,105);
    ellipse(350,150,274,292);
    fill(164,231,237,96);
    circle(350,150,125+125);
    fill(178,235,229,85);
    circle(350,150,125+56);
    fill(255,252,165);
    circle(350,150,125+30);
    fill(254,255,179);
    circle(350,151,134);
    fill(254,243,149,70);
    circle(350,150,125-6);
    fill(254,234,141,60);
    circle(350,150,125-32);
    

      c1.Render();              //Clouds 
        c1.Move();
        c2.Render();
        c2.Move();
 
   
    
     

                                                      //mountain light  green
    stroke(180,240,121);
    fill(148,215,102);
    beginShape();
    vertex(168, 460);        // Start from the left corner
    quadraticVertex(385, 333, 904, 387); // Quadratic curve to create a curved line
    vertex(1527,403);       // Continue to the lower right corner
    vertex(1122,499);         // End at the lower left corner
    endShape(CLOSE);  
    
    
    //mountain dark green
    stroke(80,165,20);
    fill(80,165,20);
    beginShape();
    vertex(-506, 484);        // Start from the left corner
    quadraticVertex(193, 355, 595, 431); // Quadratic curve to create a curved line
    vertex(640,438);       // Continue to the lower right corner
    vertex(1122,500);         // End at the lower left corner
    endShape(CLOSE); 
    
    
                                                         //windmill
                                                          //  windmill base
    fill(205,201,176); 
    stroke(205,201,176);
    rect(699, 244, 10, 255);
    
                                                         // Windmill blades      
    push();
    stroke(60,45,27);
    translate(705,259);
    rotate(angle);
    drawBlade();
    rotate(radians(90));
    drawBlade();
    rotate(radians(90));
    drawBlade();
    rotate(radians(90));
    drawBlade();
    pop();
    
     
                                                        //ground
   noStroke();
   fill(117, 61, 2);
   rect(0,605,1000,199);     
   rect(0,lowestGroundY,1000,199);
   fill(97,52,10);
   rect(0,487,1000,211);
   rect(0,middleGroundY,1000,211);
   
   fill(160,184,46);
   rect(0,469,1000,26);
    rect(0,upperGroundY,1000,26);
  
    
                                                         //ground grass 
    
   fill(93,48,15);
   arc(0, 485, 110, 110, 0, PI);
   arc(120, 485, 110, 110, 0, PI);
   arc(240, 485, 110, 110, 0, PI);
   arc(360, 485, 110, 110, 0, PI);
   arc(480, 485, 110, 110, 0, PI);
   arc(600, 485, 110, 110, 0, PI);
   arc(720, 485, 110, 110, 0, PI);
   arc(840, 485, 110, 110, 0, PI);
   arc(960, 485, 110, 110, 0, PI);
   arc(1108,485,110, 110, 0, PI);
     
   fill(153,214,12);
   arc(0, 485, 100, 100, 0, PI);
   arc(120,485, 100, 100, 0, PI);
   arc(240, 485, 100, 100, 0, PI);
   arc(360, 485, 100, 100, 0, PI);
   arc(480, 485, 100, 100, 0, PI);
   arc(600,485, 100, 100, 0, PI);
   arc(720, 485, 100, 100, 0, PI);
   arc(840, 485, 100, 100, 0, PI);
   arc(960, 485, 100, 100, 0, PI);
   arc(1108,485, 100, 100, 0, PI);
   
      arc(groundArcX, 485, 60, 60, 0, PI);
   arc(groundArcX+120, 485, 60, 60, 0, PI);
   arc(groundArcX+240, 485, 60, 60, 0, PI);
   arc(groundArcX+360, 485, 60, 60, 0, PI);
   arc(groundArcX+480, 485, 60, 60, 0, PI);
   arc(groundArcX+600, 485, 60, 60, 0, PI);
   arc(groundArcX+720, 485, 60, 60, 0, PI);
   arc(groundArcX+840, 485, 60, 60, 0, PI);
   arc(groundArcX+1060, 485, 60, 60, 0, PI);

   
  
   
                                                        //stones
   fill(128, 70, 27);
    for (int i = 0; i < totalEllipses1; i++)
    {
    ellipse(ellipse1X[i], ellipse1Y[i], ellipse1Width[i], ellipseHeight[i]);
    }
   
    fill(128, 70, 27);
     for (int i = 0; i < totalEllipses2; i++) 
     {
    ellipse(ellipse2X[i], ellipse2Y[i], ellipse2Width[i], ellipseHeight[i]);
     }
    
                                                        //Hole
   fill(97,52,10);
   rect(281,481,232,115);
   
      bb6.Render();
      bb6.mouseHover();   
  
  TotalScoreDisplay();
  }
  
  
                                                       //Function to draw grass
  void drawGrass()
{
   
  stroke(119,89,53); 
  strokeWeight(2);     

  for (int i = 0; i < grassX.length; i+=2) {
    int x = grassX[i];
     float grassHeight = float(i);

    beginShape();
    vertex(x, height - 320); 
    curveVertex(x, height - 320 - grassHeight);
    curveVertex(x , height -320 - grassHeight - 10);
    curveVertex(x , height - 320 - grassHeight - 20);
    vertex(x , height - 320 - grassHeight); // End at the tip of  grass
    endShape();
  }
}

                                                     //Windmill blades
void drawBlade()
{
  noStroke();
  fill(135,86,45);
  rect(0,0,10,104);

}


                                                     //function to move
void Move()
{
  
       angle += 0.05;
       grassPosition += 0.01;
     
   
     
    }
 


                                                     //fuction to gack back to menu screen.
//void BackButtonLevel1()
//{
//                                                       //Back Button created
//  stroke(0);
//  fill(buttonColor);
//  rect(915,35,70,62,30); 
//  fill(255);
//  font4 = loadFont("Arial-Black-48.vlw");
//  textFont(font4, 40);
//  textSize(39);
//  text("<",942,65);
//  noStroke();
//  rect(940,59,34,9);
  
  
//                                                       //fuctionality
//  buttonColor = normalColor;
// if(mouseX>915 && mouseX < 915+70 && mouseY> 35 && mouseY < 35+62)  
//    {
     
//      buttonColor = hoverColor;
//    }
    
    
//  if(mousePressed )
//  {
//    if(mouseX>915 && mouseX < 915+70 && mouseY> 35 && mouseY < 35+62)  
//    {
//      if (currentPage == gameLevel1)
//      {
//        currentPage = menuPage;
//        r1.resetRobot();
//        //r1.iscolliding = false;
//        k1.resetKey();
//        for(int i = 0 ; i< rewards.length; i++)
//        {
//           rewards[i].resetRewards();
//        }
//         ml1.resetMonstersl1();
//         level1.score = 0;
//      }
     
//    }
//  }
// }
 
 void TotalScoreDisplay()
 {
   fill(230,115,117);
   textSize(30);
    text("Total Score: " + level1.score,140,50);
    
 
 }
 
}
