//parancsok:
// a parancsoknak van egy specialis neve, ez egy utasitas a processingnek, hogy mit csinaljon. A parancsnev utan mindig j0n egy par zarojel, ezt tekintsetek ugy, intha felszolito modot olvasnatok: csinald azt, hogy ellipszis!

// a legtobb parancshoz meg kell adnunk parametereket (pl hogy milyen szeles es magas legyen a kor), ezeket a zarojekek koze eirjuk es vesszovel vaasztjuk el

// minden parancs utan teszunk egy pontosvesszot, onnan tudja processing, hogy vege a parancsnak. 

// parancsneve(parameter1,parameter2);


// vaszon meretenek beallitasa
size(500, 500);

// hatter szinenek beallitasa hexa szinkoddal
background(#ccccc);

// piros szin beallitasa 3 komponensu RGB szinekkel
fill(255, 0, 0);

// ellipszis rajzolasa
// az elso ket parameter a hely, a masodik ketto az atmero viszintesen es fuggolegesen
ellipse(250, 250, 150, 100);


// parameterek sorrendje:
// egy ellipszis rajzolasahoz 4 szam kell, amik negy kulonbozo dolgot jelentenek. Honnan tudja a processing, hogy melyik szam jelenti az X poziciot es melyik a fuggeleges atmerot? a parameterek sorrendjebol. Az elso parameter mindig azt jelenti, hogy X pozicio, a masodik mindig azt hogy y pozicio, a harmadig mindig a viszszintes atmerot, a negyedik mindig a fuggoleges atmerot. 
// az osszes tobbi parancsnal is igy van, mindegyik parameternek van egy specialis jelentese 
