import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginViewModel {
  final SharedPreferences sharedPreferences;

  LoginViewModel({required this.sharedPreferences});

   bool login(String email, String password) {
    final storedPassword = sharedPreferences.getString(email);

    return password == storedPassword;
  }

  Future<bool> logout() async {
    bool success = false;
    try {
      success = await sharedPreferences.clear();
    } catch (e) {
      success = false;
    }
    
    if (!success) {
      throw FlutterError('Logout failed');
    }

    return success;
  }
}