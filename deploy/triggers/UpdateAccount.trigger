trigger UpdateAccount on Account (before update) {
    for (Account a : Trigger.new){
        if( a.industry == 'Agriculture'){
            a.website = 'http://www.agricultureitaly.it ';
        }
    }
}