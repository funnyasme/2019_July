//assignment Q1


void setup(){
 float s;
 s = slope(-1, 4, 3, -8);
 println(s);
}

float slope(int y2, int y1, int x2, int x1){
 return ((y2 - y1) / (x2 - x1)); 
}
