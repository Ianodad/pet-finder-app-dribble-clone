// ignore_for_file: unrelated_type_equality_checks

class ValidationMixin {
  String? validateEmail(value) {
    String pattern = r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
    final nameRegExp = RegExp(pattern);
    if (!nameRegExp.hasMatch(value)) {
      return "Please enter valid email address";
    }
    return null;
  }

  String? validateUsername(value) {
    if (value.length == 3) {
      return 'Please enter mobile number';
    }
    return null;
  }

  String? validatePassword(value) {
    if (value!.length < 4) {
      return "Password Must be greater then 4 characters";
    }
    return null;
  }

  String? validatePhoneNumber(value) {
    String pattern = r'^0(7(?:(?:[129][0-9])|(?:0[0-8])|(4[0-1]))[0-9]{6})$';
    final regexPhoneNumber = RegExp(pattern);
    if (value.length == 0) {
      return 'Please enter mobile number';
    } else if (!regexPhoneNumber.hasMatch(value)) {
      return "Phone number must be kenyan number";
    }
    return null;
  }
}
