// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

class Particle extends VerletParticle2D {
  float diameter; 
  
  Particle(Vec2D pos) {
    super(pos);
    diameter= 50;
    physics.addParticle(this);
    physics.addBehavior(new AttractionBehavior(this, 100, 2));
  }

  void display() {
    noStroke();
    fill(0,0);
    ellipse(x, y, diameter, diameter);
  }
}
