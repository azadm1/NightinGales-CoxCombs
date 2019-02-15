class leaf{
  float x,y,w,h,start,stop;
  float leaf_num;
  int type;
  leaf(float area, float leaf_num, int type){
    float radius = sqrt((area*3)/PI);
    w = h = radius;
    this.leaf_num = leaf_num;
    this.type = type;
  }
  
  void display(){
    start = radians(270 + 30*leaf_num);
    stop = radians(300 + 30*leaf_num);
    switch(type){
      case 0:
        fill(255,0,0);
      case 1:
        fill(0,255,0);
      case 2:
        fill(0,0,255);
    }
    arc(height/2,width/2,w,h,start,stop,PIE);
  }
}
