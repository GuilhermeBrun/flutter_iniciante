import 'dart:io';

import 'package:dart_playground/dart_playground.dart' as dart_playground;

void main(List<String> arguments) {
  print("Qual sua altura?");
  String? alturaInput = stdin.readLineSync();

  print("Qual seu peso?");
  String? pesoInput = stdin.readLineSync();

  if (alturaInput != null && pesoInput != null) {
    double altura = double.parse(alturaInput);
    double peso = double.parse(pesoInput);

    print('O IMC é: ${dart_playground.calculateImc(altura, peso)}');
  } else {
    print("Não foi possível fazer o cálculo do IMC");
  }
}
