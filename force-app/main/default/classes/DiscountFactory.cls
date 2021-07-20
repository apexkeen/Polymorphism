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

        CustomerType__mdt customerTypes  = [select InstantiatedClassName__c from CustomerType__mdt where Type__c= : opp.Parent_Account_Rating__c ];
            Type t = Type.forName(customerTypes.InstantiatedClassName__c);
            Idiscount clsHandler =  (idiscount)t.newInstance();
            return clsHandler;

      }
}
