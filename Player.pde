class Player {
  float x, y, w, h, xspeed, yspeed;
  float gravity;

  Player(float cx, float cy) {
    x = cx;
    y = cy;
    w = width/20;
    h = height/10;
    xspeed = 0;
    yspeed = 0;
    gravity = 0;
  }

  void display() {
    rect(x, y, w, h);
    update();
  }

  void move() {

    yspeed += gravity;
    x += xspeed;
    y += yspeed;
  }
  
  
  void update() {
    if (resize == true) {
      x = width/2;
      y = height * .8;
      w = width/20;
      h = height/10;
    }
  }
}

