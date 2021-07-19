public with sharing class DiscountSmall implements Idiscount {
    
    private Opportunity opp;
    public DiscountSmall(Opportunity opp) {
        this.opp = opp;

    }

    public DiscountSmall(){

    }

    public decimal calculateDiscount(){

        return opp.amount- opp.amount*0.1;

    }

}
