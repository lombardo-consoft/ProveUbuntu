@isTest
public class TemperatureConcerterTest {
   @isTest static void testWarmTemp(){
        Decimal celsius = TemperatureConverter.FToC(70);
        System.assertEquals(21.11, celsius);
         
    }
   @isTest static void testFreezingPoing(){
        Decimal celsius = TemperatureConverter.FToC(32);
        System.assertEquals(0, celsius);
    }
    
   @isTest static void testBoilingPoint(){
        Decimal celsius = TemperatureConverter.FToC(212);
        System.assertEquals(100, celsius, 'Il punto di ebollizione non raggiunto');
    }
   @isTest static void testNegativeTemp(){
         Decimal celsius = TemperatureConverter.FToC(-10);
        System.assertEquals(-23.33, celsius);
    }
}