FloatList dataArray;
int baseline_y;
int barHeight;
int leftX;
float colorTone;

void setup(){
 size(1200, 1200, P2D); 
 background(255,255,255);
 baseline_y = 200;
 leftX = 200;
 dataArray = new FloatList();
 
 for (int i = 0; i < 10; i++){
    dataArray.append(random(200));
  }
  
 line(leftX, height - baseline_y, width - leftX, height - baseline_y);
 for (int i = 0; i < dataArray.size(); i++) {
    barHeight = int(4 * dataArray.get(i));
    colorTone = 50 + map(barHeight, 0, 800, 0, 120);
    fill(120, 150, colorTone);
    rect(leftX + 80 * i + 15, height - baseline_y - barHeight - 10, 50, barHeight, 5);
  }
 
}

void draw(){
    
}
