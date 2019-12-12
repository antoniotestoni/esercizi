import("stdfaust.lib");
process = no.noise : fi.lowpass(2,60000) : fi.highpass();
//l'algoritmo genera numeri diversi ogni campione
//in base alla frequenza di campionamento si genera ,per ogni campione ,un numero diverso.
//l'oscilloscopio ci mostra l'onda nel dominio del tempo,i tempo è nell asse delle x e nelle y ..... .E'nella destra quando si preme run--->
//lo spettroscopio mostra le variazioni di frequenza nell'ampiezza.Fa vedere il rumore che cambia in quel preciso momento
//il rumore è un qualcosa che non trasmette informazioni o che non capiamo.
//possiamo deffinire un generatore randomico un generatore di rumore.
//il filtro lowpass si traduce in passabasso ,serve ad attenuare l'ampiezza delle frequenze sopra un punto di taglio
//il filtro highpass si traduce in altobasso
