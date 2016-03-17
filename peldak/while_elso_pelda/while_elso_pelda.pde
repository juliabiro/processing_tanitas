// while
// a while olyan mint az if, hogy egy feltételhez kötődően hajt végere pár utasítást
// abban különbözik, hogy nem egyszer hajtja végre, hanem mindaddig, amíg a feltétel igaz
// vagyis olyan logikát lehet vele megvalósítáani, hogy 
// amíg igaz az hogy ..., addig csináld azt hogy

// szyintaxis :
// while (feltétel ){
  // utasítások
//}

// amire figyelni kell, az az, hogy ennek az egésznek akkor van értelme, 
// ha az a valmi, amiről a feltétel szól, az megváltozik a while futása közben
// különben a feltétel vagy minig hamis lesz, vag ymindig igaz. 
// előbbi esetben a while sose fut le, utóbbiban viszont meg sosem áll le, egyik sem jó

//ezért jellemzően egy while ciklus (így hivják a zismétlődő szerkezeteket) olya, 
// hogy a feltételben vizsgálunk eg változót, amit a cikluson belól megváltoztatunk

// az alábbbi példában az x változót vizsgáljuk, és a while-on belül meg is változtatjuk

size(500, 500);
int x=0;

while (x<500){
  ellipse(x, 100, 50, 50);
  x=x+100;
}