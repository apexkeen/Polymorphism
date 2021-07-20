public with sharing class DiscountFactory {
    

    public static Idiscount intiateDiscountHandler(Opportunity opp){ 
        
        // Switch on opp.newSObject() {
        //     when opp.amount >10000{
        //             return  new DiscountLarge();
        //     }
        //     when else {
        //             return  new DiscountSmall();
        //     }
            
        // }

        if (opp.amount > 10000)
             return new DiscountLarge(opp);
        else 
            return new DiscountSmall(opp);

    }
}
