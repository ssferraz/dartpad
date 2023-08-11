import 'package:dartpad/lista1/exercicio2/funcionario.dart';
import 'package:test/test.dart';

void main() {
  group('Teste de qualificação para aposentadoria', () {
    late int anoAtual;

    setUp(() {
      anoAtual = DateTime.now().year;
    });

    test('Empregado qualificado com base na idade', () {
      Funcionario f = Funcionario(
          nome: 'Maria',
          codigo: 2,
          anoNascimento: anoAtual - 60,
          anoIngresso: anoAtual - 40);
      expect(f.verificaAposentadoria(anoAtual), isTrue);
    });

    test('Empregado qualificado com base na experiência de trabalho', () {
      Funcionario f = Funcionario(
          nome: 'João',
          codigo: 3,
          anoNascimento: anoAtual - 48,
          anoIngresso: anoAtual - 30);
      expect(f.verificaAposentadoria(anoAtual), isTrue);
    });

    test('Empregado qualificado com base na idade e experiência de trabalho',
        () {
      Funcionario f = Funcionario(
          nome: 'Pedro',
          codigo: 4,
          anoNascimento: anoAtual - 65,
          anoIngresso: anoAtual - 35);
      expect(f.verificaAposentadoria(anoAtual), isTrue);
    });

    test('Empregado não qualificado', () {
      Funcionario f = Funcionario(
          nome: 'Ana',
          codigo: 5,
          anoNascimento: anoAtual - 30,
          anoIngresso: anoAtual - 5);
      expect(f.verificaAposentadoria(anoAtual), isFalse);
    });
  });
}
