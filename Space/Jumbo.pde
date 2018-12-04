public class Jumbo extends Normal{
  public Jumbo(double x_pos, double y_pos, double Angle, double Speed, int c1, int c2, int c3){
    super(x_pos, y_pos, Angle, Speed, c1, c2, c3);
  }
  
  void show(){
    pushMatrix();
    translate((float)x_pos, (float)y_pos);
    fill(clr1, clr2, clr3);
    ellipse(0, 0, 80, -80);
    popMatrix();
  }
}
