class SPricingCalculator{
  static double calculateTotalPrice(double productPrice,String location){
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippingCart = getShippingCost(location);
    double totalPrice = productPrice + taxAmount + shippingCart;
    return totalPrice;
  }

  static String calculateShippingCost(double productPrice,String location){
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  static String calculateTax(double productPrice,String location){
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxRateForLocation(String location){
    return 0.10;
  }
  static double getShippingCost(String location){
    return 5.00;
  }



}