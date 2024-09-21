import 'package:intl/intl.dart';

class Formatter{
  static String formatDate(DateTime? date){
    date ??= DateTime.now();
    return DateFormat("dd-mm--yyyy").format(date);
  }
  
  static String formatCurrency(double amount){
    return NumberFormat.currency(locale: 'en_US',symbol: '\$').format(amount);
  }
  static String formatPhoneNumber(String phoneNumber){
    if(phoneNumber.length == 10){
      return phoneNumber;
    }

    return phoneNumber;
  }




  
}