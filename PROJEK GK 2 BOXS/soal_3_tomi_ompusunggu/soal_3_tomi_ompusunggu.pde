float rotX = 0;
float rotY = 0;
float rotZ = 0;

void setup() {
  size(800, 600, P3D);
  smooth(8);
}

void draw() {
  background(0);
  lights();
  
  translate(width/2, height/2, 0);
  
  rotateX(rotX);
  rotateY(rotY);
  rotateZ(rotZ);
  
  // Kubus utama
  pushMatrix();
  fill(255, 100, 100);
  box(200);
  
  // Bola-bola yang berputar
  for (int i = 0; i < 8; i++) {
    pushMatrix();
    rotateY(TWO_PI * i / 8 + frameCount * 0.02);
    translate(300, 0, 0);
    fill(100, 255, 255);
    sphere(30);
    popMatrix();
  }
  
  popMatrix();
  
  // Piramida yang berputar
  pushMatrix();
  translate(0, 200, 0);
  rotateX(frameCount * 0.03);
  fill(255, 255, 100);
  beginShape(TRIANGLES);
  vertex(-50, 50, -50);
  vertex(50, 50, -50);
  vertex(0, -50, 0);
  
  vertex(50, 50, -50);
  vertex(50, 50, 50);
  vertex(0, -50, 0);
  
  vertex(50, 50, 50);
  vertex(-50, 50, 50);
  vertex(0, -50, 0);
  
  vertex(-50, 50, 50);
  vertex(-50, 50, -50);
  vertex(0, -50, 0);
  endShape();
  popMatrix();
  
  rotX += 0.01;
  rotY += 0.02;
  rotZ += 0.005;
}
