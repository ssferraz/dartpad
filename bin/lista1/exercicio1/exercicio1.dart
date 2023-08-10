import 'dart:convert';
import 'dart:io';

import 'package:dartpad/lista1/exercicio1/exercicio1.dart' as dartpad;

void main(List<String> arguments) {
  print("Escreva a quantidade de morangos (kg):");
  double quantidadeDeMorangos =
      double.parse(stdin.readLineSync(encoding: utf8)!);
  print("Escreva a quantidade de maças (kg):");
  double quantidadeDeMacas = double.parse(stdin.readLineSync(encoding: utf8)!);

  print(
      "Total a pagar: ${dartpad.calculatePrice(quantidadeDeMorangos, quantidadeDeMacas)}");
}
