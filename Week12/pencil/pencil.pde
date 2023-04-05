import SimpleOpenNI.*;
SimpleOpenNI kinect;

int closestValue;
int closestX;
int closestY;
int previousX;
int previousY;
float lastX;
float lastY;

void setup() {
  size(640, 480);
  kinect = new SimpleOpenNI(this);
  kinect.enableDepth();
  background(0);
}

void draw() {
  closestValue = 8000;
  kinect.update();
  int[] depthValues = kinect.depthMap();
 
  for(int y = 0; y < 480; y++){
      for(int x = 0; x < 640; x++){
          int i = x + y * 640;
          int currentDepthValue = depthValues[i];
          if(currentDepthValue > 305 && currentDepthValue < 1525 && currentDepthValue < closestValue){
                closestValue = currentDepthValue;
                closestX = x;
                closestY = y;
          }
      }
  }
  
  float interpolatedX = lerp(lastX, closestX, 0.1f); 
  float interpolatedY = lerp(lastY, closestY, 0.1f);
  stroke(255,0,0);
  strokeWeight(3);
  line(lastX, lastY, interpolatedX, interpolatedY);
  lastX = interpolatedX;
  lastY = interpolatedY;
}

void mousePressed(){
  save("drawing.png");
  background(0);
}
