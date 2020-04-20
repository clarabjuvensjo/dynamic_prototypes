import processing.net.*; 

void setup() {
  size( 640, 360 );
  drawSummer();
  stroke( 0 );
  frameRate( 45 ); // Slow it down a little
  // Connect to the server’s IP address and port­
  c = new Client( this, "127.0.0.1", 12345 ); // Replace with your server’s IP and port
}

void keyPressed() {
  if (key == CODED) {
    switch(keyCode) {
      case LEFT:
      drawFall();
        break;
      case DOWN:
      drawWinter();
        break;
      case RIGHT:
      drawSummer();
      break;
    }
  }
}

void mousePressed() {
  
  // Kontroll om klicket är inanför knappens yta
  float d = dist( mouseX, mouseY, 600, 285);
  if (d < 25) {
      if( mousePressed ){
        image(board, 0, 0, 640, 360);
      }
    }
   if ( debug ) println(mouseX, mouseY);
}
