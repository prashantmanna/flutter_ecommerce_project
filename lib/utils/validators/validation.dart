
class SValidator{

  static String? validateEmptyText(String? fieldname,String? val){
    if(val == null || val.isEmpty){
      return '$fieldname is required';
    }
    return null;
  }
  static String? validateEmail(String? value){
    if(value == null || value.isEmpty){
      return 'Email is Required';
    }

    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if(!emailRegExp.hasMatch(value)){
      return 'Invalid email address';
    }

    return null;

  }


  static String? validatePassword(String? value){
    if(value == null || value.isEmpty){
      return 'Password is required.';
    }

    if(value.length<6){
      return 'Password must be at least 6 characters long.';

    }
    if(!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))){
      return 'Password must contain at least one special characters';
    }

    return null;
  }

  static String? validatePhoneNumber(String? value){
    if(value == null || value.isEmpty){
      return 'Phone number is required';
    }
    final phoneReqExp = RegExp(r'^\d{10}$');
    if(!phoneReqExp.hasMatch(value)){
      return 'Invalid phone number format (10 digits required).';
    }

    return null;
  }



}