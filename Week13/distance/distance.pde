import SimpleOpenNI.*;
SimpleOpenNI kinect;

void setup(){
  size(640, 480);
  kinect = new SimpleOpenNI(this);
  kinect.enableDepth();
  // Turn on object tracking
  kinect.enableUser();
  
  stroke(255, 0, 0);
  strokeWeight(5);
  textSize(20);
}

void draw(){
  kinect.update();
  PImage depth = kinect.depthImage();
  image(depth, 0, 0);
  
  int[] userList = kinect.getUsers();

  for(int i=0; i<userList.length; i++){
    if(kinect.isTrackingSkeleton(userList[i])){
        PVector leftHand = new PVector();
        PVector rightHand = new PVector();
        kinect.getJointPositionSkeleton(userList[i], SimpleOpenNI.SKEL_LEFT_HAND, leftHand);
        kinect.getJointPositionSkeleton(userList[i], SimpleOpenNI.SKEL_RIGHT_HAND, rightHand);
        PVector differenceVector = PVector.sub(leftHand, rightHand);
        float magnitude = differenceVector.mag();
        differenceVector.normalize();
        
        stroke(differenceVector.x * 255,
               differenceVector.y * 255,
               differenceVector.z * 255);
        strokeWeight(map(magnitude, 100, 1200, 1, 20));
        
        kinect.drawLimb(userList[i], SimpleOpenNI.SKEL_LEFT_HAND, SimpleOpenNI.SKEL_RIGHT_HAND);
        
        pushMatrix();
        // Fill color based on the direction of the vector: (x, y, z) --> (r, g, b)
        fill(abs(differenceVector.x) * 255, abs(differenceVector.y) * 255, abs(differenceVector.z) * 255);
        text("m: " + magnitude, 10, 50); // Display at (10, 50)
        popMatrix();
    }  
  }
}

void onNewUser(SimpleOpenNI curKinect, int userId) {
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


