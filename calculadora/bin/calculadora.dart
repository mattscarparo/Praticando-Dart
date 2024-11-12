import 'dart:io';

void main() {
  double primeiroNumero = double.parse(stdin.readLineSync()!);
  double segundoNumero = double.parse(stdin.readLineSync()!);

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

  soma();
}