import("stdfaust.lib");
freq = vslider("[01] frequenza", 440, 20, 20000, 1);
gain1 =vslider("[02]ampiezza1", 0., 0., 1., 0.01); 
gain2 =vslider("[03]ampiezza2", 0., 0., 1., 0.01);
gain3 =vslider("[04]ampiezza3", 0., 0., 1., 0.01);
gain4 =vslider("[05]ampiezza4", 0., 0., 1., 0.01);
gain5 =vslider("[06]ampiezza5", 0., 0., 1., 0.01);
gain6 = vslider("[07]ampiezza6", 0., 0., 1., 0.01);
gain7 =vslider("[08]ampiezza7", 0., 0., 1., 0.01);
gain8 =vslider("[09]ampiezza8", 0., 0., 1., 0.01);
gain9 =vslider("[10]ampiezza9", 0., 0., 1., 0.01);
gain10 =vslider("[11]ampiezza10", 0., 0., 1., 0.01);
gain11 =vslider("[12]ampiezza11", 0., 0., 1., 0.01);
gain12 =vslider("[13]ampiezza12", 0., 0., 1., 0.01);
gain13 =vslider("[14]ampiezza13", 0., 0., 1., 0.01);
gain14 =vslider("[15]ampiezza14", 0., 0., 1., 0.01);
gain15 =vslider("[16]ampiezza15", 0., 0., 1., 0.01);
gain16 =vslider("[17]ampiezza16", 0., 0., 1., 0.01);
process =hgroup("banco di oscillatori armonici", 
os.osc(freq) *(gain1),os.osc(freq*2) *(gain2),os.osc(freq*3) *(gain3),os.osc(freq*5) *(gain4),os.osc(freq*6) *(gain5),os.osc(freq*7) *(gain6),os.osc(freq*8) *(gain7),os.osc(freq*9) *(gain8),os.osc(freq*10) *(gain9),os.osc(freq*11) *(gain10),os.osc(freq*12) *(gain11),os.osc(freq*13) *(gain12),os.osc(freq*14) *(gain13),os.osc(freq*15) *(gain14),os.osc(freq*16) *(gain15),os.osc(freq*17) *(gain16)):> _ <:_,_;
//vslider("frequenza",N,N,N,N) è pomello che serve per regolare la frequenza.primo numero indica la frequenza fondamentale, secondo numero la freq minima ,il terzo la freq massima e il quarto indica le variazioni traa una frequenza e l altra 
//osc(oscillatore) sta dendro la libreria os
//fc>2fmax
//<: è il segno del diviso o divide (in inglese),divide più segnali il segnale in entrata
//:> é il segno di combina o combine (in inglese),somma più segnali e li trasforma in un canale
//si.bus creamo un numero canali indefinito scrivendo il numero di canali che ci serve nelle parentesi
//per aggiungere il gain bisogna moltiplicarlo per freq
// gli armonici hanno un numero finito cioè fino a 20000Hz,per scoprire quanti armonici possiamo udire con la nostra banda audio dobbiamo dividere 20000 per la frequenza fondamentale
