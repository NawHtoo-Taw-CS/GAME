void mousePressed(){
  if (mouseX > PlayX && mouseX < PlayX + PlaySize && mouseY > PlayY && mouseY < PlayY + PlaySize) {
    MainScreen = false;
    Play = true;
    Quit = false;
   }
   if (mouseX > QuitX && mouseX < QuitX + QuitSize && mouseY > QuitY && mouseY < QuitY + QuitSize) {
    exit ();
   }
   if (mouseX > BackX && mouseX < BackX + BackSize && mouseY > BackY && mouseY < BackY + BackSize) {
      MainScreen = true;
      Play = false;
   }
 }