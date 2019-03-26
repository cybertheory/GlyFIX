
class paddle {

  float yPos ;
  float xPos ;

  float yINT = 10 ;
  float dist = 1080-this.yPos;
  int score = 0; 
  float t = 0;
  int getScore()
  {
    return score;
  }
  void setScore(int v)
  {
    score = v;
  }
  paddle( int xPos, int yPos) {
    this.yPos = yPos;
    this.xPos = xPos;
  }

  void updatePaddle(ball b) {
   t = floor(random(0,100));
   if(t<=100 && t>20)
   {
    this.yPos = b.getYPOS()-50;
   }
    this.yINT = 10;
  }

  void drawRect(boolean pad) {
    rect(xPos, yPos, 10, 100);
    keyPressed(pad);
    if (yPos < 0 || yPos > height-100)
    {
      yINT = 0;
      if (yPos < 0)
        yPos += 1;
      if (yPos > height-100)
        yPos -= 1;
    } else
    {
      yINT = 10;
    }
  }

  float getXPOS()
  {
    return xPos;
  }
  float getYPOS()
  {
    return yPos;
  }

  void keyPressed(boolean pad) {
    if (keyPressed && !pad) {
      if (key == CODED) {
        if (keyCode == UP ) {
          this.yPos -= yINT;
        } else if (keyCode == DOWN ) {
          this.yPos += yINT;
        }
      }
    } else
    {
      this.yPos += 0;
    }
    
     if (keyPressed && pad) {
        if (key == 'w' ) {
          this.yPos -= yINT;
        } else if (key == 's' ) {
          this.yPos += yINT;
        }
      }
     else
    {
      this.yPos += 0;
    }
  }
}
