// questo è un commento
// la riga di commento è ignorata dal compilatore
// il compilatore è un software che legge il nostro codice eseguendo le istruzioni
// la struttura di un codice di programmazione è formato da 3 parti: commento , parole chiave e istruzioni

import("stdfaust.lib");

// _ canale audio
// + - * / operatori matematici  + somma , - sotrazione , * moltiplicazione , / divisione
// _:_ due punti flusso seriale
// _,_ f virgola flusso parallelo
// ogni riga finisce con un ; punto e virgola
//process = _+_ , _+_ , _ , _  ;
process = _ * 0.5;
