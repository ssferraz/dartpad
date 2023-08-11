class Funcionario {
  final String nome;
  final int codigo;
  final int anoNascimento;
  final int anoIngresso;

  Funcionario(
      {required this.nome,
      required this.codigo,
      required this.anoNascimento,
      required this.anoIngresso});

  int getIdade(int anoAtual) {
    return anoAtual - anoNascimento;
  }

  int getAnosDeTrabalho(int anoAtual) {
    return anoAtual - anoIngresso;
  }

  bool verificaAposentadoria(int anoAtual) {
    int idade = getIdade(anoAtual);
    int anosDeTrabalho = getAnosDeTrabalho(anoAtual);

    if (idade >= 65 ||
        anosDeTrabalho >= 30 ||
        (idade >= 60 && anosDeTrabalho >= 25)) {
      return true;
    } else {
      return false;
    }
  }
}
