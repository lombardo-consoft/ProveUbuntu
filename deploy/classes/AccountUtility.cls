public class AccountUtility {
    public static void viewAnnualRevenue(){
      List<Account> accountsList =  [Select Name, AnnualRevenue from Account ];
        for(Account acc : accountsList){
            accountsList.add(acc);
            String acctRev = 'Name :'+ acc.Name+ 'AnnualRevenue :'+ acc.AnnualRevenue;
            SYstem.debug(acctRev);
        }
    }
}