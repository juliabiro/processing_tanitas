var denever;
var gravity;
var JUMP = 2;
var bg;
var also_rud;
var felso_rud;
var luk_helye;

var rud_hossza=400;
var gapsize=75;

function setup() {
// background
  //bg =loadImage("http://www.itechnoobs.com/wp-content/uploads/2014/02/background-slider-flappy-birds.jpg");
	createCanvas(1500,450 );

//bird
  var img = loadimage("http://images.clipartpanda.com/bat-clipart-for-kids-pi55joeiB.png");
	denever = createSprite(100,0);
  denever.addImage(img);
  denever.scale = 0.1;
  denever.velocity.y=1;
  gravity=0.05;

  // columns

  luk_helye=random(150, 350);
  felso_rud= createSprite(1450, luk_helye - gapsize - rud_hossza/2, 50, rud_hossza);
  also_rud= createSprite(1450, luk_helye + gapsize+ rud_hossza/2, 50, rud_hossza);
  felso_rud.velocity.x=-5;
  also_rud.velocity.x=-5;
}

function draw() {
//  background(bg);
  //image(bg);
  background(0,0,255);
  fill(0,255,0);
  rect (0, 400, 1500, 450);

  // 1. TODO add control
  if(keyDown("SPACE"))
  {
    denever.velocity.y = -JUMP;
  }
  
  // 2. add falling
  denever.velocity.y+=gravity;

  // add hitting the ground
  if (denever.position.y>400){
    game_over();
  }
  //3. add columns

  if (felso_rud.position.x<0){
    luk_helye=random(150, 400);
    gapsize=random(500, 100);
    felso_rud.position.x = 1450;
    felso_rud.position.y = luk_helye-50-rud_hossza/2;
    also_rud.position.x=1450;
    also_rud.position.y = luk_helye+50+rud_hossza/2;
  }
  //4. add collision detection
  if (denever.overlap(also_rud)|| denever.overlap(felso_rud)){
    game_over();
  }
  //5. add scoring


	drawSprites();
}

function game_over(){
  denever.velocity.y=0;
  also_rud.velocity.y=0;
  felso_rud.velocity.y=0;
  gravity=0;

  fill(0);
  textSize(32);
  text("GAME OVER", width/2, height/2);

}
