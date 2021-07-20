public with sharing class DiscountSmall implements Idiscount {
    
    private Opportunity opp;
    public DiscountSmall(Opportunity opp) { 
        this.opp = opp;

    }

    public DiscountSmall(){

    }

    public decimal calculateDiscount(Opportunity opp){

        return opp.amount- opp.amount*0.05;

    }

}
