class Normal {
  double x_pos;
  double y_pos;
  double Angle;
  double Speed;
  int clr1;
  int clr2;
  int clr3;
  int xDirection = 1;
  int yDirection = 1;
  
  public Normal(double x_pos, double y_pos, double Angle, double Speed, int c1, int c2, int c3){
    this.x_pos = x_pos;
    this.y_pos = y_pos;
    this.Angle = Angle;
    this.Speed = Speed;
    clr1 = c1;
    clr2 = c2;
    clr3 = c3;
  }
  
  void move(){
    if(x_pos >= 800 || x_pos <= 0){
      xDirection = xDirection * -1;
    }
    if(y_pos >= 800 || y_pos <= 0){
      yDirection = yDirection * -1;
    }
    if(!mousePressed){
       x_pos = x_pos + ((Math.cos(Angle) * Speed) * xDirection);
       y_pos = y_pos + ((Math.sin(Angle) * Speed) * yDirection);
    }else if(mousePressed){
      x_pos = mouseX - (int)((Math.random()) * 20);
      y_pos = mouseY - (int)((Math.random()) * 20);
    }
  } 
  void show(){
    pushMatrix();
    translate((float)x_pos, (float)y_pos);
    fill(clr1, clr2, clr3);
    ellipse(0, 0, 10, -10);
    popMatrix();
  }  
}
