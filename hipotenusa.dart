import 'dart:io';

main() {
  print("Digite o tempo em horas");
  double tempoH = double.parse(stdin.readLineSync());

  print("Digite a velocidade média em km/h");
  double velocidadeM = double.parse(stdin.readLineSync());

  double delta = tempoH * velocidadeM;
  print("$delta km");
}
