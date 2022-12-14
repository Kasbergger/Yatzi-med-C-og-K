//Program modes
Boolean MainMenu=true, GameMode=false;

/*
Sæt programmet op
Tegn menuskærm
*/
void setup(){
  
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
void timer(){}

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
