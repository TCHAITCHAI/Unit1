// Lawrence Zhu
// 2-4
// Jan 30 2025

void setup() {
  size(500, 500);
}

void draw() {

  background(173, 216, 230);  
  drawRobotEye();
  
  
}

void drawRobotEye() {
  // Outer helmet (light blue)
  stroke(2);
  strokeWeight(4);
  fill(120, 160, 255);
  ellipse(250, 250, 300, 300);
  
  // Darker blue ring around eye
  fill(50, 100, 200);
  ellipse(250, 250, 220, 220);
  
  // Inner eye (yellow iris)
  fill(255, 220, 50);
  ellipse(250, 250, 150, 150);
  
  // Pupil (black)
  fill(0);
  rect(230, 210, 30, 80, 10);
  
  // Eye highlight (white glare)
  fill(255, 255, 255, 180);
  ellipse(270, 220, 30, 30);
  
  // Hat (blue)
  fill(120,160,255);
  triangle(250,50,150,140,350,140);
  
  //eye highlight
  line(280,200,285,188);
  line(287,206,296,197);
  line(290,212,303,207);
}
