public with sharing class DiscountLarge implements Idiscount {
    private Opportunity opp;

    public DiscountLarge(Opportunity opp){
        this.opp = opp;
    }

    public DiscountLarge(){ 

    }

    public decimal calculateDiscount(Opportunity opp){

        return opp.amount- opp.amount*0.1;

    }
}
