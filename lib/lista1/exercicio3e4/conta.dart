import 'package:dartpad/lista1/exercicio3e4/pagamento.dart';

class Conta {
  void pagar(double valor, Pagamento formaPagamento) {
    formaPagamento.efetuarPagamento(valor);
  }
}
