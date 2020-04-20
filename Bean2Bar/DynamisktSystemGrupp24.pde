void setup() {
  size(1280, 720); 
  
  image[0] = loadImage( "bollar1.png" );
  image[1] = loadImage( "fondant1.png" );
  image[2] = loadImage( "muffins1.png" );
  image[3] = loadImage( "kladd1.png" );
  image[4] = loadImage( "chokladbollar.png" );
  image[5] = loadImage( "chokladfondant.png" );
  image[6] = loadImage( "chokladmuffins.png" );
  image[7] = loadImage( "kladdkakarecept.png" );
}

void mousePressed() {
  if( state < 4 ){
    state = 4;
    return;
  }
  
  if( mouseX <= width/2 && mouseY <= height/2 ){
    state = 0;
  }
  
  if( mouseX >= width/2 && mouseY <= height/2 ){
    state = 1;
  }
  
  if( mouseX <= width/2 && mouseY >= height/2 ){
    state = 2;
  }
  
  if( mouseX >= width/2 && mouseY >= height/2 ){
    state = 3;
  }
}
