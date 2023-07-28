import 'dart:developer';

import 'package:get/get.dart';

validation(String value, int min, int max, String type) {
  if (type == 'userName') {
    if (!GetUtils.isUsername(value)) {
      return 'Not valid user name ';
    }
  }
  if (type == 'emial') {
    if (!GetUtils.isEmail(value)) {
      return 'Email not valid';
    }
  }
  if (type == 'Number') {
    if (!GetUtils.isPhoneNumber(value)) {
      return 'Email not valid';
    }
  }
  if (value.isEmpty) {
    return "can't be empty";
  }
  if (value.length < min) {
    return "can't be less than $min";
  }
  if (value.length > max) {
    return "can't be more than $max";
  }
}

confirmValidate(String passwordValue, String confirmPasswordValue) {
  if (confirmPasswordValue != passwordValue ||
      confirmPasswordValue.isEmpty ||
      passwordValue.isEmpty) {
    return 'confirm password didnt match password';
  }
}

String? validatePhone(String value, String countryCode, bool validate) {
  switch (countryCode) {
    case '+971': //UAE
      if (value[0] == '5' && value.length == 9) {
        validate = true;
      } else {
        validate = false;
      }
      break;
    case '+20': //Egypt
      if (value[0] == '1' && value.length == 10) {
        validate = true;
      } else {
        validate = false;
      }
      break;
    case '+963': //Syria
      if (value[0] == '9' && value.length == 9) {
        validate = true;
      } else {
        validate = false;
      }
    case '+964': //Iraq
      if (value[0] == '7' && value.length == 10) {
        validate = true;
      } else {
        validate = false;
      }
    case '+962': //Jordan
      if (value[0] == '7' && value.length == 9) {
        validate = true;
      } else {
        validate = false;
      }
      break;
    case '+961': //Lebanon
      if ((value[0] == '3' && value.length == 7) ||
          (value[0] + value[1] == '71' && value.length == 8)) {
        validate = true;
      } else {
        validate = false;
      }
      break;
    case '+968': //oman
      if (value.length == 8) {
        validate = true;
      } else {
        validate = false;
      }
      break;
  }
  log('$validate');
  if (validate == false) {
    return 'Please enter a valid phone number';
  } else {
    return null;
  }
}
