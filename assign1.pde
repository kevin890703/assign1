
//bg
  PImage bg1;
  PImage bg2;
  int bgx1;
  int bgx2=-640;
//T
  PImage TImg;
  int T;
  int TX = floor(random(40,600));
  int TY = floor(random(40,440));
//F
  PImage FImg;
//hp
  PImage hp;
  int hpx = floor(random(200));
//E
  PImage EImg;
  int EX;

void setup () {
  size(640,480) ;  // must use this size.
  bg1 = loadImage ("img/bg1.png");
  bg2 = loadImage ("img/bg2.png");
  TImg = loadImage ("img/treasure.png");
  FImg = loadImage ("img/fighter.png");
  hp = loadImage ("img/hp.png");
  EImg = loadImage ("img/enemy.png");
}

void draw() {
  //bg
    image(bg1,bgx1,0);
    bgx1 += 1;
    if(bgx1==640){bgx1=(-640);};
    image(bg2,bgx2,0);
    bgx2 += 1;
    if(bgx2==640){bgx2=(-640);};
  //T 
    image(TImg,TX,TY);
  //F
    image(FImg,560,240);
  //hp
    fill(255,0,0);
    rect(45, 43, hpx, 20, 7);
    image(hp,40,40);
  //E
    image(EImg,EX,140);
    EX += 2;
    EX %= 640; 
}
