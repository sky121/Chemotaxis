Bacteria [] colony;
int foodX = 50;
int foodY = 50;
 void setup()   
 {     
      background(0,255,0);
   size(500,500);
   colony = new Bacteria[30];
 for(int i =0; i<colony.length; i++){
   colony[i] = new Bacteria();
 }  
 }   
 void draw()   
 {    

   
   fill(0,0,0,10);
   rect(0,0,500,500);
   fill(0,255,0);
   rect(foodX, foodY, 10, 10);
   for(int i =0; i<colony.length; i++){
   colony[i].move();
  colony[i].show();
 }  
  
   //move and show the bacteria   
 }


 
 class Bacteria    
 {  
   int changeX = 2;
  int changeY = 2;

   int xBac, yBac, colorBac;
    Bacteria(){
      xBac = (int)(Math.random()*500);
      yBac = (int)(Math.random()*500);
    
    }
    void move(){
      xBac = xBac +  (int)(Math.random()*5-changeX);
      yBac = yBac + (int)(Math.random()*5-changeY);
    }
    
   void show(){
     
     if(foodX == xBac && foodY == yBac){
       foodX = (int)(Math.random()*500);
       foodY = (int)(Math.random()*500);
     }
        if(foodX>xBac){
           changeX = 1;
        } 
        if(foodX<xBac){
           changeX= 3;
        }
        if(foodY>yBac){
           changeY = 1;
        } 
        if(foodY<yBac){
         changeY= 3;
         }
    fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    // background(200,200,200);
     ellipse(xBac,yBac,10,10);
   }
   //lots of java!   
 }    
