public class div {
    private decimal a,b,c;
    public div (decimal dividendo, decimal divisore){
        a=dividendo;
        b=divisore;
    }
    public void ser_a(decimal dividendo){
        a=dividendo;
    }
    public void set_b(decimal divisore){
        b=divisore;
    }
    public void risultato(){
        c=a/b;
        system.debug('Il risultato è: ' + c);
    }
}