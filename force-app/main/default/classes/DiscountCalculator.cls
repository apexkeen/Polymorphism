public with sharing class DiscountCalculator {
    
    public Idiscount  clsDiscount; 
    private Opportunity opp;

//     List<opportunity> opplist = [Select amount,Parent_Account_Rating__c from Opportunity where id = '0064L000009zwAU'];
// system.debug('amount=**'+ opplist[0].amount);

// DiscountCalculator d = new DiscountCalculator(opplist[0]);
// decimal amt = d.opportunityDiscount();
// system.debug('amt='+ amt);
    public DiscountCalculator(Opportunity opp) { 
            this.opp = opp;
            this.clsDiscount  = DiscountFactory.intiateDiscountHandler(opp);
    }

    public Decimal opportunityDiscount(){

        Decimal result = clsDiscount.calculateDiscount(opp);
        Return result;
    }
}
