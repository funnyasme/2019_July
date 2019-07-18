int carx = 0;


void setup(){
  size(400, 400);
 }
 

void draw(){
  background(202);
  drawCar(carx, 100, 64, color(200, 100, 102));
  drawCar(200, 200, 64, color(200, 100, 102));
  carx++;
 }

void drawCar(int x, int y, int thesize, color c){  //thesize = length
  rectMode(CENTER);
  
  //draw body
  stroke(0);  //black outline
  fill(c);
  rect(x, y, thesize, thesize / 2);
  fill(0);  //black wheels
  //draw 4 wheels relative to center
  rect(x - thesize / 4, y - thesize / 4, thesize / 4, thesize / 8); //top left
  rect(x + thesize / 4, y - thesize / 4, thesize / 4, thesize / 8); //top right
  rect(x - thesize / 4, y + thesize / 4, thesize / 4, thesize / 8); //bottom left
  rect(x + thesize / 4, y + thesize / 4, thesize / 4, thesize / 8); //bottom right
}
