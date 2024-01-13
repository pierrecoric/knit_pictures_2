int getMaxIndex() {
  int maxIndex = 0;
  for(int i = 0; i < colors.length; i++) {
    for(int j = 0; j < i + 1; j++) {
      if (i+j > maxIndex) {
      maxIndex = i + j;
      }
    }
  }
  return maxIndex;
}
