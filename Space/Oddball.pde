public class Oddball extends Normal{  
  public Oddball(double x_pos, double y_pos, double Angle, double Speed, int c1, int c2, int c3){
    super(x_pos, y_pos, Angle, Speed, c1, c2, c3);
  }
  
  void move(){
    if(x_pos >= 800 || x_pos <= 0){
      xDirection = xDirection * -1;
    }
    if(y_pos >= 800 || y_pos <= 0){
      yDirection = yDirection * -1;
    }
    
    if(!mousePressed){
       x_pos = x_pos + ((Math.cos(Angle) * (Speed / 2)) * xDirection) + (((Math.random() * 10) - 5));
       y_pos = y_pos + ((Math.sin(Angle) * (Speed / 2)) * yDirection) + (((Math.random() * 10) - 5));
    }else if(mousePressed){
      x_pos = mouseX - (int)(((Math.random()) * 20) + 10);
      y_pos = mouseY - (int)(((Math.random()) * 20) + 10);
    }
  }
  
  void show(){
    pushMatrix();
    translate((float)x_pos, (float)y_pos);
    fill(clr1, clr2, clr3);
    triangle(-30.0, 0, 30.0, 0, 0, 25);
    popMatrix();
  }
}
