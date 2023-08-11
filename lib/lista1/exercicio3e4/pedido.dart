import 'package:dartpad/lista1/exercicio3e4/conta.dart';
import 'package:dartpad/lista1/exercicio3e4/item.dart';
import 'package:dartpad/lista1/exercicio3e4/produto.dart';

class Pedido {
  final Conta conta;
  final List<Item> itens = [];

  Pedido(this.conta);

  void adicionarItem(Produto produto, int quantidade) {
    itens.add(Item(produto: produto, quantidade: quantidade));
  }

  double valorTotal() {
    if (itens.isEmpty) {
      throw Exception("Não é possível fechar pedido com ítens vazios.");
    }

    double totalValue = 0;

    for (var item in itens) {
      totalValue += item.produto.preco * item.quantidade;
    }

    return totalValue;
  }
}
