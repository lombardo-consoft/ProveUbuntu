@isTest
public class Test_TvRemoteControl {
  
    @isTest static void testVolumePiu(){
        TVRemoteControl TvRemote= new TVRemoteControl(1);
        
        Integer volTest= TvRemote.increaseVolume(100);
        System.assertEquals(50, volTest);
        
    }
    @isTest static void testVolumeMeno(){
        TVRemoteControl TvRemote= new TVRemoteControl(5);
        Integer volTest = TvRemote.decreaseVolume(6);
        System.assertEquals(0, volTest);
    }
    @isTest static void testOpzioni(){
        
        String testOpzioni = TVRemoteControl.getMenuOptions();
        System.assertEquals('AUDIO SETTINS- VIDEO SETTINGS', testOpzioni);
        
    }
    
}