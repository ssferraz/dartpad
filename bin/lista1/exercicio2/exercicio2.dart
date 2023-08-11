import 'dart:convert';
import 'dart:io';

import 'package:dartpad/lista1/exercicio2/funcionario.dart';

void main(List<String> arguments) {
  List<Funcionario> funcionarios = [];

  while (true) {
    print("Escreva o código do funcionário (ou -1 para sair):");
    int codigo = int.parse(stdin.readLineSync(encoding: utf8)!);

    if (codigo == -1) {
      break;
    }

    print("Digite o nome do funcionario:");
    String nome = stdin.readLineSync()!;

    print("Digite o ano de nascimento do funcionario:");
    int anoNascimento = int.parse(stdin.readLineSync()!);

    print("Digite o ano de ingresso do funcionario:");
    int anoIngresso = int.parse(stdin.readLineSync()!);

    funcionarios.add(Funcionario(
        nome: nome,
        codigo: codigo,
        anoNascimento: anoNascimento,
        anoIngresso: anoIngresso));

    int anoAtual = DateTime.now().year;

    for (var funcionario in funcionarios) {
      int idade = funcionario.getIdade(anoAtual);
      int anosDeTrabalho = funcionario.getAnosDeTrabalho(anoAtual);

      print("Funcionário: ${funcionario.nome}");
      print("Idade: $idade anos");
      print("Tempo de trabalho: $anosDeTrabalho anos");

      if (funcionario.verificaAposentadoria(anoAtual)) {
        print("Requerer aposentadoria\n");
      } else {
        print("Não requerer\n");
      }
    }
  }
}
