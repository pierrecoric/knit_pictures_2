int widthCell = 10;
int heightCell = 24;
int cols;
int rows;

//defining the color array. 
color colors16 [] = {#000000, #111111, #222222, #333333, #444444, #555555, #666666, #777777, #888888, #999999, #AAAAAA, #BBBBBB, #CCCCCC, #DDDDDD, #EEEEEE, #FFFFFF};
color colors4 [] = {#000000, #555555, #AAAAAA, #FFFFFF};
color colors3 [] = {#000000, #888888, #FFFFFF};
color colors2 [] = {#000000, #FFFFFF};
color colors4b [] = {#0000FF, #5555FF, #AAAAFF, #FFFFFF};

color colors [] = {#000F08, #122CB1, #D12323, #D7A10D};


PImage source;
PImage analyse;

//noise for the compute with max index. 0 = no noise
int noise = 0;

String fileName = "benz.jpg";

void setup () {
  //multiples of widthCell and heightCell
  size(960, 960);
  noStroke();
  
  cols = width / widthCell;
  rows = height / heightCell;
  
  source = loadImage("src/" + fileName);
  source.resize(width, height);
  
  computeWithMaxIndex(noise);
  save("exports/knit_max_noise_" + noise + "_" + fileName);
  computeWithColorIndex();
  save("exports/knit_color_" + fileName);
  
  println("cols = " + cols + " rows = " + rows);
  
}

void draw () {
}
