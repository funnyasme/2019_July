int bulletX;
int level=1;
int speed=1;
int bulletY=330;
boolean moveUp=false;//for the bullet
boolean moveDown=true;//for the enemy
int points=0;
int enPoints=0;
int ex;
int ey=-50;


void setup(){
  size(600,400); 
  noCursor();//hides the mouse
  textSize(30);
  ex=int(random(0,width));
}

void moveBullet(){
 //shoot a bullet when the SPACE key is pressed
  if (keyPressed && key==' '){
    moveUp=true; 
  }
  if (moveUp==false){
     bulletX=mouseX+25;
  }
  //moving the bullet
  if(moveUp){
    bulletY-=5;//move 5 pixels up 
  }  
  //resetting the bullet position when it goes off-screen
  if (bulletY<0){
    bulletY=330; 
    moveUp=false;
  }
}

void moveEnemy(){
  
    //move the enemy
  if (moveDown){
    ey+=speed; 
  }
  
  
  //reset the enemy to the top of the screen (off-screen)
  if (ey>430){
    ey=-50;
    ex=int(random(0,width));
    enPoints++;
  }
}  
void draw(){
  background(0);
  ellipse(ex,ey,60,60);//drawing the enemy
  rect(mouseX,320,50,80);//drawing the player
  
  ellipse(bulletX,bulletY,16,16);//drawing the bullet
  moveBullet();//calling the function moveBullet
  moveEnemy();
  checkHit();//checking if the bullet hits the enemy
  checkWinLose();//checking for game over
  text(points,550,30);
  text(enPoints,30,30);
}

void checkWinLose(){
  if (points==4){
    speed=3; 
  }
  else if(points==8){
    speed=5; 
  }
  else if (points==12){
    text("You win",250,250);
    moveUp=false;
    moveDown=false;
  }
  if (enPoints==3){
    text("You lose",250,250);
    moveUp=false;
    moveDown=false;
  }
}

void checkHit(){
  //player gets 1 point when the enemy is hit
  if (dist(ex,ey,bulletX,bulletY)<38 && moveUp){
    ey=-50;//move the enemy above the top of the screen
    ex=int(random(0,width));
    points++;//add 1 point when the enemy is hit

  }
  
}
