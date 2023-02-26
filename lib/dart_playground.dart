double calculateImc(double altura, peso) {
  double alturaQuadrado = (altura * altura);

  double imc = (peso / alturaQuadrado);

  return imc;
}

int calculateFibonacci(int n) {
  if (n <= 1) {
    return n;
  } else {
    int fibonacci = calculateFibonacci(n - 1) + calculateFibonacci(n - 2);
    return fibonacci;
  }
}
