public with sharing class DiscountCalculator {
    
    public Idiscount  clsDiscount; 
    private Opportunity opp;
    public DiscountCalculator(Opportunity opp) { 
            this.opp = opp;
            this.clsDiscount  = DiscountFactory.intiateDiscountHandler(opp);
    }

    public Decimal opportunityDiscount(){

        Decimal result = clsDiscount.calculateDiscount();
        Return result;
    }
}
