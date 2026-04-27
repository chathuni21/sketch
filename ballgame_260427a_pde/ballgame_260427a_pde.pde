float ballX, ballY;
float speed = 3;

float paddleX;
float paddleWidth = 80;
float paddleHeight = 10;

int score = 0;
boolean gameOver = false;


void setup() {
  size(500, 600);
  ballX = random(width);
  ballY = 0;
  }

void draw() {
  background(30);
  
  if (!gameOver) {
  
  // Ball
  fill(255, 100, 100);
  ellipse(ballX, ballY, 20, 20);
  ballY += speed;
  
  
  // Paddle (player)
  paddleX = mouseX;
  fill(100, 200, 255);
  rect(paddleX - paddleWidth/2, height - 40, paddleWidth, paddleHeight,15);
  
  // Catch check
  if (ballY > height - 50 &&
  ballX > paddleX - paddleWidth/2 &&
  ballX < paddleX + paddleWidth/2) {
  
  score++;
  ballY = 0;
  ballX = random(width);
  speed += 0.5; // make game harder
  }
  
  // Miss check
  if (ballY > height) {
  gameOver = true;
  }
  
  // Score
  fill(255);
  textSize(20);
  text("Score: " + score, 10, 30);
  
  } else {
  fill(255);
  textSize(30);
  textAlign(CENTER);
  text("Game Over", width/2, height/2);
  text("Score: " + score, width/2, height/2 + 40);
  text("Press R to Restart", width/2, height/2 + 80);
  }
  
  //boarders
  noFill();
  stroke(255);
  strokeWeight(1);
  rect(0,0,width,height);
  }

void keyPressed() {
  if (key == 'r' || key == 'R') {
  // Reset game
  score = 0;
  speed = 3;
  ballY = 0;
  ballX = random(width);
  gameOver = false;
  }
  }
