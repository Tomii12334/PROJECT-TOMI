void setup() {
  size(400, 300);
  background(200, 230, 255);
  noLoop();
}

void draw() {
  drawFish(200, 150);
}

void drawFish(float x, float y) {
  pushMatrix();
  translate(x, y);
  
  // Tubuh ikan
  noStroke();
  fill(255, 150, 0);
  ellipse(0, 0, 200, 100);
  
  // Ekor ikan
  fill(255, 120, 0);
  triangle(80, 0, 140, -40, 140, 40);
  
  // Mata ikan
  fill(255);
  ellipse(-60, -15, 25, 25);
  fill(0);
  ellipse(-60, -15, 15, 15);
  
  // Sirip atas
  fill(255, 100, 0);
  beginShape();
  vertex(-20, -50);
  bezierVertex(0, -70, 40, -70, 60, -50);
  endShape(CLOSE);
  
  // Sirip bawah
  beginShape();
  vertex(0, 30);
  bezierVertex(20, 50, 60, 50, 80, 30);
  endShape(CLOSE);
  
  // Garis-garis pada tubuh ikan
  stroke(255, 100, 0);
  strokeWeight(2);
  noFill();
  for (int i = -30; i < 60; i += 15) {
    arc(0, 0, 180, 80, radians(180+i), radians(360+i));
  }
  
  popMatrix();
}
