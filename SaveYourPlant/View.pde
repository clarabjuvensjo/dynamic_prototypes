void draw() {
  background = loadImage ("bakgrundapp.png");
  image(background, 0, 0, 375, 667);
  
  if(mouseX < 55 && !harSagtVattna) {
  water = new SoundFile(this, "vattna");
  water.play();
  harSagtVattna = true;
  }
  
  if(mouseX > 55) {
    harSagtVattna = false;
  }
  
  float dx = map(mouseX, 0, width, 0, 0.2);
  PVector water = new PVector(dx, 0);

  drawVector(water, new PVector(width/5, 50, 0), 1750);
  
  fill(30);
  text("Vattennivå: " + int(dx * waterLevel) + " %", width/5, 595);
  text("(Vattenbalansen simuleras genom musen!)", width/5, 580); 
  
  drawFlower(dx);
  
}

void drawFlower(float dx) {
  fill(0*dx*5, 0*dx*5, 255*dx*5, 255*dx*5);
  strokeWeight(1);
  
  rect(15,50,40,30); 
  line(35,50,35,30); 
  ellipse(35,28,7,7); 
  ellipse(28,35,15,15); 
  ellipse(43,35,15,15); 
  ellipse(28,21,15,15); 
  ellipse(43,21,15,15); 
  
}

void drawVector(PVector v, PVector loc, float scayl) {
  pushMatrix();
  translate(loc.x, loc.y);
  stroke(0);
  strokeWeight(20);
  rotate(v.heading());
  float len = v.mag()*scayl;
  line(-60, 500, len-60, 500);
  popMatrix();
}
