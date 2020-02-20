Bag bag = new Bag(8, 5);
boolean inBag = false;
boolean  bagopt = false;

class Bag{
  public int[][] inv;
  public int row, col;
  int UI_width, UI_height, UI_dis;
  int Bigsq_num,Wpsq_num,Strip_num,Avatarsq_num;
  int vertical_margin, horizontal_margin,sq_distance,Avatarsq_sl;
  float square_width, square_height, vs, hs,Big_sl,Wp_distance,Wpsq_sl,Strip_height,Strip_width;  
  
  public Bag(int row, int col){
    inv = new int[row][col];
    this.row = row;
    this.col = col;
    UI_width = 500;
    UI_height = 800;
    UI_dis = 100;
    Bigsq_num = 3 ;
    Wpsq_num = 3;
    Avatarsq_num = 4;
    Strip_num = 5 ;
    vertical_margin = (height - UI_height)/2;
    horizontal_margin = (width - 2*UI_width - UI_dis)/2;
    sq_distance = UI_width / (Avatarsq_num*2 + 1);
    Avatarsq_sl = sq_distance;
    Big_sl = 3*sq_distance;
    Wp_distance = Big_sl / (Wpsq_num*3+1);
    Wpsq_sl = 2*Wp_distance;
    Strip_height = 0.25*Big_sl;
    Strip_width = UI_width - Big_sl-3*sq_distance;
    
  }

  public void PropertyPanel(){
    noStroke();
    fill(0);
    
    rect(horizontal_margin, vertical_margin, UI_width, UI_height);
  
  }
  
  public void PropertySquare(){

    noStroke();
    
    fill(0,0,100);
    
    int v_a = 50;
    
    for(int n = 1; n <= Avatarsq_num; n++){
    
      rect(horizontal_margin + n*sq_distance + (n-1)*Avatarsq_sl,vertical_margin + 50,Avatarsq_sl,Avatarsq_sl,10);
    
    }
    
    rect(horizontal_margin + sq_distance,vertical_margin + Big_sl,Big_sl,Big_sl,10);
    
    fill(0,100,100);
    
    for(int n = 1; n <= Wpsq_num ;n++){
    
    rect(horizontal_margin + n*Wp_distance + (n-1)*Wpsq_sl + sq_distance ,vertical_margin + Big_sl + 7*Wp_distance,Wpsq_sl,Wpsq_sl,10);
      
    }
    
   
    
    fill(0,0,100);
    
    for(int n = 1; n < Strip_num; n++){
    
    rect(horizontal_margin + sq_distance + Big_sl + sq_distance,vertical_margin + Avatarsq_sl + 2*v_a + (n - 1)*sq_distance,Strip_width,Strip_height,10);
    
    }
    
    rect(sq_distance + horizontal_margin,vertical_margin + Avatarsq_sl + 2*v_a + 4*sq_distance,2.3*Strip_width,Strip_height,10);
    
    rect(sq_distance + horizontal_margin,vertical_margin + Avatarsq_sl + 2*v_a + 5*sq_distance,2.3*Strip_width,Strip_height,10);
    
    for(int n = 1; n <= Strip_num; n++){
      
      for(int l=1; l <=2 ;l++){
    
    rect(horizontal_margin + l*sq_distance + (l-1)*Strip_width,vertical_margin + Avatarsq_sl + 2*v_a + 6*sq_distance + (n-1)*sq_distance,Strip_width,Strip_height,10);
    
    }
    }

}

  public void BagPanel(){
    noStroke();
    fill(60, 100, 100);
    
    rect((width + UI_dis)/2, vertical_margin, UI_width, UI_height);
  
  }

  public void BagSquare(){
    
    
    square_width = (float)UI_width / (float)(col+((col+1)/2.0));
    square_height = (float)UI_height / (float)(row+((row+1)/2.0));
    vs = square_height / 2;
    hs = square_width / 2;
    
    noStroke();
    fill(0, 0, 100);
    
    for(int i = 0; i < row; i++){
      for(int j = 0; j < col; j++)
      {
        image(item[j%3], (j+1)*hs + (j*square_width) + (width + UI_dis)/2, (i+1)*vs + (i * square_height) + vertical_margin, square_width, square_height);
      }
    }
  }
  
  public void display_bag(){
    PropertyPanel();
    PropertySquare();
    BagPanel();
    BagSquare();
  }
}
