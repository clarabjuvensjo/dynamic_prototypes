import processing.net.*;

void setup() { 
  size( 640, 360 );
  drawSummer();
  stroke( 0 );
  frameRate( 45 ); // Slow it down a little
  s = new Server( this, 12345 );  // Start a simple server on a port
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
