size(500, 500);
//van olyan is, hogy meg lehet valtoztatni, hogy mit jelentsenek a parameterek: ilyen pl a rectMode parancs
// ennek negy valtozata is van, es ugyanazokkal a prameterekkel hasznalva mast es mast rajzolnak

// most a parameterek azt mondjak meg, hogy hol legyen a teglalap kozepe, es milyen sugaru legyen, vagyis mekkor a kozepetol a szeleig
rectMode(RADIUS);
//kek
fill(#00ffff);
rect(350, 350, 150, 150);

// most a parameterek azt mondjak meg, hogy hol legyen a teglalap kozepe, es milyen szeles es magas legyen
rectMode(CENTER);
// zold teglalap
fill(#00ff00);
rect(350, 350, 150, 150);



rectMode(CORNER);
// ez a deafult beaillitas 
//sarga
fill(#ff00ff);
rect(50, 50, 200, 200);

// igy a bal felso es a jobb also koordinatakat adjuk meg
rectMode(CORNERS);
//magenta
fill(#ffff00);
rect(50, 50, 150, 150);


// olyan is van, hogy egy parancsnak lehet tobb vagy kevesebb parametert
// is adni, es ugy is ertelmes, csak mast jelent. 
// pl a rectnek lehet 4 helyett 8 parametert megadni, 
// es akkor azok azt jelentik, hogy mennyore legyen lekerekitve a 4 sarok

//prios valami jobb felul, 0-tol 25ig kerekitett sarkokkal
rectMode(CORNER);
fill(#ff0000);
rect (350, 10, 100, 100, 0, 5, 10, 25);