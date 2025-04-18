PImage phineas;
void setup() {
  size (800,400);
  phineas=
  loadImage ("phineas.jpg");
  background(0);
  image(phineas,0,0,400,400);

 fill(255);
  ellipse(560, 120, 50, 70);
  fill(0);
  ellipse(560, 120, 15, 15);
  
  fill(255, 220, 150);
  triangle(417, 107, 736, 71, 636, 215);

 fill(255);
  ellipse(595, 120, 50, 70);
  fill(0);
  ellipse(595, 120, 15, 15);
}
void draw() {
println ("eje X: ");
println (mouseX);
println ("eje Y: ");
println (mouseY);
}
