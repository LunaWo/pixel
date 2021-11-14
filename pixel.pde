PImage img;
PImage fillImg;

int i = 0;
int j = 0;
int startTime;

void setup() {
size (400,400);
img = loadImage("sunflower.jpg");
fillImg = loadImage("tree.png");
startTime = millis();
noLoop();
}
void draw() {
image(img,0,0);
if(millis()-startTime >= 100){
animateDraw();
}
for(int i = 0; i <= 360; i+=40){
for(int j = 0; j <= 360; j+=40) {
delay(100);
image (fillImg, i, j, random(40,400-i), random (40,400-j));
}
}
}
void animateDraw() {
for(int interval = 0; interval <= 99; interval++) {
delay(100);
image(fillImg, i, j,random (40, 400-i), random(40,400-j));
i += 40;
j += 40;
redraw();
}
}
