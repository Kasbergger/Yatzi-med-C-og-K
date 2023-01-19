//Program modes
Boolean MainMenu=true, GameMode=false, rolldice = false;

//Objekter
PFont boardFont; //Font objekt
PImage bg; //Background

//Spillebræts koordinater
int[][] gameboard = new int[6][18];

/**
 * Sæt programmet op
 * Tegn menuskærm
 */
void setup(){
  size(850, 850);
  boardFont = createFont("Arial", 24, true); //Font setup
  
  bg = loadImage("Yatzi_plade.png");
}


void draw(){
  textFont(boardFont);
  fill(0);
  if(MainMenu){
    menu();
  } else if (GameMode) {
  startRound();
  }
}

//Main menu display and functionality
void menu(){
  background(#FF69B0);
}

//Draws the gamescreen
void gameScreen(){}

//Updates what the dice displays
void screenDice(){}

//Updates what the bord shows
void screenBord(){
  background(bg);
}

//Keeps the time for the round
void timer(){}

//Checks when and what is pressed by the mouse
void mousePress(){}

//Runs the main game
void startRound(){
  screenBord();
  screenDice();
  if(rolldice = true) {
     hitDice(); 
  }
}

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
