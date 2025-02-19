//Feb 5 2025

void setup() {
  size(1000,1000);
  textSize(16); // Added for coordinates
  noLoop();
}

void draw(){

 // Gradient background
 color topColor = color(#CB0E0E);
 color bottomColor = color(#760808);
 
 for (int y = 0; y < 700; y++) {
   float inter = map(y, 0, 700, 0, 1);
   color currentColor = lerpColor(topColor, bottomColor, inter);
    
   stroke(currentColor);
   line(0, y, 1000, y);
 }
 
 // Ground
 fill(#4B0808);
 noStroke();
 rect(0,700,1000,700);
 
fill(#FF8C00); // Orange hue
rect(100, 810, 10, 10);
rect(105, 805, 8, 8);
triangle(102, 820, 112, 820, 107, 805);

fill(#551A8B); // Deep purple tone
rect(300, 830, 12, 12);
rect(308, 825, 8, 8);
triangle(304, 840, 316, 840, 308, 825);


fill(#696969); // Medium gray
rect(450, 850, 10, 10);
rect(455, 845, 8, 8);
triangle(452, 860, 462, 860, 457, 845);


fill(#B22222); // Rich red
rect(750, 810, 10, 10);
rect(755, 805, 8, 8);
triangle(752, 820, 762, 820, 757, 805);


fill(#00CED1); // Turquoise tone
rect(850, 830, 12, 12);
rect(860, 825, 8, 8);
triangle(855, 840, 865, 840, 860, 825);


fill(#2E2B5F); // Deep slate color
rect(200, 860, 10, 10);
rect(205, 855, 8, 8);
triangle(202, 870, 212, 870, 207, 855);


fill(#9400D3); // Violet shade
rect(350, 880, 12, 12);
rect(360, 875, 8, 8);
triangle(355, 890, 365, 890, 360, 875);

 
fill(#00BFFF); // Bright blue
rect(500, 900, 10, 10);
rect(505, 895, 8, 8);
triangle(502, 910, 512, 910, 507, 895);


fill(#BA55D3); // Orchid hue
rect(650, 900, 10, 10);
rect(655, 895, 8, 8);
triangle(652, 910, 662, 910, 657, 895);


fill(#FFD700); // Classic gold
rect(800, 900, 10, 10);
rect(805, 895, 8, 8);
triangle(802, 910, 812, 910, 807, 895);
 

 fill(#3AA8C1); // Cyan color
 rect(150, 720, 12, 12);
 rect(160, 715, 8, 8);
 rect(155, 730, 10, 10);
 
 
 fill(#FFD700); // Gold color
 rect(300, 760, 10, 10);
 rect(310, 755, 8, 8);
 triangle(305, 765, 315, 765, 310, 755);
 

 fill(#8C8C8C); // Light gray
 rect(500, 740, 10, 8);
 rect(505, 735, 6, 6);
 rect(510, 745, 8, 8);
 

 fill(#1A1A1A); // Black
 rect(700, 780, 12, 12);
 rect(695, 775, 8, 8);
 rect(705, 785, 6, 6);
 
 
 fill(#FF0000); // Red
 rect(850, 750, 10, 10);
 rect(845, 745, 8, 8);
 rect(855, 755, 6, 6);
 

 fill(#50C878); // Emerald green
 rect(220, 800, 10, 10);
 rect(230, 795, 8, 8);
 triangle(225, 810, 235, 810, 230, 795);
 

 fill(#1F75FE); 
 rect(400, 820, 12, 12);
 rect(405, 815, 8, 8);
 rect(395, 830, 10, 10);
 
 
 fill(#C87F50); 
 rect(600, 840, 10, 10);
 rect(605, 835, 8, 8);
 triangle(600, 850, 610, 850, 605, 835);
 
  
 fill(#EFEFEF); 
 rect(800, 820, 10, 10);
 rect(805, 815, 8, 8);
 triangle(800, 830, 810, 830, 805, 815);
 

  fill(#7F5539);
  rect(650, 860, 12, 12);
  rect(660, 855, 8, 8);
  triangle(655, 870, 665, 870, 660, 855);
  

  fill(#FFB90F); 
  rect(500, 880, 10, 10);
  rect(510, 875, 8, 8);
  triangle(505, 890, 515, 890, 510, 875);
 
 // Mountains
 // 1st layer
 fill(#762D2D);
 triangle(0,454,230,280,434,532);
 quad(0,454,
      434,532,
      434,700,
      0,700);
 triangle(348,433,634,311,784,550);
 quad(348,433,
      784,550,
      784,700,
      348,700);
 triangle(784,550,1000,600,784,700);
 triangle(784,700,1000,700,1000,600);
 
 //2nd layer
 fill(#671F1F);
 triangle(0,533,230,409,352,537);
 triangle(352,537,630,411,783,636);
 quad(783,636,783,700,1000,700,1000,670);
 rect(0,533,714,167);
 quad(713,620,783,636,783,700,713,700);
 
 //3rd layer
 fill(#5A1414);
 triangle(0,621,228,531,351,594);
 triangle(351,594,629,522,785,700);
 quad(351,594,351,700,0,700,0,621);
 triangle(351,594,785,700,351,700);
 
 
      
 // Lava
 fill(#F57819);
 rect(50,0,30,300);
 quad(50,300,80,300,117,350,87,350);
 rect(87,350,30,400);
 quad(87,410,87,440,40,470,40,440);
 quad(40,440,40,470,20,470,20,450);
 rect(20,450,28,390);
 
 // Ghast 
 // Main body (front face)
 stroke(0); // Gray stroke for tears
 strokeWeight(2);
 fill(#c4c4c4);  // Grey
 quad(700, 100,  // Top-left
      900, 100,  // Top-right
      900, 300,  // Bottom-right
      700, 300); // Bottom-left
  
 // Top face perspective
 fill(255, 230, 230); // Light pinkish accent
 stroke(0);
 strokeWeight(2);
 quad(700, 100, 
      900, 100,
      850, 50, 
      650, 50);
  
 // Left side perspective
 stroke(0);
 strokeWeight(2);
 quad(650,50,
      700,100,
      700,300,
      650,250);
 
 // First leg left
 quad(650,250,
      650,350,
      665,365,
      665,265);
      
 // First leg front
 fill(#c4c4c4); // Grey
 quad(665,365,
      685,365,
      685,285,
      665,265);
      
 // Second leg left 
 fill(255, 230, 230);
 quad(730,300,
      730,400,
      750,420,
      750,300);
      
 // Second leg front
 fill(#c4c4c4);
 quad(750,420,
      780,420,
      780,300,
      750,300);
      
 // Third leg front
 quad(780,375,
      800,375,
      800,300,
      780,300);
      
 // Fourth leg left
 quad(825,300,
      825,400,
      845,400,
      845,300);
      
 // Fourth leg front
 fill(255);
 quad(825,400,
      815,385,
      815,300,
      825,300);
 
 // Fifth leg left
 fill(255, 230, 230);
 quad(860,300,
      860,400,
      870,420,
      870,300);
      
 // Fifth leg front
 fill(#c4c4c4);
 quad(870,300,
      870,420,
      900,420,
      900,300);
 
 // Face detail left
 stroke(#AFAFAF);
 strokeCap(SQUARE);
 strokeWeight(7);
 line(657,70,666,80);
 line(664,94,673,104);
 line(659,109,671,122);
 line(675,125,682,133);
 line(671,186,671,199);
 line(671,199,686,208);
 line(680,214,699,223);
 line(657,207,657,223);
 line(660,225,675,233);
 line(673,241,699,255);
 line(657,234,657,252);
 line(663,251,697,277);
 line(670,142,697,168);
 
 // Face detail front
 stroke(#393737);
 strokeWeight(10);
 strokeCap(SQUARE);
 line(737,145,780,145);
 line(825,145,868,145);
 stroke(#797979);
 line(780,145,790,145);
 line(737,145,727,145);
 line(750,114,765,114);
 line(750,125,735,125);
 line(840,114,855,114);
 line(855,125,870,125);
 line(825,145,815,145);
 line(868,145,878,145);
 strokeWeight(13);
 line(750,150,750,190);
 line(750,156,775,156);
 line(833,156,858,156);
 line(856,150,856,190);
 line(750,200,750,210);
 line(856,200,856,210);
 stroke(#393737);
 strokeWeight(10);
 line(780,240,830,240);

//mouse cords
fill(0);         // Set text color to black
textSize(16);    // Set text size for coordinates
text("X: " + mouseX + " Y: " + mouseY, mouseX + 10, mouseY - 10);
}

// ----- Mouse Moved Handler -----
// Add this function (if not already present) to update coordinates without leaving a trail:
void mouseMoved() {
  redraw();
}
