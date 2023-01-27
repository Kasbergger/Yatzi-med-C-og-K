final int DICE_TYPE = 6; //Number of faces for dice
final int NUM_OF_DICE = 5; //Number of dice
final int MAX_PLAYERS = 6; //Max player count
final int POINT_ROWS = 18;
final int[] DICE_SIZE = {43, 43}; //width and height of a dice img
final int[] BOARD_SQUARE = {52, 35}; //width and height of a point square
final int[] HIT_BUT_SIZE = {264, 105}; //Hit buttons width and height
final int[] DICE_LOCK_BUT_SIZE = {111, 46}; //widht and height of the locked/unlocked buttons

//Coordinates for screen objects
//First array for the button, second for the values x, y, width, height
final int[][] MENU_BUTTONS = {{356, 376, 137, 44}, //Start button
                              {356, 432, 137, 42}, //Leaderboard
                              {402, 491, 46, 21}}; //Quitgame
final int[] DICE_START_COOR = {630, 86}; //Starting coordinates for the top dice
//Coordinates for top left corner of each row and column
final int[] GAME_COLUMNS = {232, 286, 342, 395, 449, 504};
final int[] GAME_ROWS = {25, 61, 100, 138, 179, 217, 
                         255, 296, 337, 376, 413, 452, 
                         491, 529, 569, 608, 645, 684, 726};
final int[] HIT_BUTTON = {636, 422}; //Coordinates for the hit button

//Program modes
Boolean MainMenu=true, GameMode=false, rolldice = false, startOfGame = true;

//Objekter
PFont boardFont; //Font objekt
PImage menuImg; //Main Menu for startscreen
PImage bg; //Background
PImage dices[] = new PImage[DICE_TYPE]; //Dices img
PImage[] diceButton =  new PImage[2]; //0 for locked 1 for unlocked
PImage hitDiceBut; //Img for what to do with the dices

//Værdier til brædtet
int[][] pointBoard = new int[MAX_PLAYERS][POINT_ROWS]; //Points
char[] players = new char[MAX_PLAYERS]; //Player letters / name
int[] diceFace = new int[NUM_OF_DICE]; //Stores the face of the dice
boolean[] diceLocked = new boolean[NUM_OF_DICE]; //Stores if the dice is locked
int diceThrows = 0; //Counts the number of trows




/**
 * Setsup the program
 */
void setup() {
  size(850, 850);
  boardFont = createFont("Arial", 24, true); //Font setup
  
  //Load alle billeder
  menuImg = loadImage("Main_menu.png");
  bg = loadImage("Yatzi_plade.png");
  diceButton[0] = loadImage("Unlocked.png");
  diceButton[1] = loadImage("Locked.png");
  hitDiceBut = loadImage("Hit_dice.png");
  
  //Loader alle terninger til terningene array
  for(int i = 0; i < DICE_TYPE; i++) {
    dices[i] = loadImage("Dice_" + (i+1) + ".png");
  }
  for(int i = 0; i < NUM_OF_DICE; i++) {
    diceFace[i] = 0;
  }
  for(int i = 0; i < MAX_PLAYERS; i++) {
   players[i] = '_'; 
  }
}

/**
 * Runs the game
 */
void draw() {
  textFont(boardFont);
  fill(0);
  if(MainMenu) {
    menu();
  } else if (GameMode) {
    startRound();
  }
  
  //println("width: " + diceButton[0].width + "\nheight: " + diceButton[0].height);
  //println("X: " + mouseX + "\nY: " + mouseY);
}

/**
 * Main menu display and functionality
 */
void menu() {
  background(#FF69B0);
  image(menuImg, width/2 - menuImg.width/2, height/2 - menuImg.height/2);
  if(mousePressed) {
    //Tjekker om startspil knappen blev trukket
    if(overRect(MENU_BUTTONS[0][0], MENU_BUTTONS[0][1], 
                MENU_BUTTONS[0][2], MENU_BUTTONS[0][3])) {
      MainMenu = false;
      GameMode = true;
      return;
    }
    if(overRect(MENU_BUTTONS[2][0], MENU_BUTTONS[2][1], 
                MENU_BUTTONS[2][2], MENU_BUTTONS[2][3])) {
      exit();
    }
  }
}

/**
 * Draws the game screen
 */
void gameScreen() {}

/**
 * Updates what the dice displays
 */
void screenDice() {
  for(int i = 0; i < NUM_OF_DICE; i++){
    image(dices[diceFace[i]], DICE_START_COOR[0] , DICE_START_COOR[1] + i * DICE_SIZE[1] * 1.5); //Draws dices
    image(diceButton[int(diceLocked[i])], DICE_START_COOR[0] + DICE_SIZE[0] * 1.5 , DICE_START_COOR[1] + i * DICE_SIZE[1] * 1.5); //Draws buttons for dice
  }
}
/**
 * Updates what the bord shows
 */
void screenBord() {
  background(bg);
  for(int i = 0; i < MAX_PLAYERS; i++) {
    text(players[i], GAME_COLUMNS[i] + BOARD_SQUARE[0]/2.6, GAME_ROWS[0] + BOARD_SQUARE[1]/1.3);
  }
}
/**
 * Keeps the time for the round
 */
void timer(){}
/**
 * Runs the main game
 */
void startRound(){
  //Updates the screen
  screenBord();
  screenDice();
  
  //Selects players at the start of the game
  if(startOfGame) {
    if(mousePressed) {
      for(int i = 0; i < MAX_PLAYERS; i++){
        if(overRect(GAME_COLUMNS[i], GAME_ROWS[0], BOARD_SQUARE[0], BOARD_SQUARE[1])) {
          players[i] = char(int('A') + i);
        }
      }
    }
  }
  
  //Unlocks all dice at start of a new round
  if(diceThrows <= 0) {
    for(int i = 0; i < NUM_OF_DICE; i++) {
     diceLocked[i] = false; 
    }
  }
  
  //Hits the dice if asked to roll them
  if(rolldice == true) {
     hitDice(); 
  }
}

/**
 * Generates the numbers for the dice
 */
void hitDice() {
  startOfGame = false; //Says that the game is now on
}

/**
 * Saves the chosen dice for the next hit
 */
void chooseDice() {}

/**
 * Chooses the points for the bord
 */
void choosePoints() {}

/**
 * Calculates the score and selects a winner
 */
void Selectwinner() {}

/**
 * Resets values and starts a new game
 */
void newGame() {}

/**
 * Retunere om musen er over et felt/knap - Taget fra processing.org button example
 */
boolean overRect(int x, int y, int width, int height){
  if(mouseX >= x && mouseX <= x+width &&
     mouseY >= y && mouseY <= y+height){
      return true; 
     }
   return false;
}
