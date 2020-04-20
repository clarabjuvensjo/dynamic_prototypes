void draw() {
  if ( mousePressed == true ) {
    // Draw our line
    stroke( 40, 50, 233 );
    line( pmouseX, pmouseY, mouseX, mouseY ); 
    // Send mouse coords to other person
    c.write( pmouseX + " " + pmouseY + " " + mouseX + " " + mouseY + "\n" );
    drawUI();
  }

  // Receive data from server
  if ( c.available() > 0 ) { 
    input = c.readString(); 
    input = input.substring( 0, input.indexOf("\n") );  // Only up to the newline
    data = int( split(input, ' ') );  // Split values into an array
    // Draw line using received coords
    stroke( 233, 40, 30 );
    line( data[0], data[1], data[2], data[3] ); 
  } 
}

void drawUI(){
  
  // Rita ut "knappar"
  strokeWeight( 2 );
  stroke( 50 );
  fill( 30 );
  
  rect( width-65, height-100, 50, 50 );
  
    // Rita ut text på aktiva knappar
  textSize( 16 );
  textAlign( CENTER );
  text( "Clear", 600, 255 );
  
  //Knappmarkörer
  strokeWeight( 1 );
  textSize( 20 );
  textAlign( CENTER );

  if( button == true ){
    image(board, 0, 0, 640, 360);
  }
}

void drawSummer() {
  board = loadImage("tictactoebild.png");
  image(board, 0, 0, 640, 360);
}

void drawFall() {
  board = loadImage("falltictactoe.png");
  image(board, 0, 0, 640, 360);
}

void drawWinter() {
  board = loadImage("snowtictactoe.png");
  image(board, 0, 0, 640, 360);
}
