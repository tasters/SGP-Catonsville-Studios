
class textBoxButton {
  //Members - variables of the object the class creates.(attributes) 
  float xPos, yPos, textBoxWidth, textBoxHeight, dist ;
  int switchCounter;
  int text;
  boolean screenChang;
  String optionName;
  PImage img0, img1, img2, img3;
  weekTotal week1, week2, week3, week4, week5, week6, week7, week8, week9, week10, week11, week12, week13, week14, week15;



  textBoxButton(float a, float b, float c, float d, int t) {  // this was made by Lester "high noon" Mccree
    xPos = a;
    yPos = b;
    textBoxWidth = c;
    textBoxHeight = d;
    text = t;
    screenChang = false;
    week1 = new weekTotal(1);
    week2 = new weekTotal(2);
    week3 = new weekTotal(3);
    week4 = new weekTotal(4);
    week5 = new weekTotal(5);
    week6 = new weekTotal(6);
    week7 = new weekTotal(7);
    week8 = new weekTotal(8);
    week9 = new weekTotal(9);
    week10 = new weekTotal(10);
    week11 = new weekTotal(11);
    week12 = new weekTotal(12);
    week13 = new weekTotal(13);
    week14 = new weekTotal(14);
    week15 = new weekTotal(15);
  }
/*
 drawtTextBox - draws
 input: mousePressed
 output:mainGameSwitchNum
 */
  void drawTextBox(int switchNum) {

    textRepo();
    textSize(32);
    strokeWeight(5);
    textAlign(CENTER, CENTER);

    if ( screenState == 2) {
      if (mousePressed == true &&(mouseButton == LEFT)) {
        if (mouseX >= xPos && mouseX <=(xPos + textBoxWidth) &&
          mouseY >= yPos && mouseY <= (yPos + textBoxHeight)) {  
          if (mainGameSwitchNum != 5)
            mainGameSwitchNum++;
          delay(2000);
        }
      }
    } 
    switch (switchNum) {
    case 0:
      mainGameSwitchNum++;
      break;

    case 1:

      img0 = loadImage("dorm.jpg");
      background(img0);
      fill(255);
      rect(xPos, yPos, textBoxWidth, textBoxHeight);
      fill(0);
      text(optionName, xPos, yPos, textBoxWidth, textBoxHeight);


    case 2:


      img1 = loadImage("Class sucks.jpg");

      background(img1);
      fill(255);
      rect(xPos, yPos, textBoxWidth, textBoxHeight);
      fill(0);
      text(optionName, xPos, yPos, textBoxWidth, textBoxHeight);

      break;

    case 3:


      img2 = loadImage("True-Grits.png");

      background(img2);
      fill(255);
      rect(xPos, yPos, textBoxWidth, textBoxHeight);
      fill(0);
      text(optionName, xPos, yPos, textBoxWidth, textBoxHeight);


      break;
    case 4:

      img3 = loadImage("jobless-rate-unemployment-jobs.jpg");
      background(img3);
      fill(255);
      rect(xPos, yPos, textBoxWidth, textBoxHeight);
      fill(0);
      text(optionName, xPos, yPos, textBoxWidth, textBoxHeight);

      break;

    case 5:
      img4 = loadImage("Map.png");

      background(img4);
      screenState = 3;

      break;
    }
  }


  void drawEllipseButton() {

    ellipse(xPos, yPos, textBoxWidth, textBoxHeight);

    textRepo();
    if ((mousePressed == true) && ((textBoxWidth + textBoxHeight)/2 == dist)) {
    }
  }
/*
 drawPhoneUI - displays the players grades, wealth and happiness    
 input: Mouse Buttons
 output: phoneUIState, Grades, Wealth, Happiness, totalGrades,totalWealth, totalHappiness 
 */
  void drawPhoneUI(int switchNum) {
    switch(switchNum) {
    case 0:
      rect(xPos, yPos, textBoxWidth, textBoxHeight);  
      if (mousePressed == true) {
        if (mouseX >= xPos && mouseX <=(xPos + textBoxWidth) &&
          mouseY >= yPos && mouseY <= (yPos + textBoxHeight)) {
          phoneUIState++;
          delay(2000);
        }
      }
      break;


    case 1:
      noStroke();
      fill(130, 221, 242);
      rectMode(CENTER);
      rect(640, 480, 1280, 960);
      fill(71, 175, 198);
      rect(640, 480, 640, 960);
      stroke(130, 221, 242);
      line(322, 50, 957, 50);
      stroke(0);
      fill(0);
      textAlign(LEFT, BOTTOM);
      textSize(16);
      text("AT&T", 322, 45);
      rect(375, 33, 5, 15);
      rect(385, 30, 5, 20);
      rect(395, 28, 5, 25);
      fill(255);
      rect(405, 25, 5, 30);
      fill(255);
      rect(900, 30, 45, 15);
      fill(0);
      rect(925, 30, 15, 15);
      textSize(12);
      text("80%", 936, 37);
      textAlign(CENTER, TOP);
      text(" week 1 ", 640, 90);
      textAlign(LEFT, BOTTOM);
      week1.happinessTracker();
      week1.accountBalance();
      week1.gradeTracker();


      fill(0, 0);
      rect(xPos, yPos, textBoxWidth, textBoxHeight);

      if (mousePressed == true) {
        if (mouseX >= xPos && mouseX <=(xPos + textBoxWidth) &&
          mouseY >= yPos && mouseY <= (yPos + textBoxHeight)) {
          phoneUIState = 0;
          delay(2000);
        }
      }
      fill(0);
      textSize(40);
      text(">", 660, 90);
      rect(660, 70, 40, 20);
      if (mousePressed == true) {
        if (mouseX >= 660 && mouseX <= 700 &&
          mouseY >= 70 && mouseY <= 90) {
          phoneUIState++;
          delay(2000);
        }
      }
      break;
    case 2:
      noStroke();
      fill(130, 221, 242);
      rectMode(CENTER);
      rect(640, 480, 1280, 960);
      fill(71, 175, 198);
      rect(640, 480, 640, 960);
      stroke(130, 221, 242);
      line(322, 50, 957, 50);
      stroke(0);
      fill(0);
      textAlign(LEFT, BOTTOM);
      textSize(16);
      text("AT&T", 322, 45);
      rect(375, 33, 5, 15);
      rect(385, 30, 5, 20);
      rect(395, 28, 5, 25);
      fill(255);
      rect(405, 25, 5, 30);
      fill(255);
      rect(900, 30, 45, 15);
      fill(0);
      rect(925, 30, 15, 15);
      textSize(12);
      text("80%", 936, 37);
      textAlign(CENTER, TOP);
      text(" week 2 ", 640, 90);
      textAlign(LEFT, BOTTOM);
      week1.happinessTracker();
      week1.accountBalance();
      week1.gradeTracker();

      fill(0, 0);
      rect(xPos, yPos, textBoxWidth, textBoxHeight);

      if (mousePressed == true) {
        if (mouseX >= xPos && mouseX <=(xPos + textBoxWidth) &&
          mouseY >= yPos && mouseY <= (yPos + textBoxHeight)) {
          phoneUIState = 0;
          delay(2000);
        }
      }
      fill(0);
      textSize(40);
      text(">", 660, 90);
      rect(660, 70, 40, 20);
      if (mousePressed == true) {
        if (mouseX >= 660 && mouseX <= 700 &&
          mouseY >= 70 && mouseY <= 90) {
          phoneUIState = 16;
          // phoneUIState++;
          delay(2000);
        }
      }
      rect(580, 70, 40, 20);
      text("<", 580, 90);
      if (mousePressed == true) {
        if (mouseX >= 580 && mouseX <= 620 &&
          mouseY >= 70 && mouseY <= 90) {
          phoneUIState--;
          delay(2000);
        }
      }
      break;





    case 16:
      noStroke();
      fill(130, 221, 242);
      rectMode(CENTER);
      rect(640, 480, 1280, 960);
      fill(71, 175, 198);
      rect(640, 480, 640, 960);
      stroke(130, 221, 242);
      line(322, 50, 957, 50);
      stroke(0);
      fill(0);
      textAlign(LEFT, BOTTOM);
      textSize(16);
      text("AT&T", 322, 45);
      rect(375, 33, 5, 15);
      rect(385, 30, 5, 20);
      rect(395, 28, 5, 25);
      fill(255);
      rect(405, 25, 5, 30);
      fill(255);
      rect(900, 30, 45, 15);
      fill(0);
      rect(925, 30, 15, 15);
      textSize(12);
      text("80%", 936, 37);
      textAlign(CENTER, TOP);
      text("Semester Total", 640, 90);
        textAlign(LEFT, BOTTOM);
      gradeTrackerTotal();
      accountBalanceTotal();
      happinessTrackerTotal();
    

      fill(0, 0);
      rect(xPos, yPos, textBoxWidth, textBoxHeight);

      if (mousePressed == true) {
        if (mouseX >= xPos && mouseX <=(xPos + textBoxWidth) &&
          mouseY >= yPos && mouseY <= (yPos + textBoxHeight)) {
          phoneUIState--;
          delay(2000);
        }
      }
      fill(0);
      textSize(40);
      rect(580, 70, 40, 20);
      text("<", 580, 90);
      if (mousePressed == true) {
        if (mouseX >= 580 && mouseX <= 620 &&
          mouseY >= 70 && mouseY <= 90) {
          phoneUIState--;
          delay(2000);
        }
      }
      break;
    }
  }





  void textRepo() {
    switch(text) {
    case 0:
      optionName = "its the first day of school and you are excited to start your day at your new university!";
      break;
    }
  }
}
