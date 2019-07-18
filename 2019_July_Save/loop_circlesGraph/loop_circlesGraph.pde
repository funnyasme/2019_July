size(800,600);

/*
line(0,20,width,20);
line(0,40,width,40);
line(0,60,width,60);
*/


for (int y=20;y<height;y+=20){
  line(0,y,width,y);
  print(y+" ");
}

for (int x=20;x<width;x+=20){
 line(x,0,x,height);
 print(x+" ");
}

/*
ellipse(20,20,10,10);
ellipse(40,20,10,10);
*/

for (int x=20;x<201;x+=20){
  ellipse(x,20,20,20);
}
