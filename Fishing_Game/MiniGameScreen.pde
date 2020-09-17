boolean FishInfo = false;
int B = 25;
int H = 150; 
int d = 220;
int ChooseMap = random(1)>0.5?1:2;
int ChooseYLocation = random(1)>0.5?244:559;
int Y=0;

void MiniGameScreen() {
  background(0, 0, 255);

  if (ChooseMap == 1) {
    for (float i = 0; i < width; i += d) {
      //Draws Planks
      fill(210, 105, 30);
      rect(i+d, 11.5, B, H);
      rect(i+d*1.5, 19+H, B, H);
      rect(i+d, 26.5+H*2, B, H);
      rect(i+d*1.5, 34+H*3, B, H);
      rect(i+d, 41.5+H*4, B, H);

      //Makes the Fish get away by hitting the first row of planks
      if (FISH[0].location.y+15 >= 11.5 && FISH[0].location.y-15 <= 11.5+H*1 && FISH[0].location.x >= i+d && FISH[0].location.x <= i+d+B) {
        stage = 2;
        fishCatch = 0;
        FISH[0].location.x = d/4;
        fr.thrown = false;
        f.get(catchedIndex).velocity.x = f.get(catchedIndex).velocityB4Catch.x;
        f.get(catchedIndex).velocity.y = f.get(catchedIndex).velocityB4Catch.y;
      }
      if (FISH[0].location.x+15 >= i+d && FISH[0].location.x-15 <= i+d+B && FISH[0].location.y >= 11.5 && FISH[0].location.y <= 11.5+H*1) {
        stage = 2;
        fishCatch = 0;
        FISH[0].location.x = d/4;
        fr.thrown = false;
        f.get(catchedIndex).velocity.x = f.get(catchedIndex).velocityB4Catch.x;
        f.get(catchedIndex).velocity.y = f.get(catchedIndex).velocityB4Catch.y;
      }

      //Makes the Fish get away by hitting the second row of planks
      if (FISH[0].location.y+15 >= 19+H*1 && FISH[0].location.y-15 <= 19+H*2 && FISH[0].location.x >= i+d*1.5 && FISH[0].location.x <= i+d*1.5+B) {
        stage = 2;
        fishCatch = 0;
        FISH[0].location.x = d/4;
        fr.thrown = false;
        f.get(catchedIndex).velocity.x = f.get(catchedIndex).velocityB4Catch.x;
        f.get(catchedIndex).velocity.y = f.get(catchedIndex).velocityB4Catch.y;
      }
      if (FISH[0].location.x+15 >= i+d*1.5 && FISH[0].location.x-15 <= i+d*1.5+B && FISH[0].location.y >= 19+H*1 && FISH[0].location.y <= 19+H*2) {
        stage = 2;
        fishCatch = 0;
        FISH[0].location.x = d/4;
        fr.thrown = false;
        f.get(catchedIndex).velocity.x = f.get(catchedIndex).velocityB4Catch.x;
        f.get(catchedIndex).velocity.y = f.get(catchedIndex).velocityB4Catch.y;
      }

      //Makes the Fish get away by hitting the third row of planks
      if (FISH[0].location.y+15 >= 26.5+H*2 && FISH[0].location.y-15 <= 26.5+H*3 && FISH[0].location.x >= i+d && FISH[0].location.x <= i+d+B) {
        stage = 2;
        fishCatch = 0;
        FISH[0].location.x = d/4;
        fr.thrown = false;
        f.get(catchedIndex).velocity.x = f.get(catchedIndex).velocityB4Catch.x;
        f.get(catchedIndex).velocity.y = f.get(catchedIndex).velocityB4Catch.y;
      }
      if (FISH[0].location.x+15 >= i+d && FISH[0].location.x-15 <= i+d+B && FISH[0].location.y >= 26.5+H*2 && FISH[0].location.y <= 26.5+H*3) {
        stage = 2;
        fishCatch = 0;
        FISH[0].location.x = d/4;
        fr.thrown = false;
        f.get(catchedIndex).velocity.x = f.get(catchedIndex).velocityB4Catch.x;
        f.get(catchedIndex).velocity.y = f.get(catchedIndex).velocityB4Catch.y;
      }

      //Makes the Fish get away by hitting the fourth row of planks
      if (FISH[0].location.y+15 >= 34+H*3 && FISH[0].location.y-15 <= 34+H*4 && FISH[0].location.x >= i+d*1.5 && FISH[0].location.x <= i+d*1.5+B) {
        stage = 2;
        fishCatch = 0;
        FISH[0].location.x = d/4;
        fr.thrown = false;
        f.get(catchedIndex).velocity.x = f.get(catchedIndex).velocityB4Catch.x;
        f.get(catchedIndex).velocity.y = f.get(catchedIndex).velocityB4Catch.y;
      }
      if (FISH[0].location.x+15 >= i+d*1.5 && FISH[0].location.x-15 <= i+d*1.5+B && FISH[0].location.y >= 34+H*3 && FISH[0].location.y <= 34+H*4) {
        stage = 2;
        fishCatch = 0;
        FISH[0].location.x = d/4;
        fr.thrown = false;
        f.get(catchedIndex).velocity.x = f.get(catchedIndex).velocityB4Catch.x;
        f.get(catchedIndex).velocity.y = f.get(catchedIndex).velocityB4Catch.y;
      }

      //Makes the Fish get away by hitting the fifth row of planks
      if (FISH[0].location.y+15 >= 41.5+H*4 && FISH[0].location.y-15 <= 41.5+H*5 && FISH[0].location.x >= i+d && FISH[0].location.x <= i+d+B) {
        stage = 2;
        fishCatch = 0;
        FISH[0].location.x = d/4;
        fr.thrown = false;
        f.get(catchedIndex).velocity.x = f.get(catchedIndex).velocityB4Catch.x;
        f.get(catchedIndex).velocity.y = f.get(catchedIndex).velocityB4Catch.y;
      }
      if (FISH[0].location.x+15 >= i+d && FISH[0].location.x-15 <= i+d+B && FISH[0].location.y >= 41.5+H*4 && FISH[0].location.y <= 41.5+H*5) {
        stage = 2;
        fishCatch = 0;
        FISH[0].location.x = d/4;
        fr.thrown = false;
        f.get(catchedIndex).velocity.x = f.get(catchedIndex).velocityB4Catch.x;
        f.get(catchedIndex).velocity.y = f.get(catchedIndex).velocityB4Catch.y;
      }
    }
  } 
  if (ChooseMap == 2) {
    for (float i = 0; i < width; i += d) {
      //Draws Planks
      fill(210, 105, 30);
      rect(i+d*1.5, 11.5, B, H);
      rect(i+d, 19+H, B, H);
      rect(i+d*1.5, 26.5+H*2, B, H);
      rect(i+d, 34+H*3, B, H);
      rect(i+d*1.5, 41.5+H*4, B, H);

      //Makes the Fish get away by hitting the first row of planks
      if (FISH[0].location.y+15 >= 11.5 && FISH[0].location.y-15 <= 11.5+H*1 && FISH[0].location.x >= i+d*1.5 && FISH[0].location.x <= i+d*1.5+B) {
        stage = 2;
        fishCatch = 0;
        FISH[0].location.x = d/4;
        fr.thrown = false;
        f.get(catchedIndex).velocity.x = f.get(catchedIndex).velocityB4Catch.x;
        f.get(catchedIndex).velocity.y = f.get(catchedIndex).velocityB4Catch.y;
      }
      if (FISH[0].location.x+15 >= i+d*1.5 && FISH[0].location.x-15 <= i+d*1.5+B && FISH[0].location.y >= 11.5 && FISH[0].location.y <= 11.5+H*1) {
        stage = 2;
        fishCatch = 0;
        FISH[0].location.x = d/4;
        fr.thrown = false;
        f.get(catchedIndex).velocity.x = f.get(catchedIndex).velocityB4Catch.x;
        f.get(catchedIndex).velocity.y = f.get(catchedIndex).velocityB4Catch.y;
      }

      //Makes the Fish get away by hitting the second row of planks
      if (FISH[0].location.y+15 >= 19+H*1 && FISH[0].location.y-15 <= 19+H*2 && FISH[0].location.x >= i+d && FISH[0].location.x <= i+d+B) {
        stage = 2;
        fishCatch = 0;
        FISH[0].location.x = d/4;
        fr.thrown = false;
        f.get(catchedIndex).velocity.x = f.get(catchedIndex).velocityB4Catch.x;
        f.get(catchedIndex).velocity.y = f.get(catchedIndex).velocityB4Catch.y;
      }
      if (FISH[0].location.x+15 >= i+d && FISH[0].location.x-15 <= i+d+B && FISH[0].location.y >= 19+H*1 && FISH[0].location.y <= 19+H*2) {
        stage = 2;
        fishCatch = 0;
        FISH[0].location.x = d/4;
        fr.thrown = false;
        f.get(catchedIndex).velocity.x = f.get(catchedIndex).velocityB4Catch.x;
        f.get(catchedIndex).velocity.y = f.get(catchedIndex).velocityB4Catch.y;
      }

      //Makes the Fish get away by hitting the third row of planks
      if (FISH[0].location.y+15 >= 26.5+H*2 && FISH[0].location.y-15 <= 26.5+H*3 && FISH[0].location.x >= i+d*1.5 && FISH[0].location.x <= i+d*1.5+B) {
        stage = 2;
        fishCatch = 0;
        FISH[0].location.x = d/4;
        fr.thrown = false;
        f.get(catchedIndex).velocity.x = f.get(catchedIndex).velocityB4Catch.x;
        f.get(catchedIndex).velocity.y = f.get(catchedIndex).velocityB4Catch.y;
      }
      if (FISH[0].location.x+15 >= i+d*1.5 && FISH[0].location.x-15 <= i+d*1.5+B && FISH[0].location.y >= 26.5+H*2 && FISH[0].location.y <= 26.5+H*3) {
        stage = 2;
        fishCatch = 0;
        FISH[0].location.x = d/4;
        fr.thrown = false;
        f.get(catchedIndex).velocity.x = f.get(catchedIndex).velocityB4Catch.x;
        f.get(catchedIndex).velocity.y = f.get(catchedIndex).velocityB4Catch.y;
      }

      //Makes the Fish get away by hitting the fourth row of planks
      if (FISH[0].location.y+15 >= 34+H*3 && FISH[0].location.y-15 <= 34+H*4 && FISH[0].location.x >= i+d && FISH[0].location.x <= i+d+B) {
        stage = 2;
        fishCatch = 0;
        FISH[0].location.x = d/4;
        fr.thrown = false;
        f.get(catchedIndex).velocity.x = f.get(catchedIndex).velocityB4Catch.x;
        f.get(catchedIndex).velocity.y = f.get(catchedIndex).velocityB4Catch.y;
      }
      if (FISH[0].location.x+15 >= i+d && FISH[0].location.x-15 <= i+d+B && FISH[0].location.y >= 34+H*3 && FISH[0].location.y <= 34+H*4) {
        stage = 2;
        fishCatch = 0;
        FISH[0].location.x = d/4;
        fr.thrown = false;
        f.get(catchedIndex).velocity.x = f.get(catchedIndex).velocityB4Catch.x;
        f.get(catchedIndex).velocity.y = f.get(catchedIndex).velocityB4Catch.y;
      }

      //Makes the Fish get away by hitting the fifth row of planks
      if (FISH[0].location.y+15 >= 41.5+H*4 && FISH[0].location.y-15 <= 41.5+H*5 && FISH[0].location.x >= i+d*1.5 && FISH[0].location.x <= i+d*1.5+B) {
        stage = 2;
        fishCatch = 0;
        FISH[0].location.x = d/4;
        fr.thrown = false;
        f.get(catchedIndex).velocity.x = f.get(catchedIndex).velocityB4Catch.x;
        f.get(catchedIndex).velocity.y = f.get(catchedIndex).velocityB4Catch.y;
      }
      if (FISH[0].location.x+15 >= i+d*1.5 && FISH[0].location.x-15 <= i+d*1.5+B && FISH[0].location.y >= 41.5+H*4 && FISH[0].location.y <= 41.5+H*5) {
        stage = 2;
        fishCatch = 0;
        FISH[0].location.x = d/4;
        fr.thrown = false;
        f.get(catchedIndex).velocity.x = f.get(catchedIndex).velocityB4Catch.x;
        f.get(catchedIndex).velocity.y = f.get(catchedIndex).velocityB4Catch.y;
      }
    }
  }
  FISH[0].move();
  FISH[0].display();

  //Makes the Fish bounce of the ground
  if (FISH[0].location.y+20 > height) {
    FISH[0].velocity.set(FISH[0].velocity.x, -FISH[0].velocity.y);
  }
  //Makes the Fish bounce of the top wall
  if (FISH[0].location.y-20 < 0) {
    FISH[0].velocity.set(FISH[0].velocity.x, -FISH[0].velocity.y);
    FISH[0].location.set(FISH[0].location.x, +11 );
  }


  //Makes the Fish bounce of the right wall
  if (FISH[0].location.x+20 > width) {
    stage = 2;
    amountCatched += 1;
    fishCatch = 0;
    f.remove(catchedIndex);
    FISH[0].location.x = d/4;
    fr.thrown = false;
    FishInfo = true;
  }
}
