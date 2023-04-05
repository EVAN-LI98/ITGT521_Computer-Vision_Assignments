import SimpleOpenNI.*;
SimpleOpenNI kinect;

int closestValue;
int closestX;
int closestY;
int previousX;
int previousY;
float lastX;
float lastY;
float imageX;
float imageY;
boolean imageMoving;
PImage image;

void setup() {
  size(640, 480);
  kinect = new SimpleOpenNI(this);
  kinect.enableDepth();
  imageMoving = false;
  image = loadImage("C:/Users/78089/anaconda3/pics/Apple_1.png");
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
          if(currentDepthValue > 305 && currentDepthValue < 1525 
          && currentDepthValue < closestValue){
                closestValue = currentDepthValue;
                closestX = x;
                closestY = y;
          }
      }
  }
  
  float interpolatedX = lerp(lastX, closestX, 0.3f); 
  float interpolatedY = lerp(lastY, closestY, 0.3f);
  background(kinect.depthImage());
  if(imageMoving){
      lastX = interpolatedX;
      lastY = interpolatedY;
  }
 
   image(image,imageX,imageY);
   lastX = interpolatedX;
   lastY = interpolatedY;
}
void mousePressed(){
  imageMoving = !imageMoving;
}
