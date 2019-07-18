//Q1 assignment
/*
void setup(){  //setup() does not return a value
 println(slope(-1, 4, 3, -8));   //calling the function
}

float slope(float x1, float y1, float x2, float y2){   //defining parameters for function: slope
  return (y2 - y1) / (x2 - x1);  //telling what to return (giving formula for slope)
}
*/


//Q2
/*
void setup(){
  println (classify(30));      //calling the function: classify(some integer)
}


String classify(int c){  // The function classify will accept an integer number and will return a string based on the number of credits

  if(c >= 0 && c <= 4){  //if c greater than or equal to 0, and less than or equal to 4, return "freshman"
   return("freshman");
 }
  
  else if(c >= 5 && c <= 9){  //if c is greater than or equal to 5 and c is less than or equal to 9, return "sophomore"
   return("sophomore");  
 }
 
  else if(c >= 10 && c <= 14){   //if c is greater than or equal to 10 and less than or equal to 14, return "junior"
   return("junior");
 }
 
  else if(c >= 15 && c <= 30){   //if c is greater than or equal to 15, and less than or equal to 30, return "senior"
   return("senior");
 }
 
 else{
  return("invalid");             //if none of the conditions are met, returns "invalid"
 }
  
}
*/



//Q3
/*
void setup(){
  size(600, 600);  //screen size 
}



void draw(){         //draw() does not return a value
  background(200);   //screen color
  survey(1, 2, 3);   //calling the function
}


void survey(int a, int b, int c){   //giving the parameters for function: survey
  
  line(100, 100, 100, 500);         //construction of axis (vertical)
  line(100, 500, 500, 500);         //construction of axis (horizontal)
  
  fill(173, 19, 19);            //color of text and bars
  textSize(24);                 //size of text
  
  float t = a + b + c;         //total equals a+b+c
  
  float r, p, h;               //defining variable r, p, h  
  
  r = a / t;                  //ratio 
  p = r * 100;                //percentage
  h = r * 400;                //height
  rect(140, 500, 80, -h);     //constructing the bar (rectangle), with the corresponding height
  
  text(int (p) + "%", 150, 540);    //writing the percentage below bar, at given point.  
  
  
  r = b / t;                  //ratio
  p = r * 100;                //percentage
  h = r * 400;                //height
  rect(260, 500, 80, -h);     //constructing the bar (rectangle), with the corresponding height
  
  text(int (p) + "%", 270, 540);  //writing the percentage below bar, at given point. 
  
  
  r = c / t;               //ratio
  p = r * 100;             //percentage
  h = r * 400;             //height
  rect(380, 500, 80, -h);  //constructing the bar (rectangle), with corresponding height
  
  text(int (p) + "%", 390, 540);   //writing percentage below bar, at given bar
}
*/



//Q4
/*
void setup(){
 println (isValid("5/22"));  //calling the function
}

boolean isValid(String md){     //isValid is type boolean (true/false), date is string type

  String[] list = split(md, '/');  //list is variable to hold array of strings.
  int m = int(list[0]);            //element # 0 of the string array list, convert it to int
  int d = int(list[1]);            //element # 1 of the string array list, convert it to int
  
  if(d < 1){         //if day is less than one, return false
    return false;
  }

  else if((m == 1 || m == 3 || m == 5 || m == 7 || m == 8 || m == 10 || m == 12) && d <= 31){ //if month is 1st, 3rd, 5th, 7th, 8th, 10th or 12th and day is less than or equal to 31
    return true;                                                                             //return true
  }

  else if((m == 4 || m == 6 || m == 9 || m == 11) && d <= 30){  //if month is 4th, 6th, 9th or 11th and day is less than or equal to 30  
    return true;                                                //return true
  }

  else if(m == 2 && d <= 28){      //if month is 2 (February) and day is less than or equal to 28
    return true;                   //return true
  }
    
  else {               //if none of the above conditions are met, return false
    return false;
  }
 
}
*/
