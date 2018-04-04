# Progetto Informatica 21/4 (e forse oltre...)

**Disclaimer:** questo file non costituirà documentazione utile ma avrà
semplicemente la funzione di tenere traccia di tutto ciò che deve ancora essere
implementato, delle caratteristiche dell'applicazione e di tutto quello che
riterremo abbia un minimo a che fare con questi 2 macro-settori.

## Metodi Base e loro Caratteristiche
Di seguito sono elencati tutti i metodi che costituiscono parte integrate
dell'applicazione (per essere espliciti: tutti quelli definiti direttamente da
noi e non dall'utente) divisi per tipologia e con annessi argomenti.

## Metodi Crittografici
* Cesare (standard, parametrico e con doppia chiave):
    - testo in chiaro
    - chiave numerica (eventualmente doppia, per versione con separazione fra vocali e consonanti)
* Atbash (molto simile a Cesare)
    - testo in chiaro
    - chiave numerica
* Polibio
    - testo in chiaro
    - n. di colonne per tabella di cifratura differente
    - (tabella di cifratura -> in realtà necessaria solo a livello di codice)
* Vigenere
    - testo in chiaro
    - chiave alfabetica (a livello di codice, necessaria una funzione per la
      generazione della chiave di lunghezza appropriata anche randomicamente)
    - (tabella di cifratura -> v. Polibio)
* Pizzini
    - testo in chiaro
    - chiave numerica

## Metodi per il Calcolo Numerico
I metodi per il calcolo numerico sono più complicati soprattutto per ciò che
riguarda la gestione degli argomenti poiché in realtà si suddividono in ulteriori
4 categorie a seconda del risultato finale che si vuole ottenere.

### Calcolo della Radice Quadrata di un numero
* Metodo Babilonese
    - radicando
    - numero di iterazioni
    - (valore iniziale -> solo a livello di codice e pari a **radicando**/2)
* Metodo di Cataldi
    - radicando
    - numero di iterazioni
    - (valore iniziale -> solo a livello di codice e pari a 0)
* Metodo di Newton
    - radicando
    - numero di iterazioni
    - (valore iniziale -> solo a livello di codice e pari a 0.5)

### Calcolo del valore di PI Greco
* Metodo di Eulero
    - numero di iterazioni
* Metodo di Leibniz
    - numero di iterazioni
* Metodo di Archimede
    - numero di iterazioni (in realtà é il numero di lati che viene moltiplicato
      per 2 ad ogni iterazione, simulando un poligono con numero di lati pari a 2n)
* Metodo di Montecarlo
    - numero di iterazioni (**N.B.** molto più alto degli altri, ca 1000 volte maggiore)
* Metodo di Nilakantha
    - numero di iterazioni

### Calcolo degli zeri di una funzione fra 2 estremi dati
* Metodo di bisezione
    - 1st estremo (a)
    - 2nd estremo (b)
    - numero di iterazioni
    - funzione
* Metodo delle corde
    - 1st estremo (a)
    - 2nd estremo (b)
    - numero di iterazioni
    - funzione
* Metodo delle secanti
    - 1st estremo (a)
    - 2nd estremo (b)
    - numero di iterazioni
    - funzione
* Metodo delle tangenti
    - 1st estremo (a)
    - 2nd estremo (b)
    - numero di iterazioni
    - funzione

**N.B.:** La funzione **NON** deve essere scritta in codice JS poiché altrimenti
si rischia di eseguire codice maligno (e poi, siamo realisti, quanti utenti
saprebbero scrivere una funzione utilizzando JavaScript???😓😅)

### Calcolo del valore del numero di Nepero (*e*)
* Ehm...non mi ricordo come si chiama😅

Per il momento é tutto! Al prossimo **update!**😄
