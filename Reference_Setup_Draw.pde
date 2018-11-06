// add your Reference_Setup_Draw code here
Rain r1;
//numDrops here controls how many drop will appear at once
int numDrops = 40;
Rain[] drops = new Rain[numDrops]; // Declare and create the array

void setup() {
  size(500, 500);
  background(0, 0, 0, 99);
  smooth();
  noStroke();


  //Loop through array to create each object
  for (int i = 0; i < drops.length; i++) {

    drops[i] = new Rain(); // Create each object
    r1 = new Rain();

  }
}

void draw() {
  noStroke();
  fill(255,255);
rect(0,0,500,500);
  
  //Loop through array to use objects.
  for (int i = 0; i < drops.length; i++) {
    drops[i].fall();
  }
}

class Rain {
  float r = random(500);
  float y = random(-height);

//Put text in here for it fall randomly
  void fall() {
    y = y + 7;
    fill(25, 25, 250, 180);
    stroke(25, 25, 250, 180);
    arc(r,y,10,20,radians(60),radians(120));
    if (y>height) {
      r = random(500);
      y = random(-200);
    }
  }
}
