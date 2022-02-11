int a = 255;
int b = 255;
int c = 255;
int d;
int e;
int f;
public void setup()
{
  size(600, 600);
  rectMode(CENTER);
}
public void draw()
{
  background(0);
  stroke(a, b, c);
  fill(d, e, f);
  fractal(300, 300, 300);
}
public void fractal(int x, int y, int z)
{
  circle(x, y, z);
  if (z > 10)
  {
    //fill((int)(Math.random()*255), (int)(Math.random()*255),(int)(Math.random()*255));
    fractal(x-z/2, y, z/2);
    fractal(x+z/2, y, z/2);
    fractal(x, y+z/2, z/2);
    fractal(x, y-z/2, z/2);
    fractal(x, y-z/2, z/2);
    fractal(x, y+z/2, z/2);
  }
}
public void mousePressed()
{
  if (mouseButton == LEFT)
  {
    a = (int)(Math.random()*256);
    b = (int)(Math.random()*256);
    c = (int)(Math.random()*256);
    redraw();
  } else if (mouseButton == RIGHT)
  {
    d = (int)(Math.random()*256);
    e = (int)(Math.random()*256);
    f = (int)(Math.random()*256);
    redraw();
  }
}
