//draw house

int house = 0;

void setup(){
  size(400, 400);
}


void draw(){
  background(200);               //house               //window             //door                roof
  drawHouse(100, 100, 200, 200, color(62, 17, 63), color(255, 255, 255), color(100, 205, 188), color(143, 153, 188), color(255, 255, 255));
  //rectMode(CENTER);
}

void drawHouse(int x, int y, int wid, int heig, color house, color window, color door, color roof, color doorKnob){
  
  stroke(2);
  fill(house);  //house
  rect(x, y, wid, heig);
  
  fill(window);  //window
  rect(x + wid / 4, y + heig / 6, wid / 5, heig / 5);
  
  fill(door); //door
  rect(x + wid / 3, y + heig / 2, wid / 3, heig / 2);
  
  fill(roof); //roof
  triangle(x, y, x + wid / 2, y - heig / 2, x + wid, y);
  
  fill(doorKnob); //door knob
  ellipse(x + wid / 1.7, y + heig / 1.3, wid / 10, heig / 10);
}
