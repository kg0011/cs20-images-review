//Global Variables
int appWidth, appHeight;
//
void setup() {
  //fullScreen();
  size(1200, 800);
  appWidth = width; //displayWidth   *if fullscreen
  appHeight = height; //displayHeight   *if fullscreen
  //
  //Population of variables
  backgroundX, backgroundY, backgroundWidth, backgroundHeight
  sceneryX, sceneryY, sceneryWidth, sceneryHeight
  extraX, extraY, extraWidth, extraHeight
  //
  //DIVs as rect()s
  rect(backgroundX, backgroundY, backgroundWidth, backgroundHeight);
  rect(sceneryX, sceneryY, sceneryWidth, sceneryHeight); //Landscape geometry
  rect(extraX, extraY, extraWidth, extraHeight); //Try using portrait geometry
  //
} //end setup
//
void draw() {} //end draw
//
void mousePressed() {} //end mouse pressed
//
void keyPressed() {} //end key pressed
//
//End Main Program
