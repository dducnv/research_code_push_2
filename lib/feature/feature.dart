import 'package:research_code_push_2/ext/extention.dart';
import 'package:research_code_push_2/utils/utils.dart';

bool login(String? email, String? password) {
  if (email.isNullOrEmpty || password.isNullOrEmpty) {
    return false;
  }

  return Validator.validateEmail(email!) && Validator.validatePassword(password!);
}