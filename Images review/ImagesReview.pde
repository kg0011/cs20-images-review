//Global Variables
int appWidth, appHeight;
float backgroundX, backgroundY, backgroundWidth, backgroundHeight;
float sceneryX, sceneryY, sceneryWidth, sceneryHeight;
float extraX, extraY, extraWidth, extraHeight;
PImage backgroundPic, sceneryPic, extraPic;
int backgroundPicWidth, backgroundPicHeight, sceneryPicWidth, sceneryPicHeight, extraPicWidth, extraPicHeight;
Boolean nightmode, brightnessControl;  //Reminder: both are using tint()
int brightnessNumber=128;  //Range is from  1-255
//
void setup() 
{
  //fullScreen();
  size(800, 600);
  appWidth = width; //displayWidth   *if fullscreen
  appHeight = height; //displayHeight   *if fullscreen
  //
  //Population of variables
  backgroundX = appWidth;
  backgroundY = appHeight;
  backgroundWidth = appWidth-1;
  backgroundHeight = appHeight-1;
  //
  sceneryX = appWidth*1/10; //*****may need to change, might not work with a landscape
  sceneryY = appHeight*1/7;
  sceneryWidth = appWidth*1/4;
  sceneryHeight = appHeight*1/4.5;
  //
  extraX = appWidth*3/4;
  extraY = appHeight*6/10;
  extraWidth = appWidth*1/8;
  extraHeight = appHeight*1/3;
  //
  backgroundPic = loadImage(""); //put '/Images used/Screenshot.png' if no other image is picked
  sceneryPic = loadImage("Scenery.jpeg");  //put in a folder later if it works
  extraPic = loadImage(""); //put '/Images used/Screenshot.png' if no other image is picked
  //
  backgroundPicWidth = 915;
  backgroundPicHeight = 516;
  sceneryPicWidth = 915;
  sceneryPicHeight = 516;
  extraPicWidth = 915;
  extraPicHeight = 516;
  //
  //DIVs as rect()s
  rect(backgroundX, backgroundY, backgroundWidth, backgroundHeight);
  rect(sceneryX, sceneryY, sceneryWidth, sceneryHeight); //Landscape geometry
  rect(extraX, extraY, extraWidth, extraHeight); //Try using portrait geometry
  //
  //Aspect ratio calculations
  float aspectRatio=0.0;
  int picWidth, picHeight, rectWidth, rectHeight;
  picWidth = ;
  picHeight = ;
  rectWidth = ;
  rectHeight = ;
  if ( picWidth >= picHeight ) { //Landscape or square
    aspectRatio = picHeight / picWidth; //Caution: Int to float casting
    picWidth = rectWidth; //on a 1:1 ratio
    picHeight = aspectRatio * rectWidth; //Aspect ratio, rewrite smaller dimension
    //Error check
    if ( picHeight > rectHeight ) {
      println("problem");
    }
    return picHeight;
  } else { //portrait
    aspectRatio = picWidth / picHeight; //Caution: Int to float casting
  }
  //if ( rectWidth >= rectHeight ) {} else {}
  //
} //end setup
//
void draw() 
{
  image( backgroundPic, backgroundX, backgroundY, backgroundWidth, backgroundHeight );
  image( sceneryPic, sceneryX, sceneryY, sceneryWidth, sceneryHeight );
  image( extraPic, extraX, extraY, extraWidth, extraHeight );
} //end draw
//
void mousePressed() {} //end mouse pressed
//
void keyPressed() {} //end key pressed
//
//End Main Program
