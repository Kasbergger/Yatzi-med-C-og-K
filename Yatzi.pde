Boolean mainMenu=true, gameMode=false;

/*
Sæt programmet op
Tegn menuskærm
*/
void setup(){
  
  mainMenu = true;
}


void draw(){
  if(mainMenu){
    menu();
  } else if (gameMode) {
  startRunde();
  }
}
