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

  void mozogj() {
    x=x+0.5;
  }
}

class Felhok {
  float x;
  float y;
  float r1;
  float r2;

  void vilagits() {
    fill(#174764);
    noStroke();
    ellipse(x, y, r1, r2);
  }

  void szuless() {
    x=random(0, width);
    y=random(0, height);
    r1=random(30, 50);
    r2=random(30, 80);
  }



  void mozogj() {

    if (x>50) {
      x=x-2;
    }
  }
  void mozogj2() {

    if (x>70) {
      x=x-0.3;
    }
  }
}

Felhok felho1=new Felhok();
Felhok felho2=new Felhok();
Csillag cs1=new Csillag();
Csillag cs2=new Csillag();
Csillag cs3=new Csillag();
Hold hold=new Hold();

Csillag[] csillagok= new Csillag [1000];
Felhok[] felhok= new Felhok [10];
void setup() {
  size(500, 500);


  int szamlalo=0;
  while (szamlalo<1000) {
    csillagok[szamlalo]= new Csillag();
    csillagok[szamlalo].szuless();
    szamlalo=szamlalo+1;
  }
  cs2.szuless();
  cs3.szuless();

  int szamlalo2=0;
  while (szamlalo2<10) {
    felhok[szamlalo2]= new Felhok();
    felhok[szamlalo2].szuless();
    szamlalo2=szamlalo2+1;
  }

  hold.x=50;
  hold.y=75;
  hold.r=40;

  felho1.x=300;
  felho1.y=100;
  felho1.r1=100;
  felho1.r2=60;

  felho2.x=200;
  felho2.y=200;
  felho2.r1=200;
  felho2.r2=60;
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

  felho1.vilagits();
  felho1.mozogj();

  felho2.vilagits();
  felho2.mozogj2();

  int szamlalo2=0;
  while (szamlalo2<10) {

    felhok[szamlalo2].vilagits();
    szamlalo2=szamlalo2+1;
  }
  felhok[0].vilagits();
  felhok[0].mozogj2();


  int szamlalo=0;
  while (szamlalo<1000) {

   csillagok[szamlalo].ragyogj();
   szamlalo=szamlalo+1;
  }
}