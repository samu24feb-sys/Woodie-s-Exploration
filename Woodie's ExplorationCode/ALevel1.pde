 BackgroundLevel1 b1;
 Obstacles o1;
 MonsterLevel1 ml1;
 Rewards [] rewards;
 Key k1;
 Robot r1;
 boolean level1Restart = false;
class ALevel1
{
  
   int score = 0; // Total score
  
 ALevel1()
 {   
      b1 = new BackgroundLevel1();
      r1 = new Robot(61,300);
      ml1= new MonsterLevel1();
      o1 = new Obstacles();  
      
       rewards = new Rewards[9];
      rewards[0] = new Rewards(32,-104);
      rewards[1] = new Rewards(-168,4);

      rewards[2] = new Rewards(294,-154);
      rewards[3] = new Rewards(-203,-237);
      rewards[4] = new Rewards(-309,216);
      rewards[5] = new Rewards(481,221);
      rewards[6] = new Rewards(444,14);
      rewards[7] = new Rewards(-168,217);
      rewards[8] = new Rewards(-106,-87);
      
       //k1 = new Key(-106,-87);
        k1 = new Key(879,189);
        
       
           
 }

void Render()
{
       level1Restart = true;
       b1.Render();                        
        b1.Move();
        
        
        b1.drawGrass();
        
        //if (ml1.monster1Dead && ml1.monster2Dead)
        //{
        k1.Render();   //Rendering key
        
        //}
        
        
        for(int i =0; i<rewards.length;i++)    // Rendering coins
        {
        rewards[i].Render();
        
        }
                     
  
       
        //b1.BackButtonLevel1();

        o1.update();
        ml1.Render();
        ml1.Monster();
        r1.Render();
        ml1.Monster2Move();
        
        
        println("Total Score: " + score);
        
        if(level1Complete)
        {
         
        currentPage = gameLevel2;
        r1.resetRobot();
        }
        
        
}

}
