void play() {


if (Play) {
  background(100);
  fill(255);
  textSize(45);
  text("score =",50,50);
  text(score,250,50);
  
  iscolliding = false;
  for(platform i: p){
    i.show();
    if(i.collide(pos)){
      iscolliding = true;
      pos.y = i.pos.y;
      
    }
  } 
    if(pos.y > height) {
      setup();
      score = 0;
    }
    if(pos.x > width) {
      setup();
      score = score + 50;
    }
    fill(50);
    stroke(0);
    ellipse(pos.x, pos.y-8, 16, 16);
    if(!iscolliding) {
    vel.y += 0.5;
    }
    if(pos.x <= 0) {
     pos.x = 5;
    }
    
    pos.add(vel);
    pos.x += moving;
    vel.mult(0.9);
   
   fill(50);
    rect(QuitX,QuitY,QuitSize,QuitSize);
    rect(BackX,BackY,BackSize,BackSize);
    
    fill (255);
    textSize(40);
    text("QUIT",700,569);
    
    text("BACK",0,569);
    }
   }