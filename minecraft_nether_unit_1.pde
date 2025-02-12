//Feb 5 2025

void setup() {
  size(1000,1000);
  textSize(16); // Added for coordinates
}

void draw(){
 
 //gradiant brackgournd color
 color topColor = color(#CB0E0E);
 color bottomColor = color(#760808);
 
 for (int y = 0; y < 700; y++) {
   float inter = map(y, 0, 700, 0, 1);
   color currentColor = lerpColor(topColor, bottomColor, inter);
    
   stroke(currentColor);
   line(0, y, 1000, y);
 }
 
 //ground
 fill(#4B0808);
 noStroke();
 rect(0,700,1000,700);
 fill(#F57819);
 
 //lava
 rect(50,0,30,300);
 quad(50,300,80,300,117,350,87,350);
 rect(87,350,30,400);
 quad(87,410,87,440,40,470,40,440);
 quad(40,440,40,470,20,470,20,450);
 rect(20,450,28,390);
 
 //ghost 
 // Main body (front face)
 stroke(0); // Gray stroke for tears
 strokeWeight(2);
 fill(#c4c4c4);  //Grey
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
 
 //first leg left
 quad(650,250,
      650,350,
      665,365,
      665,265);
      
//first leg front
 fill(#c4c4c4); //Grey
 quad(665,365,
      685,365,
      685,285,
      665,265);
      
//second leg left 
 fill(255, 230, 230);
 quad(730,300,
      730,400,
      750,420,
      750,300);
      
//second leg front
 fill(#c4c4c4);
 quad(750,420,
      780,420,
      780,300,
      750,300);
      
//third leg front
 quad(780,375,
      800,375,
      800,300,
      780,300);
      
//fourth leg left
 quad(825,300,
      825,400,
      845,400,
      845,300);
      
//fourth leg front
 fill(255);
 quad(825,400,
      815,385,
      815,300,
      825,300);

//fifth leg left
 fill(255, 230, 230);
 quad(860,300,
      860,400,
      870,420,
      870,300);
      
      
   
//fifth leg fornt
 fill(#c4c4c4);
 quad(870,300,
      870,420,
      900,420,
      900,300);

//face detail left
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
 
//face detail front
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
 
 
      
     
      
      

 // ====== COORDINATE DISPLAY ======
 noStroke();
 fill(255, 200); // Semi-transparent white
 float textW = textWidth("X:0000 Y:0000") + 10;
 float textH = 30;
 float xPos = constrain(mouseX + 20, 10, width - textW - 10);
 float yPos = constrain(mouseY + 20, 10, height - textH - 10);
 fill(0);
 text("X:" + mouseX + " Y:" + mouseY, xPos + 5, yPos + 5);
}
