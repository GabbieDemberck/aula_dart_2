import 'dart:io';

List<Map<String, dynamic>> cadastros = [];

main() {
  bool condicao = true;
  while (condicao) {
    String comando = stdin.readLineSync();
    if (comando == "cadastrar") {
      cadastrar();
    } else if (comando == "imprimir") {
      print(cadastros);
    } else if (comando == "sair") {
      condicao = false;
    }
  }
}

cadastrar() {
  Map<String, dynamic> cadastro = {};
  print("Digite seu nome.");
  cadastro["nome"] = stdin.readLineSync();

  print("Digite sua idade.");
  cadastro["idade"] = stdin.readLineSync();

  print("Digite sua cidade.");
  cadastro["cidade"] = stdin.readLineSync();

  print("Digite seu estado.");
  cadastro["estado"] = stdin.readLineSync();
  cadastros.add(cadastro);
  print("\x1B[2J\x1B[0;0H");
}
