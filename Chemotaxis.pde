Bacteria [] colony;

 void setup()   
 {     
   size(500,500);
   colony = new Bacteria[20];
 for(int i =0; i<colony.length; i++){
   colony[i] = new Bacteria();
 }  
 }   
 void draw()   
 {    
   background(0,0,0);
   for(int i =0; i<colony.length; i++){
   colony[i].move();
  colony[i].show();
 }  
  
   //move and show the bacteria   
 }  
 class Bacteria    
 {  
   int xBac, yBac, colorBac;
    Bacteria(){
      xBac = (int)(Math.random()*500);
      yBac = (int)(Math.random()*500);
    
    }
    void move(){
      xBac = xBac +  (int)(Math.random()*10-5);
      yBac = yBac + (int)(Math.random()*10-5);
    }
   void show(){
    fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    // background(200,200,200);
     ellipse(xBac,yBac,10,10);
   }
   //lots of java!   
 }    
