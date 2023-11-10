part of utils;

class InputValidator {
  /// Check whether [value] is empty or not
  static bool? isEmpty(String? value) {
    if (value == null) {
      return true;
    }
    return value.isEmpty;
  }

  /// This method is used to check for valid
  /// Indian Phone numbers;
  static bool? isValidPhone(String? value) {
    if (isEmpty(value) == true) {
      return false;
    }
    return RegExp(r'^[6-9][0-9]{9}').hasMatch(value!);
  }

  /// This method is used to check for valid email address
  static bool? isValidEmail(String? value) {
    if (isEmpty(value) == true) {
      return false;
    }
    RegExp regex = RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
    return regex.hasMatch(value!);
  }
}
