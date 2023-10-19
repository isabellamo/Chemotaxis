// senioritis
//declare bacteria variables here
Senioritis[] cell;
Senior person;

 void setup(){     
   //initialize bacteria variables here
   size(600,600);
   cell = new Senioritis[6]; // increase later
   for (int i = 0; i < cell.length; i++){
     cell[i] = new Senioritis(300, 300);
   }
   
   person = new Senior(200, 200);
 }   

 void draw(){    
   //move and show the bacteria
   background(0);
   for (int i = 0; i < cell.length; i++){
     cell[i].walk();
     cell[i].show();
   }
   
   person.show();
   person.walk();
   
   fill(250);
   text("College Apps", 30, 50);
   text("Extracurriculars", 500, 560);
   text("Going to class", 30, 560);
   text("Studying", 500, 50);
 }  
 
 class Senior{
   int seniorX, seniorY;
   
   Senior(int userX, int userY){
     seniorX = userX;
     seniorY = userY;
   }
   
   void show(){
     beginShape();
     noStroke();
     fill(250);
     ellipse(seniorX, seniorY, 30, 30);
     fill(0, 0, 0);
     ellipse(seniorX - 8, seniorY - 3, 10, 10);
     ellipse(seniorX + 8, seniorY - 3, 10, 10);
     arc(seniorX, seniorY + 10, 15, 15, PI, 2 * PI);
     endShape();
   }
   
   void walk(){
       seniorX = mouseX + (int)(Math.random() * 5) - 1;
       seniorY = mouseY + (int)(Math.random() * 5) - 1;
   }
 }

 class Senioritis{     
   int x, y;
   
   Senioritis(int userX, int userY){
     x = userX;
     y = userY;
   }
   
   void walk(){
     if (mouseX > x){
       x += (int)(Math.random() * 5) - 1;
     } else {
       x += (int)(Math.random() * 5) - 3;
     }
     
     if (mouseY > y){
       y += (int)(Math.random() * 5) - 1;
     } else {
       y += (int)(Math.random() * 5) - 3;
     }
     
     if (x <= 0){
       x += 20;
     } else if (x >= 600){
       x -= 20;
     }
     
     if (y <= 0){
       y += 20;
     } else if (y >= 600){
       y -= 20;
     }
   }
   
   void show(){
     noStroke();
     fill(250,0,0);
     triangle(x - 17, y - 20, x - 15, y - 5, x - 5, y - 10);
     triangle(x + 17, y - 20, x + 15, y - 5, x + 5, y - 10);
     ellipse(x,y,30,30);
     fill(0, 0, 0);
     ellipse(x - 8, y - 3, 10, 10);
     ellipse(x + 8, y - 3, 10, 10);
     arc(x, y + 5, 15, 15, 0, PI);
   }
 }
