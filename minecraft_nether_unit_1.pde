//Feb 5 2025

void setup() {
  size(1000,1000);
  noLoop();
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
} 
}
