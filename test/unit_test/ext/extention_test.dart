import 'package:research_code_push_2/ext/extention.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('isNullOrEmpty', () {
    test('isNullOrEmpty should return true when the string is null', () {
    // Arrange
    String? nullString;

    // Act
    bool result = nullString.isNullOrEmpty;

    // Assert
    expect(result, true);
   });

   test('isNullOrEmpty should return true when the string is empty', () {
    // Arrange
    String emptyString = '';

    // Act
    bool result = emptyString.isNullOrEmpty;

    // Assert
    expect(result, true);
  });
   test('isNullOrEmpty should return false when the string is not empty', () {
    // Arrange
    String notEmptyString = 'test';

    // Act
    bool result = notEmptyString.isNullOrEmpty;

    // Assert
    expect(result, false);
  });
  });
}