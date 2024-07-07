PImage img;
PImage[] sapi = new PImage[24];
int sapiX = 800; 
float sapiScale = 1; 
float sapiSpeed = 1; 
float sapiFrameCounter = 0; 

void setup() {
  size(1300, 800);
  smooth();
  img = loadImage("fortres.jpg");

  for (int i = 0; i < 24; i++) {
    sapi[i] = loadImage("sapi (" + (i + 1) + ").gif");
  }
}

void draw() {
  image(img, 0, 0, width, height);
  
  pushMatrix();
  scale(sapiScale);
  image(sapi[(int)sapiFrameCounter % 24], sapiX / sapiScale, 400 / sapiScale); 
  popMatrix();
  
  sapiFrameCounter += sapiSpeed;
}
