// Russell Gordon (change to your name)

// Physics 101...
//
// Speed is the rate of change of location.
// e.g.: location = location + speed
//
// Acceleration increases (or decreases) speed
// Gravity (and other forces) can change acceleration.
// e.g.: acceleration = acceleration + gravity
//       speed = speed + acceleration

// Global variables (can be used in any function below)
float x = 250;          // horizontal position of ball
float y = 100;          // vertical position of ball
float diameter = 50;    // width and height of ball  
float speed = 1;        // ball will start out moving at one pixel per frame
float acceleration = 0; // ball will start with no acceleration
float gravity = 0.005;    // gravity factor

// This runs once
void setup() {

  // Make the canvas
  size(500, 500);

  // Use HSB colour
  colorMode(HSB, 360, 100, 100);

  // Solid black fill
  fill(0, 0, 0);
}

// This runs repeatedly
void draw() {

  // Clear the background
  background(0, 0, 100); // white

  // Change acceleration
  acceleration = acceleration + gravity;

  // Make the ball accelerate
  speed = speed + acceleration;

  // Make the ball bounce
  if (y > height) {
    speed = speed * -0.85;
  }
  
  // Make the ball move according to it's speed
  y = y + speed;

  // Draw the current location of the ball
  ellipse(x, y, diameter, diameter);
}

