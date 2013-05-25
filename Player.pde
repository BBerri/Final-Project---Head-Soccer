class Player {
  float x, y, w, h, xspeed, yspeed;
  float gravity;

  Player(float cx, float cy) {
    x = cx;
    y = cy;
    w = width/20;
    h = height/10;
    xspeed = 0;
    yspeed = -10;
    gravity = .2;
  }

  void display() {



    rect(x, y, w, h);
  }

  void move() {

    yspeed += gravity;
    x += xspeed;
    y += yspeed;
  }
}

