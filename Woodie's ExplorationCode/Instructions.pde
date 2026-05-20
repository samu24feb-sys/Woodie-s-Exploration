PFont f3, f4, f5,f6;

class Instructions {
  
  Instructions() 
  {
    bb1 = new BackButton(900,50,928,79,928,73);
  }

  void Render() {
    noStroke();
    fill(136,217,80);
    rect(0, 0, 1000, 800);
    fill(lerpColor(color(136,217,80, 80), color(118,203,58), 0.5));

    beginShape();
    curveVertex(466, 900);
    curveVertex(-618, 571);
    curveVertex(849, 1961);
    curveVertex(52, 3138);
    curveVertex(-34, 815);
    curveVertex(403, 770);
    curveVertex(793, 1130);
    curveVertex(1458, 5198);
    curveVertex(992, 600);
    curveVertex(6533, 1460);
    curveVertex(4759, 204);
    curveVertex(554, 119);
    curveVertex(-7, 645);
    curveVertex(1284, 7829);
    endShape(CLOSE);

   

    fill(166);
    f3 = loadFont("Ravie-48.vlw");
    textFont(f3, 24);
    text("back", 1088, 62);
    
      bb1.Render();
    bb1.mouseHover();

      
  
}

  void InfoPage() {
    fill(0);
    f5 = loadFont("PipeDream-48.vlw");
    textFont(f5);
    
       String rules = "\nHOW TO PLAY?\n\n" ;
       String rules2 =  "MOVE: 'A'= MOVE LEFT .\n";
       String rules4 =  "'D' = MOVE RIGHT .\n";
       String rules5 =  "JUMP: PRESS 'SPACE' KEY TO JUMP.\n";
       String rules6 =  "COINS: COLLECT COINS TO SCORE POINTS .\n";
       String rules7 =  "  MONSTERS: KILL MONSTERS TO GET THE KEY.\n" ;
       String rules8 =  "KEYS: USE KEYS TO UNLOCK NEXT lEVEL.";
       
    fill(73,107,30);      
    textSize(80);
    text(rules, 535, 109);
    textSize(42);
    text(rules2, 308, 222);
    text(rules4, 405, 287);
    text(rules5, 446, 357);
    text(rules6, 499, 453);
    text(rules7, 500, 573);
    text(rules8, 502, 670);
         
    
    fill(0,24);
    f6 = loadFont("TaitoAllStars-48.vlw");
    textFont(f6);
    String symbols = "efewtrjkentkejvhtu4htvie4ryt8ury";
    String symbols1 = "hewiutyueih ihireh rhgoin";
    text(symbols,377,238);
    text(symbols1,392,387);
    text(symbols,275,600);
    text(symbols1,307,732);
    text(symbols,466,35);
    text(symbols1,566,128);
    text(symbols,866,487);
  }
}
