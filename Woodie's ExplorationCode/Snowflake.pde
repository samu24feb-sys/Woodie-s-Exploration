class Snowflake {
  float x, y, diameter, speed;

  Snowflake() {
    reset();
  }

  void display() {
    noStroke();
    fill(255);
    ellipse(x, y, diameter, diameter);
  }

  void reset() {
    y = random(-50, -10); // Reset to a position above the canvas
    x = random(width);
    diameter = random(5, 15);
    speed = random(1, 3);
  }
}
