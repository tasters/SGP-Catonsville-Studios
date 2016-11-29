 //<>// //<>// //<>// //<>//
class startButtons {
  //Members - variables of the object the class creates.(attributes) 
  float xPos, yPos, textBoxwidth, textBoxHeight, dist;
  int text;
  boolean screenChange;
  String optionName;

  //constructors - initializes the variables, or the settings of the object that the class creates.(sets up those attributes)
  startButtons(float a, float b, float c, float d, int t) {
    xPos = a;
    yPos = b;
    textBoxwidth = c;
    textBoxHeight = d;
    dist = sqrt((a - mouseX) * (a - mouseX) + (b - mouseY) * (b - mouseY));
    text = t;
    screenChange = false;
  }
  // Methods - functions of the object that the class creates.(abilities of the objects)
 
  
  void startScreen(int switchNum) {
    optionName();

    textSize(32);
    textAlign(CENTER, CENTER);
    fill(0);
    if ( screenState == 0) { 
      text(optionName, xPos, yPos, textBoxwidth, textBoxHeight);
      strokeWeight(5);
      fill(0, 0);
      rect(xPos, yPos, textBoxwidth, textBoxHeight);
      if (mousePressed == true) {
        if (mouseX >= xPos && mouseX <=(xPos + textBoxwidth) &&
          mouseY >= yPos && mouseY <= (yPos + textBoxHeight)) {  
          screenChange = true;
        }
      }
    } 
    switch (switchNum) {
    case 0:
      if (switchNum == 0) {
        if (screenChange == true) {
          screenState = 2;
          screenChange = false;
        }  
      }
      
      break;

    case 1:
      if (switchNum == 1) {
        if (screenChange == true) {
          background(0, 174, 239);
          screenState = 1;
          text("X", 1200, 50);
          selectDifficulty();


          if (mousePressed == true) {
            if (mouseX >= 1190 && mouseX <= 1220  &&
              mouseY >= 50 && mouseY <= 150) {

              screenChange = false;
              screenState = 0;
            }
          }
        }
      }
      break;

    case 2:
      if (switchNum == 2) {
        if (screenChange == true) {
          background(0, 174, 239);
          screenState = 1;
          text("X", 1200, 50);
          text("The game will simulate a fifteen-week semester. During each week, the player will make choices about how to spend their time. Each choice has potential advantages and disadvantages, which are captured in the outcomes of each week. Most choices commit a certain amount of time to an activity. There are a total of 168 hours available in each week, so time spent on one choice is not available for another choice. ", 0, 400, 1200, 200);


          if (mousePressed == true) {
            if (mouseX >= 1190 && mouseX <= 1220  &&
              mouseY >= 50 && mouseY <= 150) {
              screenChange = false;
              screenState = 0;
            }
          }
        }
      }
      break;
    case 3:
      if (switchNum == 3) {
        if (screenChange == true) {
          fill(255);
          background(0);
          textSize(18);
          textAlign(CENTER, CENTER);
          text("Made by:", 480, 200);
          text("Matt Brown", 600, 200);
          text("Evan Kamuf", 600, 220);
          text("Matthew Kuszewski", 600, 240);
          text("Lester McCrea IV", 600, 260);
          text("William Nwachuku", 600, 280);
          textSize(50);
          text("CATONSVILLE STUDIOS", 600, 400);
          textSize(32);
          text("X", 1200, 50);
          screenState = 1;
          if (mousePressed == true) {
            if (mouseX >= 1190 && mouseX <= 1220  &&
              mouseY >= 50 && mouseY <= 150) {
              screenChange = false;
              screenState = 0;
            }
            break;
          }
        }
      }
    }
  }

/*
optionName - respository of option names    
 input: text
 output: optionName
 */
  void optionName() {
    switch(text) {
    case 0:
      optionName = "Start";
      break;
    case 1:
      optionName = "Options";
      break;
    case 2: 
      optionName = "Instructions";
      break;
    case 3:
      optionName = "Credits";
      break;
    }
  }
}

/*
selectDifficulty - Changes the values at which values are added and subtracted    
 input: Mouse Buttons
 output: diffSub, diffAdd
 */
void selectDifficulty() {
  fill(0);
  textSize(50);
  text("Difficulty ", 750, 150, 300, 70);
  textSize(32);
  text("Easy", 750, 350, 300, 70);
  text("Medium", 750, 450, 300, 70);
  text("Hard", 750, 550, 300, 70);
  fill(255, 0);
  rect(750, 350, 300, 70);
  rect(750, 450, 300, 70);
  rect(750, 550, 300, 70);
  if (mousePressed == true) {
    if (mouseX >= 750 && mouseX <=(750 + 300) &&
      mouseY >= 350 && mouseY <= (350 + 70)) {

      diffSub = 1;
      diffAdd = 1;
    }

    if (mouseX >= 750 && mouseX <=(750 + 300) &&
      mouseY >= 450 && mouseY <= (450 + 70)) {
      diffSub = 1.5;
      diffAdd = .87;
    }


    if (mouseX >= 750 && mouseX <=(750 + 300) &&
      mouseY >= 550 && mouseY <= (550 + 70)) {
      diffSub = 2;
      diffAdd = .75;
    }
  }
}