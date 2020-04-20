class Tree {
  private int anchorX, anchorY;
  public ArrayList <Apple>theApples = new ArrayList<Apple>();
 
  Tree (int anchorX, int anchorY){
    this.anchorX = anchorX;
    this.anchorY = anchorY;
    theApples = new ArrayList<Apple>();
  }
    
    public int getAnchorX(){
      return anchorX;
    }
    
    public int getAnchorY(){
      return anchorY;
    }
    
    public void addAppleToTree(Apple newApple){
      theApples.add(newApple);
    }
    
    public void removeAppleFromTree(Apple newApple){
      theApples.remove(newApple);
    }
    
    public int getAmountOfApples() {
      return theApples.size();
    }
}
