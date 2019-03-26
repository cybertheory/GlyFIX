class ball {
  float xCirc = 300;
  float yCirc = 300;  
  float xCircINT = 5;
  float yCircINT = 5;   
  int id = 0;

  void drawBall() {
    rect(xCirc, yCirc, 30, 30);
  }

  void Score()
  {
    if (xCirc <= width/2)
    {
      id = 1;
    } else if (xCirc > width/2) {
      id=2;
    }
  } 
  void updateBall(paddle p, paddle p2)
  {
    this.xCirc += xCircINT;
    this.yCirc += yCircINT;
    Score();
    if (yCirc <= 0 || yCirc >= height)
    {
      this.reflect();
    }

    if (xCirc < 0 || xCirc > width)
    {

      if (id == 1)
      {
        p.setScore(p.getScore() + 1 );
      }
      if (id == 2)
      {
        p2.setScore(p2.getScore() + 1 );
      }
      if (yCircINT < 0)
      {
        yCircINT-=.1;
      }
      if (xCircINT < 0)
      {
        xCircINT -=.1;
      }
      if (yCircINT > 0)
      {
        yCircINT+=.1;
      }
      if (xCircINT > 0)
      {
        xCircINT +=.1;
      }
      this.xCirc = random(300, 1920-300);
      this.yCirc = random(300, 1080-300);
    }
  }

  float getYPOS()
  {
    return yCirc;
  }
  void bounce(paddle p)//change from xpos to getter from paddle
  {
    if (this.getXPOS() <= p.getXPOS()+15 && this.getXPOS()+30 >= p.getXPOS()-5)
    {

      if (this.getYPOS() <= p.getYPOS()+105 && this.getYPOS()+30 >= p.getYPOS()-5)
      {
        this.reflectBall();
      }
    }
  }

  float getXPOS()
  {
    return xCirc;
  }
  void reflect()
  { 
    if (yCirc <= 0 || yCirc >= height )
    {
      this.xCircINT *= 1;
      this.yCircINT *= -1;
    }
  }

  void reflectBall()
  { 

    this.xCircINT *= -1;
    this.yCircINT *= 1;
  }
}
