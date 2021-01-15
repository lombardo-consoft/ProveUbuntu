public virtual class HighTechCompany {
    
   List<Prodotto__c> Prodotti = new List<Prodotto__c>();
    public virtual void creaIphone(){
          
        for(Integer i=0; i<6; i++){
            
            Prodotto__c Iphone= new Prodotto__c(Name='Iphone '+i, Prezzo__c= 500+i);
            Prodotti.add(Iphone);
          
        } 
    }
    public virtual void creaIpad(){
           
        for(Integer i=0; i<6; i++){
            Prodotto__c Ipad= new Prodotto__c(Name='Ipad '+i, Prezzo__c= 900+i);
            Prodotti.add(Ipad);
          
        } 
    }
    public virtual void creaMacBookPro(){
          
        for(Integer i=0; i<6; i++){
            
            Prodotto__c MacBookPro= new Prodotto__c(Name='MacBookPro '+i, Prezzo__c= 2500+i);
            Prodotti.add(MacBookPro);
            
        } 
    }
    public virtual void creaMagicMouse(){
      	
        for(Integer i=0; i<6; i++){
            Prodotto__c MagicMouse= new Prodotto__c(Name='MagicMouse '+i, Prezzo__c= 150+i);
            Prodotti.add(MagicMouse);
            
        } 
    }
    
    public virtual void stampo(){
        system.debug(Prodotti);
    }

}