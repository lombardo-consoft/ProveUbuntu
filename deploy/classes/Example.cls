public class Example {
    static Integer x,y;
    //contruttore senza argomenti
    
    public Example(){
        //chiama i 2 argomenti del costruttore usanto this
        //this(14,2);
        system.debug('Ciao io sono il costruttore senza parametri'); 
    }
		// costruttore con 2 paramentri
    public Example (Integer a, Integer b){
        this();
        system.debug('Ciao io sono il costruttore con 2 parametri');
        system.debug(a/b);
     }
    }