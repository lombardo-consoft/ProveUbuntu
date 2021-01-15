public class TemperatureConverter {
    //converte la temperatura da Fahrenheit a Celcius e viceversa
    public static Decimal FToC(decimal fh){
        Decimal cs =(fh-32) *5/9;
        return cs.setScale(2);
    }

}