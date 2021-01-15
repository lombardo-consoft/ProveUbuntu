public class TVRemoteControl {
    // Volume to be modified
    Integer volume;
    //Costant for maxiumim volume value
    static final Integer Max_VOLUME = 50;
    
    //Costruttore
    public TVRemoteControl(Integer v){
        //Set initial value for volume
        volume =v;
    }
    public Integer increaseVolume(Integer amount){
        volume += amount;
        if(volume > MAX_VOLUME){
            volume = MAX_VOLUME;
        }
        return volume;
    }
    public Integer decreaseVolume(Integer amount){
        volume-= amount;
        if(volume < 0){
            volume=0;
        } return volume;
    }
    public static String getMenuOptions(){
        return 'AUDIO SETTINS- VIDEO SETTINGS';
    }
}