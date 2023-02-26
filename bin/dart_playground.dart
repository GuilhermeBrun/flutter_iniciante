import 'dart:io';

import 'package:dart_playground/dart_playground.dart' as dart_playground;

void main(List<String> arguments) {
  print("Qual cálculo deseja fazer?");
  print("1- Cálculo de IMC");
  print("2- Cálculo do número de Fibonacci");
  String? escolhaCalculo = stdin.readLineSync();

  if (escolhaCalculo == '1') {
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
  } else if (escolhaCalculo == '2') {
    print('Quantas vezes deve ser repetida a sequência de Fibonacci?');
    String? nInput = stdin.readLineSync();

    if (nInput != null) {
      int n = int.parse(nInput);

      String result = "";
      for (int i = 1; i <= n; i++) {
        result += "${dart_playground.calculateFibonacci(i)}, ";
      }
      print('A sequência de Fibonacci é: $result');
    }
  } else {
    print('Escolha inválida');
  }
}
