class ValidationMixin {
  String? validateEmail(value) {
    if (!value!.contains("@")) {
      return "Please enter valid email address";
    }
    return null;
  }

  String? validatePassword(value) {
    if (value!.length < 4) {
      return "Password Must be greater then 4 characters";
    }
    return null;
  }
}
