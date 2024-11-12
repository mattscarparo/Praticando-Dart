import 'dart:io';

void main() {
  double primeiroNumero = 0;
  double segundoNumero = 0;
  String operacao = "";
  String? entrada = "";
  List<String> operacoes = <String>["+", "-", "*", "/"];

  void soma() {
    print(primeiroNumero + segundoNumero);
  }

  void subtracao() {
    print(primeiroNumero - segundoNumero);
  }

  void multiplicacao() {
    print(primeiroNumero * segundoNumero);
  }

  void divisao() {
    print(primeiroNumero / segundoNumero);
  }

  void calcular() {
    switch (operacao) {
      case "+":
        soma();

      case "-":
        subtracao();

      case "*":
        multiplicacao();

      case "/":
        divisao();
        break;
    }
  }

  void getOperacao() {
    print("Digite uma operação: ${operacoes.toString()}");
    entrada = stdin.readLineSync();
    if (entrada != null) {
      if (operacoes.contains(entrada)) {
        operacao = entrada!;
      } else {
        print("Operação inválida!");
        getOperacao();
      }
    }
  }

  print("Digite o primeiro valor: ");
  entrada = stdin.readLineSync();
  if (entrada != null) {
    if (entrada != "") {
      primeiroNumero = double.parse(entrada!);
    }
  }

  getOperacao();

  print("Digite o segundo valor: ");
  entrada = stdin.readLineSync();
  if (entrada != null) {
    if (entrada != "") {
      segundoNumero = double.parse(entrada!);
    }
  }

  print("O resultado da operação é: ");

  calcular();
}