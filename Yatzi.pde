final int DICE_TYPE = 6; //Terningerne der bruges har 6 sider
final int MAX_PLAYERS = 6; //Pladen har maks 6 spillerer
final int[] DICE_SIZE = {43, 43}; //width og height af en terning
final int[] BOARD_SQUARE = {52, 35}; //width og height af en bræt firkant

//Program modes
Boolean MainMenu=true, GameMode=false, rolldice = false;

//Objekter
PFont boardFont; //Font objekt
PImage menuImg; //Main Menu til starts skærm
PImage bg; //Background
PImage dices[] = new PImage[DICE_TYPE]; //Terninger

//Points array
int[][] pointBoard = new int[6][18]; //Points

//Koordinater til knapper
//første array er for knappen, den anden er for værdierne x, y, width, height
int[][] menuButtons = {{356, 376, 137, 44}, //Start knap
                       {356, 432, 137, 42}, //Leaderboard
                       {402, 491, 46, 21}}; //Quitgame
int[][] diceCoordinates;
//Koordinater til første række
int[] gameboardXs = {232, 286, 342, 395, 449, 504};
int[] gameboardYs = {25, 61, 100, 138, 179, 217, 
                     255, 296, 337, 376, 413, 452, 
                     491, 529, 569, 608, 645, 684, 726};

/**
 * Sæt programmet op
 * Tegn menuskærm
 */
void setup() {
  size(850, 850);
  boardFont = createFont("Arial", 24, true); //Font setup
  
  //Load alle billeder
  menuImg = loadImage("Main_menu.png");
  bg = loadImage("Yatzi_plade.png");
  
  //Loader alle terninger til terningene array
  for(int i = 0; i < DICE_TYPE; i++) {
    dices[i] = loadImage("Dice_" + (i+1) + ".png");
  }
  
  //Sætter koordinater op
}


void draw() {
  textFont(boardFont);
  fill(0);
  if(MainMenu) {
    menu();
  } else if (GameMode) {
  startRound();
  }
  
  println("X: " + mouseX + "\nY: " + mouseY);
}

//Main menu display and functionality
void menu() {
  background(#FF69B0);
  image(menuImg, width/2 - menuImg.width/2, height/2 - menuImg.height/2);
  if(mousePressed) {
    //Tjekker om startspil knappen blev trukket
    if(overRect(menuButtons[0][0], menuButtons[0][1], 
                menuButtons[0][2], menuButtons[0][3])) {
      MainMenu = false;
      GameMode = true;
      return;
    }
    if(overRect(menuButtons[2][0], menuButtons[2][1], 
                menuButtons[2][2], menuButtons[2][3])) {
      exit();
    }
  }
}

//Draws the gamescreen
void gameScreen() {}

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

//Retunere om musen er over et felt/knap - Taget fra processing.org button example
boolean overRect(int x, int y, int width, int height){
  if(mouseX >= x && mouseX <= x+width &&
     mouseY >= y && mouseY <= y+height){
      return true; 
     }
   return false;
}
