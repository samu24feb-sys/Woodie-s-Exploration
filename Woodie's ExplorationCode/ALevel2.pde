   Rewards [] rewards1;
boolean winLevel2;
boolean level2Restart = false;
class ALevel2
{   //declaring objects
   BackgroundLevel2 level2Bg;
   SnowMonster sm1;
   ObstaclesLevel2 obl1;
      Key k2;
      
 ALevel2()
 {
      
     level2Bg = new BackgroundLevel2();      // Initialising objects
      sm1 = new SnowMonster();
       r1 = new Robot(50,300);
       obl1 = new ObstaclesLevel2();
           rewards1 = new Rewards[10];
      rewards1[0] = new Rewards(-242,152);
      rewards1[1] = new Rewards(144,149);
      rewards1[2] = new Rewards(61,148);
      rewards1[3] = new Rewards(153,9);
      rewards1[4] = new Rewards(215,-229);
      rewards1[5] = new Rewards(381,-97);
      rewards1[6] = new Rewards(454,275);
      rewards1[7] = new Rewards(-32,-334);
      rewards1[8] = new Rewards(-136,-334);
      rewards1[9] = new Rewards(-80,-112);
          k2 = new Key(906,727);
 }

void Render()
{       
         
     
       level2Restart = true;

    
        obl1.Update();
        level2Bg.Render();
          if (sm1.SnowMonsterDead)
        {
            k2.Render();   //Rendering key
        
        }
        
        
        for(int i =0; i<rewards1.length;i++)    // Rendering coins
        {
        rewards1[i].Render();
        
        }
                     
       
    
         r1.Render();
        sm1.Render();
        
        if(k2.keyCollected)
        {
          winLevel2 = true;
          currentPage = win;
          
        }
        
     
        
       

}

}
