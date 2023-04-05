import SimpleOpenNI.*;
SimpleOpenNI kinect;

boolean tracking = false;
int[] userMap;
PImage backgroundImage;

void setup() {
  size(640, 480);
  //size(1024, 768);
  kinect = new SimpleOpenNI(this);
  kinect.enableDepth();
  kinect.enableRGB(); 
  kinect.enableUser();
  // Turn on depth-color alignment
  kinect.alternativeViewPointDepthToImage();
  backgroundImage = loadImage("pool.png");
}

void draw() {
  image(backgroundImage, 0, 0);
  kinect.update();
  if (tracking) {
    PImage rgbImage = kinect.rgbImage(); 
    rgbImage.loadPixels();
    loadPixels();
    userMap = kinect.userMap();
    for (int i =0; i < userMap.length; i++) {
        // If the pixel is part of the user
        if (userMap[i] != 0) {
            // Set the sketch pixel to the color pixel
            pixels[i] = rgbImage.pixels[i];
        }
    }
    updatePixels();
  }
}

void onNewUser(SimpleOpenNI curKinect, int userId) {
  tracking = true;
  println("onNewUser - userId: " + userId);
  println("\t start tracking skeleton");
  
  kinect.startTrackingSkeleton(userId);
}

void onLostUser(SimpleOpenNI curKinect,int userId) {
  println("onLostUser - userId: " + userId);
}

void onVisibleUser(SimpleOpenNI curKinect,int userId) {
  println("onVisibleUser - userId: " + userId);
}
