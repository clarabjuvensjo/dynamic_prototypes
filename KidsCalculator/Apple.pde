  class Apple {
    PImage apple_img;
    float posX, posY;
    Tree tree1, tree2;
    int selectedTree;
    Apple apple;
    
    Apple (PImage im, float x, float y, Tree tree1, Tree tree2, int t) {
     this.apple_img = im;
     this.posX = x;
     this.posY = y;
     this.tree1 = tree1;
     this.tree2 = tree2;
     this.selectedTree = t;
     if(t==0){
       tree1.addAppleToTree(this);
     } else {
       tree2.addAppleToTree(this);
     }
    }
    
     public void changeTree() {
        if( selectedTree == 0){
          selectedTree = 1;
          tree1.removeAppleFromTree(this);
          tree2.addAppleToTree(this);
        } else {
          selectedTree = 0;
          tree2.removeAppleFromTree(this);
          tree1.addAppleToTree(this);
        }
    }
    
    public float getPosX() {
      return posX;
    }
    
    public float getPosY() {
      return posY;
    }
    
    void display(){
      switch (selectedTree){
        case 0:
          image(apple_img, tree1.getAnchorX() + posX, tree1.getAnchorY() + posY);
          break;
        case 1:
          image(apple_img, tree2.getAnchorX() + posX, tree2.getAnchorY() + posY);
          break;
      }
      
    }
    
    public boolean isSelected( int x, int y ){
      
      float d = 100000;
      switch ( selectedTree ){
        case 0:
          d = dist( tree1.anchorX + this.posX+40, tree1.anchorY + this.posY+38, x, y );
          break;
        case 1:
         d = dist( tree2.anchorX + this.posX+40, tree2.anchorY + this.posY+38, x, y );
         break;
      }
      
      
      if( d < 38 ){
        return true;
      } else {
        return false;
      }
    }
    
  }
