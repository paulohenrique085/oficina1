import 'dart:io';

class Calculadora {
  double num1, num2;

  somar(double num1, double num2) {
    double resultado = num1 + num2;
    return print("o resultado é: $resultado");
  }

  subtrair(double num1, double num2) {
    double resultado = num1 - num2;
    return print(resultado);
  }

  Calculadora({this.num1, this.num2});
}

void main() {
  print("----OPERAÇÃO DESEJADA---\n");
  print("1-SOMAR\n2-SUBTRAIR");

  int numero = int.parse(stdin.readLineSync());
  if (numero == 1) {
    print("digite o primeiro numero:");
    double numero1 = double.parse(stdin.readLineSync());
    print("digite o segundo numero:");
    double numero2 = double.parse(stdin.readLineSync());
    Calculadora soma = Calculadora(num1: numero1, num2: numero2);
    soma.somar(numero1, numero2);
  }
}
