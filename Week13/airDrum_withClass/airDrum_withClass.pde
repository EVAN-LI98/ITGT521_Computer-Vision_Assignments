import processing.opengl.*;
import SimpleOpenNI.*;
import ddf.minim.*;

SimpleOpenNI kinect;
float rotation = 0;
Minim minim;
AudioSnippet kick;
AudioSnippet clap;
AudioSnippet hat;

Hotpoint clapTrigger;
Hotpoint kickTrigger;
Hotpoint hatTrigger;
float s = 1;

void setup(){
  size(1024, 768, OPENGL);
  kinect = new SimpleOpenNI(this);
  kinect.enableDepth();
  minim = new Minim(this);
  clap = minim.loadSnippet("clap.wav");
  kick = minim.loadSnippet("kick.wav");
  hat = minim.loadSnippet("hat.wav"); 
  clapTrigger = new Hotpoint(200, 0, 600, 150);
  kickTrigger = new Hotpoint(-200, 0, 600, 150);
  hatTrigger = new Hotpoint(-400, 0, 600, 150);
  clapTrigger.setColor(255, 0, 0);
  kickTrigger.setColor(0, 255, 0);
  hatTrigger.setColor(0, 0, 255);
  clapTrigger.setThreshold(20);
  kickTrigger.setThreshold(20);
  hatTrigger.setThreshold(20);
  clapTrigger.setMaxPoints(1000);
  kickTrigger.setMaxPoints(1000);
  hatTrigger.setMaxPoints(1000);
}

void draw() {
  background(0);
  kinect.update();
  translate(width/2, height/2, -1000);
  rotateX(radians(180));

  translate(0, 0, 1400);
  rotateY(radians(map(mouseX, 0, width, -180, 180)));
  
  translate(0, 0, s*-1000);
  scale(s);
  stroke(255);

  PVector[] depthPoints = kinect.depthMapRealWorld();
  for (int i = 0; i < depthPoints.length; i+=10){
      PVector currentPoint = depthPoints[i];
      kickTrigger.check(currentPoint);
      clapTrigger.check(currentPoint);
      hatTrigger.check(currentPoint);
      point(currentPoint.x, currentPoint.y, currentPoint.z);
  }
  println(clapTrigger.pointsIncluded);
  if(clapTrigger.isHit()) {
      clap.play();
  }
  if(!clap.isPlaying()) {
      clap.rewind();
  }
  if (kickTrigger.isHit()) {
      kick.play();
  }
  if(!kick.isPlaying()) {
      kick.rewind();
  }
  if (hatTrigger.isHit()) {
      hat.play();
  }
  if(!hat.isPlaying()) {
      hat.rewind();
  }

  clapTrigger.draw();
  clapTrigger.clear();
  kickTrigger.draw(); 
  kickTrigger.clear();
  hatTrigger.draw(); 
  hatTrigger.clear();
}

void stop(){
  kick.close();
  clap.close();
  hat.close();
  minim.stop();
  super.stop();
}

void keyPressed(){
  if (keyCode == 38) {
      s = s + 0.01;
  }
  if (keyCode == 40) {
      s = s - 0.01;
  }
}


