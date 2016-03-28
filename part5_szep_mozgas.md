# Mitől lesz szép a mozgás? 

Azt már tudjuk, hogy mitől mozog a labdánk: az x és az y koordinátáját változtatjuk. Azt is tudjuk, hogy mitől mozog gyorsabban vagy lassabban: attól, hogy többel vagy kevesebbel változtatjuk. Az, hogy mennyivel változtatjuk, az a mozgás *sebessége*. 
De mitől mozog valami a képenyőn szépen? a tapasztalat az, hogy attól, hogy a mozgás sebessége is változik. A való életben a dolgok nem egyenletes sebességgel mosognak, hanem gyorsulnak, lassulnak. Pl ha elgurítunk egy labdát, akkor az nem egyenletes sebességgel gurul, aztán hirtelen megáll, hanem szépen fokozatosan lelassul. Dejó lenne, ha ezt is tudná a programunk!
Ezt úgy tudjuk elérni, hogy külön választjuk a mozgatást, és a mozgás megváltoztatását. A mozgás mindig ugyanúgy működik: hely=hely+sebesség. A mozgás megváltoztatásánál pedig nem a helyet, hanem a sebességet változtatjuk meg. 
Íme a példa, amiben a felfele gomb megnyomásával felfele lehet vinni a labdát, egyre gyorsabban:

```
class Labda(){
    float x;
    float y;
    float sebx;
    float seby;

    //tobbi reszek

    void mozogj(){
        x=x+sebx;
        y=y+seby;
    }

    void fel(float f){
        seby=seby-f;
    }
}
void setup(){
    piros_labda.sebx=0;
    piros_labda.seby=0;
}
//korabbi reszek
void draw(){
    if (piros_labda.bent_van()){
        piros_labda.mozogj();
    }
    piros_labda.rajzold_ki();
}

void keyPressed(){
    if (key==CODED){
        if (keyCode==UP){
            piros_labda.fel(1);
        }
    }    
}
```

A labda kezdetben áll. Ha megnyomjuk a felfele gombot, akkor elkezd mozogni 1 sebességgel. ha megint megnyomjuk a gombot, akkor már 2 sebességgel fog mozogni. Ha működne a lefele gomb, akkor az csökkentné a felfelé irányuló sebességet, vagyis ha megnyomjuk, akkor alabda nem rögtön lefelé indulna el, hanem csak lassabban menne felfelé. Ha megint megnyomjuk (vagyis igyanannyi fel és le parancs volt) akkor pont megáll a labda. 
Ettől a fajta irányítástól a labda mozgáda rögtön természetesebb. Ahhoz, hogy irány váltson, először le kell lassulnia, és utána tud elkezdeni mozogni a másik irányba. 

### feladat
Egészítsd ki a progrmaot, hogy minden irányban lehessen változtatni a labda sebességét. 

## Egy kis trükk
Ha már kész a feladat, akkor látszik, hogy a labda még mindig elég darabosan mozog, és elég nehezen irányítható. Pl ha megnyomtuk a felfele gombotk, akkor megy megy, és nem áll meg. Mi valami olyasmit szeretnénk elérni, hogy csak valamennyit menjen a labda fel vagy le, de azt a gombnyomsoktól függően gyorsabban, vagy lassabban. Ezt úgy lehet elérni, hogy a mozgás során a labda sebességét folyamatosan csökkentjük, irányítástól függetlenül. Ez pont olyan lesz, mint a súrlódás, és ettől szép lesz a mozgáás, mert egy idő után magától leáll. 
A mozogj függvényt kell kiegészíteni:
```
void mozogj{
    x=x+sebx;
    y=y+seby;
    sebx=sebx*0.9;
    seby=seby*0.9;
}
```
A csökkentést úgy csináltuk, hogy minden körben a sebességet beszoroztuk egy 1-nél kicsivel kisebb számmal. Ez nem tűnik soknak, de mivel a draw másodpercenként 60-szor lefut, ezért 60szor csökken a sebesség kb 10%kal, ami már elég sok. Kísérletezd ki, hogy milyen lasulással lesz szép a mozgás!
