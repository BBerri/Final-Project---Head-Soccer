int iWidth = int(1280*.9);
int iHeight = int(1024*.7);
Player player1;
public boolean resize;
int pw, ph;              //previous width and height value (use to detect resize)



void setup() {
  size(iWidth, iHeight);
  if (frame != null) {
    frame.setResizable(true);
  }
  frameRate(60);
  pw = iWidth;
  ph = iHeight;
  

  player1 = new Player(iWidth*.5, iHeight*.8);

}


void draw() {
  background(0);
  player1.display();
  player1.move();



  ////////Check if window was resized///////
  if (pw != width || ph != height) {
    resize = true;
    pw = width;
    ph = height;
  }
  else {
    resize = false;
  }
}

