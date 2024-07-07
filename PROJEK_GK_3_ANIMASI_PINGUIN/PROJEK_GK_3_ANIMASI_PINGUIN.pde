PImage img;
PImage[] pinguin = new PImage[24];
int pinguinX = 800; 
float pinguinScale = 0.7; 
float pinguinSpeed = 1; 
float pinguinFrameCounter = 0; 

void setup() {
  size(1300, 800);
  smooth();
  img = loadImage("bg.png");

  for (int i = 0; i < 24; i++) {
    pinguin[i] = loadImage("pinguin (" + (i + 1) + ").gif");
  }
}

void draw() {
  image(img, 0, 0, width, height);
  
  pushMatrix();
  scale(pinguinScale);
  image(pinguin[(int)pinguinFrameCounter % 24], pinguinX / pinguinScale, 450 / pinguinScale); 
  popMatrix();
  
  pinguinFrameCounter += pinguinSpeed;
  
  pinguinX -= 25;
  if (pinguinX < -1300) {
    pinguinX = width;
  }
}
