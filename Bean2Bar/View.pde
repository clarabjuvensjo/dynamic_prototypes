void draw(){
  background(150);
  
  if (state >= 4) {
    image(image[0], 0, 0, imageWidth, imageHeight);
    image(image[1], width/2, 0, imageWidth, imageHeight);
    image(image[2], 0, height/2, imageWidth, imageHeight);
    image(image[3], width/2, height/2, imageWidth, imageHeight);
  } else if (state == 0) {
    image(image[4], 0, 0, width, height);
  } else if (state == 1) {
    image(image[5], 0, 0, width, height);
  } else if (state == 2) {
    image(image[6], 0, 0, width, height);
  } else if (state == 3) {
    image(image [7], 0, 0, width, height);
  } else if (state == 4){
  }
}
