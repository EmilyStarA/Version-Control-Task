class Particle {

  PVector position;
  PVector velocity;
  PVector acceleration;
  int particleColour;
 
  Particle(float x, float y) {
    position = new PVector(x, y);
    velocity = new PVector(random(-2, 2), random(-2, 2));
    acceleration = new PVector(0, 0.5);
    particleColour = color(random(0, 255), random(0, 255), random(0, 255));
  }

  void update() {
    velocity.add(acceleration);
    position.add(velocity);
  }

  void display() {
    fill(particleColour);
    ellipse(position.x, position.y, 10, 10);
  }
}
