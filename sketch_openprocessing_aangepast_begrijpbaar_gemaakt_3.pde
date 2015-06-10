int maxDots = 1000;
float phi = 1/1.618033989; //golden ratio
float flow = 360-80 * phi + 10; //change this value for varying effects;
//45-360 * phi + 0;
//90-360 * phi + 0;
//135-360 * phi + 0;
//180-360 * phi + 0;
//225-360 * phi + 0;
//270-360 * phi + 0;
//315-360 * phi + 0;
//360-360 * phi + 0;
//360-315 * phi + 0;
//360-270 * phi + 0;
//360-225 * phi + 0;
//360-180 * phi + 0;
//360-135 * phi + 0;
//360-90 * phi + 0;
//360-45 * phi + 0;

float radius = 30;
float dot_growth;
float current_dot = 0;
float rotation = 0;
float x;
float y;
float w = 50;
float h = 50;
float degrees;
 
void setup() {
  size(700,700);
  background(0);
  noFill();
  //colorMode(HSB);
  strokeWeight(0.2);
  frameRate(40);
   
  //phi = 1/1.618033989;
  //flow = 360-90 * phi + 0; //change this value for varying effects
  //radius = 5;
  dot_growth = 1.005;
}
 
void draw() {
  current_dot++; //++ is het verhogen van de value met 1. Dus hier is het current_dot + 1
  rotation += flow; //+= betekent rotation = rotation + flow
  rotation -= int(rotation/360) * 360; //rotation = rotation - int
  radius *=dot_growth; //radius = radius * dot_growth
  stroke(255);
  //stroke(phi*current_dot/1, phi*current_dot/1, 255);
  //stroke(phi*current_dot/2, phi*current_dot/2, 255);
  //stroke(phi*current_dot/3, phi*current_dot/3, 255);
  //stroke(phi*current_dot/1, phi*current_dot/4, 255);
  //stroke(phi*current_dot/10, phi*current_dot/1, 255);
  //stroke(phi*current_dot/7, phi*current_dot/1, 255);
  //stroke(phi*current_dot/4, phi*current_dot/1, 255);

  y = cos(rotation * PI/180) * radius + width/2;
  x = sin(rotation * PI/180) * radius + height/2;
  ellipse(x,y,w,h);
   
  w+=phi/14;
  h+=phi/14;
}
