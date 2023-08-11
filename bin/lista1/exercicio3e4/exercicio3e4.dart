import 'package:dartpad/lista1/exercicio3e4/conta.dart';
import 'package:dartpad/lista1/exercicio3e4/pedido.dart';
import 'package:dartpad/lista1/exercicio3e4/produto.dart';

void main(List<String> arguments) {
  Produto produto1 = Produto(
      nome: 'Produto 1', descricao: 'Descrição do Produto 1', preco: 100.0);
  Produto produto2 = Produto(
      nome: 'Produto 2', descricao: 'Descrição do Produto 2', preco: 50.0);

  Pedido pedido = Pedido(Conta());

  pedido.adicionarItem(produto1, 2);
  pedido.adicionarItem(produto2, 1);

  print(pedido.valorTotal());
}
