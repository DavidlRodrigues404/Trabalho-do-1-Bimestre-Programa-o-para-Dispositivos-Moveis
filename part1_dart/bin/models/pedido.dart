import 'produto.dart';
import 'cliente.dart';

class Pedido{
  //CONSTRUTOR
  Pedido({
    required this.produtos,
    required this.cliente,
  });

  //VARIAVEIS DE CLASSE
  final List<Produto> produtos;
  final Cliente cliente;
}
