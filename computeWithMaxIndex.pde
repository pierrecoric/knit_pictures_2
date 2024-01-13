void computeWithMaxIndex (int noise) {
  //this will combine two adjacent cells to gain new nuances. Max index is the max amount of nuances available based on the array of colors
  int maxIndex = getMaxIndex();
  int doubleIndex [] = {0, 0};

  println(maxIndex);
  for(int y = 0; y < rows; y++) {
    for(int x = 0; x < cols / 2  ; x++) {
      analyse=source.get(x * widthCell * 2, y * heightCell, widthCell * 2, heightCell);
  
      int index = int(map(valueZone(),0,255,0,maxIndex));
      int testNoise = int(random(0, noise));
      if (testNoise > 1) {
        doubleIndex[0] = int(random(0,colors.length));
        doubleIndex[1] = int(random(0,colors.length));
      }
      while (doubleIndex[0] + doubleIndex[1] != index) {
        doubleIndex[0] = int(random(0,colors.length));
        doubleIndex[1] = int(random(0,colors.length));
      }   
      println("x = " + x + " y = " + y + " -> " +  index + " di1 = " + doubleIndex[0] + " di2 = " + doubleIndex[1]);
      fill(colors[doubleIndex[0]]);
      rect(x * widthCell * 2, y * heightCell, widthCell, heightCell);
      fill(colors[doubleIndex[1]]);
      rect(x * widthCell * 2 + widthCell, y * heightCell, widthCell, heightCell);
    }
  }
}
