size(800,600);

fill(242, 191, 116);
stroke(255, 249, 242);
strokeWeight(6);

rect(0, 0, 800, 600);

ellipse(400,300,200,200);
line(400,0,400,600);

//left side
arc(0,300, 490,490, radians(270),radians(450));
ellipse(170,300, 150,150);
rect(0, 225, 175, 150);
line(20,260, 20,340);
ellipse(35,300, 30,30);

//right side
arc(800,300, 490,490, radians(90),radians(450));
ellipse(630,300, 150,150);
rect(625, 225, 175, 150);
line(780,260, 780,340);
ellipse(765,300, 30,30);

//outer line
line(0,0,800,0);
line(0,0,0,600);
line(800,0,800,600);
line(0,600,800,600);
