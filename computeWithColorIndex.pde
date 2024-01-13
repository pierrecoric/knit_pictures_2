void computeWithColorIndex () {
  for(int y = 0; y < rows; y++) {
    for(int x = 0; x < cols; x++) {
      analyse=source.get(x * widthCell, y * heightCell, widthCell, heightCell);
      int index = int(map(valueZone(),0,255,0,colors.length-1));
      fill(colors[index]);
      rect(x * widthCell, y * heightCell, widthCell, heightCell);
     
    }
  }
}
