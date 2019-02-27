private double fractionLength = .8; 
private int smallestPart = 10; 
private double fractalAngle = .2;  
public void setup() 
{   
  size(640,480);    
  noLoop(); 
} 
public void draw() 
{   
  background(0);   
  stroke(0,255,0);   
  line(320,480,320,380);   
  drawFractal(320,380,100,3*Math.PI/2);  //will add later 
} 
public void drawFractal(int x,int y, double fractalLength, double angle) 
{ 
  stroke((float)Math.random()*254,(float)Math.random()*204,(float)Math.random()*123);
  double angle1;
  double angle2;
  angle1 = angle + fractalAngle;
  angle2 = angle - fractalAngle;
  fractalLength *=fractionLength; 
  int endX1 = (int)(fractalLength*Math.cos(angle1) + x);
  int endX2 = (int)(fractalLength*Math.cos(angle2)+x);
  int endY1 = (int)(fractalLength*Math.sin(angle1) + y);
  int endY2 = (int)(fractalLength*Math.sin(angle2) + y);
  line(x,y,endX1,endY1);
  line(x,y,endX2,endY2); 
  if(fractalLength > smallestPart){
  
  drawFractal(endX1,endY1,fractalLength,-3*Math.PI/2);
  drawFractal(endX2,endY2,fractalLength,3*Math.PI/2);
  }
}
