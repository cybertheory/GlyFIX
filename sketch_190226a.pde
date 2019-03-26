void setup() {  // setup() runs once
  size(1920, 1080);
  frameRate(60);
}
int width = 1920;
int height = 1080;
ball b = new ball();
paddle pad = new paddle(50, height-(height-10));
paddle pad2 = new paddle(width-50, height-(height-10));


void draw() {  // draw() loops forever, until stopped
  clear();
  pad.drawRect(false);
  pad2.drawRect(true);
  b.drawBall();
  b.updateBall(pad, pad2);
  //pad2.updatePaddle(b);
  b.bounce(pad);
  b.bounce(pad2);
  textSize(35);
  text(str(pad2.getScore()), (width/2 - 41), height-(height-50));
  text(str(pad.getScore()), (width/2 + 40), height-(height-50));
}
