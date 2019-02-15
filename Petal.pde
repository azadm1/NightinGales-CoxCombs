class Petal{
  float x,y,w,h;
  float start,stop;
  float petal_num;
  float radii [] = new float[3];
  float a,b,c;
  
  Petal(float a,float b,float c,float d){
    println("PETAL NUM" , d);
    x = y = 500;
    start = radians(270 + 30*d);
    stop = radians(300 + 30*d);
    a = a*3;
    a = a/PI;
    a = sqrt(a);
    //a = a +40;
    //println(a);  
    
    b = b*3;
    b = b/PI;
    b = sqrt(b);
    //b = b+40;
    //println(b);
    
    c = c*3;
    c = c/PI;
    c = sqrt(c);
    //c = c +40;
    //println(c);
    this.a = a;
    this.b=b;
    this.c = c;
    radii[0]  = a;
    radii[1]  = b;
    radii[2]  = c;
    radii = sort(radii);
    radii = reverse(radii);
    println(radii);
    
  }
  
  void display(){
   stroke(255);
    for(int i = 0; i < 3; i++){
      w = h = radii[i]*20;
      if(radii[i] == a)
        fill(140,31,41);
        if(radii[i] == b)
        fill(255,141,172);
        if(radii[i] == c)
        fill(255,216,216);
        
      arc(height/2+150,width/2+50,w,h,start,stop,PIE);
    }
  
  }
  void rotate(){
    start += radians(30);
    stop += radians(30);
  }
}
