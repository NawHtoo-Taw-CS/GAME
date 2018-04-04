ArrayList<platform> p;

boolean iscolliding = false;

PVector pos;
PVector vel;

float moving = 0;
float walk = 4;

int score = 0;

boolean Play = false;
boolean Quit = false;

boolean MainScreen = true;

int PlayX = 275; int PlayY = 175; int PlaySize = 250;

int QuitX = 700; int QuitY= 499; int QuitSize = 100;

int BackX = 0; int BackY= 499; int BackSize = 100;



void setup () {
  p = new ArrayList<platform>();
  float y = height/2;
  float ory = y;
  for(int i = 0; i < width/100; i++){
    p.add(new platform(i*100, y));
    y += random(-100, 100);
  }
  pos = new PVector (20, ory);
  vel = new PVector();
}
void settings() {
  size(800,600);
}
void draw() {
  
  if (MainScreen) {
    fill(100);
    rect(0,0,800,600);
    
    fill(50);
    rect(PlayX,PlayY,PlaySize,PlaySize);
    
    fill(255);
    textSize(100);
    text("Start",285,325);
    
    fill(50);
    rect(QuitX,QuitY,QuitSize,QuitSize);
    fill (255);
    textSize(40);
    text("QUIT",704,569);
    
    score = 0;
    
    setup();
  }
  
  {play();};
  
}

{mousePressed();};


void keyPressed(){
  if(key == 'a' || key == 'A') {
   moving = -walk; 
  }
  if(key == 'd' || key == 'D') {
   moving = walk; 
  }
 if(key == 'w' || key == 'W') {
   if(iscolliding){
   vel.y += -20;
   }
  }
   
   if(key == 'r' || key == 'R') {
   setup();
   score = 0;
  }
  if(key == ' ') {
   if(iscolliding){
   vel.y += -20;
   }
  }
  
  if (key == CODED) {
    if(keyCode == LEFT) {
     moving = -walk; 
    }
    if(keyCode == RIGHT) {
     moving = walk; 
    }
   if(keyCode == UP) {
     if(iscolliding){
     vel.y += -20;
     }
    }
  }
}
  

void keyReleased(){
  if(key == 'a' || key == 'A') {
   moving = 0; 
  }
  if(key == 'd' || key == 'D') {
   moving = 0; 
  }
  if (key == CODED) {
    if(keyCode == LEFT) {
     moving = 0; 
    }
    if(keyCode == RIGHT) {
     moving = 0;
   } 
  }
 }