# Feladat: Művészeti pong játék

Legyen a játékban egy irányítható ütő, és egy magától mozgó labda. A labda pattanjon vissza az ütőről és a falakról.

1. Először készítsd el a labdát. 
    - Késztís egy labda osztályt, ami egyenletes sebességgel tud mozogni a kép közepéről átlósan le
    - változtasd meg a kódot, hogy random irányba mozogjon
    - add hozzá a logikát, hogy a labda a kép szélénél megforduljon. Pl  a draw-ban:`if (labda.bent_van()){labda.mozogj();} else {labda.fordulj();}`

2. készítsd el az ütőt
    - az ütő lehet egy téglalap
    - az ütőnek csak egy vonal mentén kell mozognia, vagyis elég ha x vagy y irányú mozgása van, de legyen ennek is sebessége (változóban)
    - add hozzá a billentyűs irányítást
    - adj hozzá lassulást, hogy szépen mozogjon
    - adj hozzá logikát, hogy ne tudjon kimenni a képről! a kép szélén váltzon az ütő sebessége 0-ra

3. Ütközés
Ez az amit még nem csináltunk. A labdának az ütőről is vissza kell pattannia. Erre is érdemes csinálni egy függvényt, pl a Labdába, ami hasonlóan a képenbelüliség-ellenőrző függvényhez egy kérdésre válaszol, méghozzá arra, hogy nekiment-e a labda az ütőnek. A nehézség az, hogy hogyan döntöd el, hogy a labda nekiment-e az ütőnek? Pl legyen az ütő 100 pont széles, és az y=300 vonalon mozog jobbra és balra (vagyis az y koordinátája mindig 300, az x koordinátája változik). A labda felette van és 50 a sugara. Képzeljük el, hogy a labda éppen megérinti az ütőt: ekkor a labda y koordinátája biztosan 250 (hiszen 50nel van felette a 300nak), és az x koordinátája az ütő bal és jobb széle között van, vagyis uto.x és uto.x+100 között. 
    - tedd bele az ütközés detektálást egy függvénybe
    - változtasd meg a draw-ban a mozgás logikáját a draw-ban úgy, hogy ütközésre is forduljon meg a labda. 
    - tegyél egy kis tévedésnyi helyet az ütközésdetektálásba. Pl ha a labda sebessége lefele 2, akkor elődfordulhat, hogy az egyik pillanatban 249en, utána meg 251-en lesz, és sosem lesz pont 250 az y koordinátája. Adj meg inkább egy intervallumot, hogy azon belül legyen érvényes az ütközés



## további finomítások

A. Két ütő
Csinálj két ütőt, a labda mindkettőről pattanjon vissza. A második ütőt pl az a és d billentyűkkel lehessen irányítani. 

B. Lehessen veszíteni
Ha a labda elmegy az ütő mellett, akkor legyen vége a játéknak, és induljon el a labda újra középről.

C. Pontszámítás
Egy változóban tárold, hogy hányszor ment ki a labda, és írd ki. ha két ütőd is van, akkor máris kész a vreszeny!
