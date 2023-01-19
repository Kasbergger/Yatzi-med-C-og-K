//Program modes
Boolean MainMenu=true, GameMode=false;
long timeEnd;

/*
Sæt programmet op
Tegn menuskærm
*/
void setup(){
   frameRate(165);
  size(850, 850);
  timeEnd=millis()+10000; 
}


void draw(){
  if(MainMenu){
    menu();
  } else if (GameMode) {
  startRound();
  }
}

//Main menu display and functionality
void menu(){}

//Draws the gamescreen
void gameScreen(){}

//Updates what the dice displays
void screenDice(){}

//Updates what the bord shows
void screenBord(){}

//Keeps the time for the round
void timer(){
  fill(255);
    rect(275, 275, 150, 100);

    textFont(createFont("Arial", 40, true), 40);
    fill(0);
  if (timeEnd-millis()>=0) {
    //time = duration - (millis() - begin)/1000;

    float showTime = (float)(timeEnd-millis())/1000;
    text(showTime, 275, 325);
  } else {
    text("penis", 275, 325);
  }
}

//Checks when and what is pressed by the mouse
void mousePress(){}

//Runs the main game
void startRound(){}

//Generates the numbers for the dice
void hitDice(){}

//Saves the chosen dice for the next hit
void chooseDice(){}

//Chooses the points for the bord
void choosePoints(){}

//Calculates the score and selects a winner
void Selectwinner(){}

//Resets values and starts a new game
void newGame(){}
