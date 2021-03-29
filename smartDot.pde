Population test;
PVector goal = new PVector(random(800),random(800));
PVector start = new PVector(random(800),random(800));
void setup() {
  size(800, 800);
  test = new Population(1000);
  
  //size(400,400);
}

void draw() {
  background(255);
  fill(255, 0, 0);
  
  ellipse(goal.x, goal.y, 10, 10);
  
  if (test.allDotsDead()) {
    test.calculateFitness();
    test.naturalSelection();
    test.mutateDemBabies();
    
  } else {
    //ellipse(test.gen,800-test.minStep,20,20);
    test.update();
    test.show();
  }
  
} 
