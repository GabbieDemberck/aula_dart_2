import 'dart:io';

double calcIMC;
main() {
  calculoImc();
  impirimirResultado();
}

calculoImc() {
  print("Digite seu peso.");
  String textPeso = stdin.readLineSync();
  int peso = int.parse(textPeso);

  print("Digite sua altura.");
  String textAltura = stdin.readLineSync();
  double altura = double.parse(textAltura);

  calcIMC = peso / (altura * altura);
}

impirimirResultado() {
  if (calcIMC < 18.5) {
    print("Abaixo do peso.");
  } else if (calcIMC > 18.5 && calcIMC < 24.9) {
    print("Peso normal.");
  } else if (calcIMC > 25 && calcIMC < 29.9) {
    print("Sobrepeso.");
  } else if (calcIMC > 30 && calcIMC < 34.9) {
    print("Obesidade grau 1.");
  } else if (calcIMC > 35 && calcIMC < 39.9) {
    print("Obesidade grau 2.");
  } else {
    print("Obesidade grau 3.");
  }
}
