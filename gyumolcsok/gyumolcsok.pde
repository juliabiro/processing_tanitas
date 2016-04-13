
class Gyumolcskep {
  String nev;
  String szin;
  PImage kep;
}
Table table;
Gyumolcskep[] gykepek=new Gyumolcskep[4];

void setup () {
  size(500,400);
  table = loadTable("gyumolcsok.csv", "header");

  int i=0;
  for (TableRow row : table.rows()) {
    Gyumolcskep gy=new Gyumolcskep();
    gy.nev=row.getString("nev");
    gy.szin=row.getString("szin");
    gy.kep=loadImage(row.getString("kep"));
    gykepek[i]=gy;
    i=i+1;
  }
  int x=0;
  textSize(25);
  fill(#ff0000);
  for (Gyumolcskep gyk: gykepek){
      image(gyk.kep, x,x, 100,100);
      text(gyk.nev, x+110, x+50);
      x=x+100;
  }
}