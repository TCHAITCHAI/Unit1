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
 fill(#c4c4c4); // White body
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
