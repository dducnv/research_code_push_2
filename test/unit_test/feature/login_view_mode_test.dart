import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:research_code_push_2/view_model/login_view_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
class MockSharedPreferences extends Mock implements SharedPreferences {}
void main(){
  group('login', () {
    test('login should return false when the password are incorrect', () {
      final mockSharedPreferences = MockSharedPreferences();
      final loginViewModel = LoginViewModel(sharedPreferences: mockSharedPreferences);
      String email = 'ntminh@gmail.com';
      String password = 'abc'; // incorrect password
      when(() => mockSharedPreferences.getString(email)).thenReturn('123456');

      final result = loginViewModel.login(email, password);
      expect(result, false);
    });

  test('login should return true when the email and password are valid', () {
    final mockSharedPreferences = MockSharedPreferences();
    final loginViewModel = LoginViewModel(sharedPreferences: mockSharedPreferences);
    String email = 'ntminh@gmail.com';
    String password = '123456';
    when(() => mockSharedPreferences.getString(email)).thenReturn('123456');

    final result = loginViewModel.login(email, password);
    expect(result, true);
  });
});
}