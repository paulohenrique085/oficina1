import 'dart:io';

class Calculadora {
  double num1, num2;

  somar(double num1, double num2) {
    double resultado = num1 + num2;
    return print("o resultado é: $resultado");
  }

  subtrair(double num1, double num2) {
    double resultado = num1 - num2;
    return print("o resultado é: $resultado");
  }

  dividir(double num1, double num2) {
    double resultado = num1 / num2;
    return print("o resultado é: $resultado");
  }

  multiplicar(double num1, double num2) {
    double resultado = num1 * num2;
    return print("o resultado é: $resultado");
  }

  Calculadora({this.num1, this.num2});
}

void main() {
  int controle = 1;

  while (controle == 1) {
    print("----OPERAÇÃO DESEJADA---\n");
    print("1-SOMAR\n2-SUBTRAIR\n3-DIVIDIR\n4-MULTIPLICAR\n0-SAIR");
    int numero = int.parse(stdin.readLineSync());

    switch (numero) {
      case 1:
        print("digite o primeiro numero:");
        double numero1 = double.parse(stdin.readLineSync());
        print("digite o segundo numero:");
        double numero2 = double.parse(stdin.readLineSync());
        Calculadora soma = Calculadora(num1: numero1, num2: numero2);
        soma.somar(numero1, numero2);
        break;

      case 2:
        print("digite o primeiro numero:");
        double numero1 = double.parse(stdin.readLineSync());
        print("digite o segundo numero:");
        double numero2 = double.parse(stdin.readLineSync());
        Calculadora soma = Calculadora(num1: numero1, num2: numero2);
        soma.subtrair(numero1, numero2);
        break;

      case 3:
        print("digite o primeiro numero:");
        double numero1 = double.parse(stdin.readLineSync());
        print("digite o segundo numero:");
        double numero2 = double.parse(stdin.readLineSync());
        Calculadora soma = Calculadora(num1: numero1, num2: numero2);
        soma.dividir(numero1, numero2);
        break;

      case 4:
        print("digite o primeiro numero:");
        double numero1 = double.parse(stdin.readLineSync());
        print("digite o segundo numero:");
        double numero2 = double.parse(stdin.readLineSync());
        Calculadora soma = Calculadora(num1: numero1, num2: numero2);
        soma.multiplicar(numero1, numero2);
        break;
      case 0:
        controle = 0;
        print("obrigado, volte sempre!");
        break;
      default:
    }
  }
}
