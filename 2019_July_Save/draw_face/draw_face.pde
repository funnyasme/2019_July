//draw_face. u need the head, 2 eyes, and nose.

int face = 0;

void setup(){
  size(400, 400);
}


void draw(){
  background(200);
  drawFace(200, 200, 200, 200, color(200, 100, 102), color(255, 255, 255), color(120, 226, 205));
}

void drawFace(int x, int y, int wid, int heig, color face, color nose, color eye){ 
  
  stroke(0);
  fill(face);
  ellipse(x, y, wid, heig);
  
  fill(nose);
  triangle(x, y - heig / 5, x - wid / 20, y + heig / 10, x + wid / 20, y + heig / 10); 
  line(x, y - heig / 5, x, y + heig / 10);
  
  fill(eye);
  ellipse(x + wid / 5, y - heig / 5, wid / 5, heig / 5);
  ellipse(x - wid / 5, y - heig / 5, wid / 5, heig / 5);
  
  
  arc(x, y + heig / 5, wid / 4, heig / 8, 0, 22.0 / 7);
}
  
  
