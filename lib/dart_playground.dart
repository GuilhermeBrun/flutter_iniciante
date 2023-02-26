double calculateImc(double altura, peso) {
  double alturaQuadrado = (altura * altura);

  double imc = (peso / alturaQuadrado);

  return imc;
}
