//Declare your variables here
// so try declaring one Particle first, then instantiate it in setup, and use move and show in draw()
Normal[] normal = new Normal[150];
Oddball[] oddball = new Oddball[2];
Jumbo[] jumbo = new Jumbo[1];
void setup() {
	//your code here
  size(800, 800);
  background(0);
  for (int i = 0; i < normal.length; i++){
    normal[i] = new Normal((double)(Math.random() * 800), (double)(Math.random() * 800), (double)(Math.random() * 360), (double)((Math.random() - 2) * 4), (int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255));
  }
  for (int i = 0; i < oddball.length; i++){
    oddball[i] = new Oddball((double)(Math.random() * 800), (double)(Math.random() * 800), (double)(Math.random() * 360), (double)((Math.random() - 2) * 4), (int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255));
  }
  for (int i = 0; i < jumbo.length; i++){
    jumbo[i] = new Jumbo((double)(Math.random() * 800), (double)(Math.random() * 800), (double)(Math.random() * 360), (double)((Math.random() - 2) * 4), (int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255));
  }
} //end of setup
 

void draw() {
	//your code here
  fill(200, 25);
    rect(0, 0, width, height);
  for(int i = 0; i < normal.length; i++){
    normal[i].show();
  }
  for(int i = 0; i < normal.length; i++){
    normal[i].move();
  }
  for(int i = 0; i < oddball.length; i++){
    oddball[i].show();
  }
  for(int i = 0; i < oddball.length; i++){
    oddball[i].move();
  }
  for(int i = 0; i < jumbo.length; i++){
    jumbo[i].show();
    jumbo[i].move();
  }

} //end of draw
