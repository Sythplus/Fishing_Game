Fisher fs; 
FishingRod fr;
Background bg;
float landingPosX, landingPosY;
float landingRadius = 5; 
int amountCatched = 0;
int amount = 10;
Fish[] f = new Fish[amount];
boolean thrown = false;

void setup() {  
  fullScreen();
  //size(900,700);
  frameRate(60);
  fs = new Fisher();
  bg = new Background();
  fr = new FishingRod();
  for (int i =0; i<amount; i++) {
    f[i]= new Fish((int)random(50, width-50), (int)random(240, height-65), random(2, 5), random(2, 5));
  }
}

void draw() {
  bg.display();
  fs.display();

  for (int i = 0; i <amount; i++) {
    f[i].move();
    f[i].display();
    f[i].collision();
  }
  fr.display();
}

void keyPressed() {
  if (key == 'f' || key == 'F') {
    thrown = false;
  }
}
