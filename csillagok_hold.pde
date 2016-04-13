class Csillag {
  float x=0;
  float y=0;
  float r=0;

  void ragyogj() {
    fill(#F7F7A2);
    noStroke();
    ellipse(x, y, r, r);
  }

  void szuless() {
    x=random(0, width);
    y=random(0, height);
    r=random(1, 5);
  }
}

class Hold {
  float x;
  float y;
  float r;

  void vilagits() {
    fill(#F7F7A2);
    noStroke();
    ellipse(x, y, r*2, r*2);
    fill(#2C2AB7);
    ellipse(x+r*0.7, y-r*0.7, 2*r, 2*r);
  }
  
  void mozogj(){
    x=x+0.5;
  
  }
}

Csillag cs1=new Csillag();
Csillag cs2=new Csillag();
Csillag cs3=new Csillag();
Hold hold=new Hold();
  Csillag[] csillagok= new Csillag [1000];
void setup() {
  size(500, 500);
  
  
  int szamlalo=0;
  while (szamlalo<1000){
    csillagok[szamlalo]= new Csillag();
    csillagok[szamlalo].szuless();
    szamlalo=szamlalo+1;
  }
  cs2.szuless();
  cs3.szuless();

  hold.x=50;
  hold.y=75;
  hold.r=40;
}

void draw() {
  background(#2C2AB7);
  //cs1.szuless();
  //cs2.szuless();
  //cs3.szuless();
  //cs1.ragyogj();
  //cs2.ragyogj();
  //cs3.ragyogj();
  hold.vilagits();
  hold.mozogj();

  
  int szamlalo=0;
  while (szamlalo<1000){
    
    csillagok[szamlalo].ragyogj();
    szamlalo=szamlalo+1;
  }
  

}