  int x;
  int y;
  PImage trees;
  PImage apple_img;
  Apple apple, apple1, apple2, apple3, apple4, apple5, apple6, apple7, apple8;
  Tree treeLeft, treeRight;
  float apple_x;
  float apple_y;
  int xSpeed = 10;
  float ax;
  int tree1X, tree1Y, tree2X, tree2Y;
  
  void setup() { //körs en gång när programmet skapas, där skapar vi saker som att ex. hämta från nätet, eller från hårdisken
    size(1280, 720); //fullScreen();
    trees = loadImage("Trees.png");
    apple_img = loadImage("apple2.png");
    
    apple_x = 150;
    apple_y = 100;
    
    tree1X = 135;
    tree1Y = 50;
    tree2X = 715;
    tree2Y = 50;

    treeLeft = new Tree (tree1X, tree1Y);
    treeRight = new Tree (tree2X, tree2Y);
    
    apple = new Apple (apple_img, 20, 20, treeLeft, treeRight, 0);
    apple1 = new Apple (apple_img, 220, 20, treeLeft, treeRight, 1);
    apple2 = new Apple (apple_img, 110, 20, treeLeft, treeRight, 0);
    apple3 = new Apple (apple_img, 310, 20, treeLeft, treeRight, 1);
    apple4 = new Apple (apple_img, 20, 110, treeLeft, treeRight, 0);
    apple5 = new Apple (apple_img, 220, 110, treeLeft, treeRight, 1);
    apple6 = new Apple (apple_img, 110, 110, treeLeft, treeRight, 0);
    apple7 = new Apple (apple_img, 310, 110, treeLeft, treeRight, 1);
    apple8 = new Apple (apple_img, 65, 200, treeLeft, treeRight, 0);
    
  }
  
    void draw() { //denna metod anropas 60gr/sek. Här gör vi grafik exempelvis
    image(trees, x-3, y, 1280, 720);
    apple.display();
    apple1.display();
    apple2.display();
    apple3.display();
    apple4.display();
    apple5.display();
    apple6.display();
    apple7.display();
    apple8.display();
    textSize(40);
    
    text(treeRight.getAmountOfApples(), 920, 500);
    text(treeLeft.getAmountOfApples(), 345, 500);
    
    
    if(apple.isSelected(mouseX, mouseY)) {
      ax = apple.getPosX();
      ax = ax + xSpeed;
    }
    
    if(apple1.isSelected(mouseX, mouseY)) {
      ax = apple1.getPosX();
      ax = ax + xSpeed;
    }
    
    if(apple2.isSelected(mouseX, mouseY)) {
      ax = apple2.getPosX();
      ax = ax + xSpeed;
    }
    
    if(apple3.isSelected(mouseX, mouseY)) {
      ax = apple3.getPosX();
      ax = ax + xSpeed;
    }
    
    if(apple4.isSelected(mouseX, mouseY)) {
      ax = apple4.getPosX();
      ax = ax + xSpeed;
    }
    
    if(apple5.isSelected(mouseX, mouseY)) {
      ax = apple5.getPosX();
      ax = ax + xSpeed;
    }
    
    if(apple6.isSelected(mouseX, mouseY)) {
      ax = apple6.getPosX();
      ax = ax + xSpeed;
    }
    
    if(apple7.isSelected(mouseX, mouseY)) {
      ax = apple7.getPosX();
      ax = ax + xSpeed;
    }
    
    if(apple8.isSelected(mouseX, mouseY)) {
      ax = apple8.getPosX();
      ax = ax + xSpeed;
    }
    }
    
    void mouseClicked() {
      println(mouseX + " " + mouseY);
      println ("apple " + apple.isSelected(mouseX, mouseY));
      println ("apple1 " + apple1.isSelected(mouseX, mouseY));
      
      if( apple.isSelected( mouseX, mouseY) ){
        apple.changeTree();
      }
      
      if( apple1.isSelected( mouseX, mouseY) ){
        apple1.changeTree();
      }
      
      if( apple2.isSelected( mouseX, mouseY) ){
        apple2.changeTree();
      }
      
      if( apple3.isSelected( mouseX, mouseY) ){
        apple3.changeTree();
      }
      
      if( apple4.isSelected( mouseX, mouseY) ){
        apple4.changeTree();
      }
      
      if( apple5.isSelected( mouseX, mouseY) ){
        apple5.changeTree();
      }
      
      if( apple6.isSelected( mouseX, mouseY) ){
        apple6.changeTree();
      }
      
      if( apple7.isSelected( mouseX, mouseY) ){
        apple7.changeTree();
      }
      
      if( apple8.isSelected( mouseX, mouseY) ){
        apple8.changeTree();
      }
    }
