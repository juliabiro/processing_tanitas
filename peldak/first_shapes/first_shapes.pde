//parancsok:
// a parancsoknak van egy specialis neve, ez egy utasitas a processingnek, hogy mit csinaljon. A parancsnev utan mindig j0n egy par zarojel, ezt tekintsetek ugy, intha felszolito modot olvasnatok: csinald azt, hogy ellipszis!

// a legtobb parancshoz meg kell adnunk parametereket (pl hogy milyen szeles es magas legyen a kor), ezeket a zarojekek koze eirjuk es vesszovel vaasztjuk el

// minden parancs utan teszunk egy pontosvesszot, onnan tudja processing, hogy vege a parancsnak. 

// parancsneve(parameter1,parameter2);


// vaszon meretenek beallitasa
size(500, 500);

// hatter szinenek beallitasa hexa szinkoddal
background(#cccccc);

// piros szin beallitasa 3 komponensu RGB szinekkel
fill(255, 0, 0);

// ellipszis rajzolasa
// az elso ket parameter a hely, a masodik ketto az atmero viszintesen es fuggolegesen
ellipse(150, 150, 150, 100);


// parameterek sorrendje:
// egy parancshoz altalaban tobb szam kell, amik negy kulonbozo dolgot jelentenek. Honnan tudja a processing, hogy melyik szam mit jelent? a parameterek sorrendjebol.

// pl egy teglalap rajzolasanal alapbol az elso ket szam a teglalap bal felso sarjanak poziciojat jeloli, a masodk ket szam pedig a szelesseget es a magassagot. 
// piros negyzet baloldalt alul
rect(200, 400, 50);

