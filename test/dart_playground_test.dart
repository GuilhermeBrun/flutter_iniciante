import 'package:dart_playground/dart_playground.dart';
import 'package:test/test.dart';

void main() {
  test('IMC', () {
    expect(calculateImc(2.00, 112.21), 28.0525);
  });
}
