import 'dart:convert';
import 'dart:io';

import 'package:dartpad/lista1/exercicio1/calculadora.dart' as calculadora;

void main(List<String> arguments) {
  print("Escreva a quantidade de morangos (kg):");
  double quantidadeDeMorangos =
      double.parse(stdin.readLineSync(encoding: utf8)!);
  print("Escreva a quantidade de maças (kg):");
  double quantidadeDeMacas = double.parse(stdin.readLineSync(encoding: utf8)!);

  print(
      "Total a pagar: ${calculadora.calculatePrice(quantidadeDeMorangos, quantidadeDeMacas)}");
}
