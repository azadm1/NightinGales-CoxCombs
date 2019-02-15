Table table;

ArrayList<Petal> petals = new ArrayList<Petal>();

void setup() {
    size(1000,1000);
    background(100);
    table = loadTable("rosedata.csv","header");
    for(int i = 0; i < table.getRowCount();i++){
      TableRow row = table.getRow(i);
      Petal petal = new Petal(row.getFloat("zymotic"),row.getFloat("wounds"),row.getFloat("other"),i) ;
      println("PETAL BEFORE FIX",i);
      println(row.getFloat("zymotic"),row.getFloat("wounds"),row.getFloat("other"));
      petals.add(petal);
      //petals.get(i).display();
    }
}

void draw(){
   background(100);l
    for(int i = 0; i < petals.size();i++){
      petals.get(i).display();
    }
    
}

void mouseClicked(){
  for(int i = 0; i < petals.size();i++){
      petals.get(i).rotate();
    }
    redraw();
}
