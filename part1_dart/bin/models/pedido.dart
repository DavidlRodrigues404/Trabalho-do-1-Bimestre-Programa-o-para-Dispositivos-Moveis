import 'produto.dart';
import 'cliente.dart';
import 'servico.dart';

class Pedido { Pedido({ 
  required this.cliente, 
  List<Servico>? servicos, 
  List<Produto>? produtos, 
  }) : servicos = servicos ?? [],
  produtos = produtos ?? [];

  final Cliente cliente;
  final List<Produto> produtos;
  final List<Servico> servicos;

  void adicionarProduto(Produto produto){
  produtos.add(produto);
  } 

  void adicionarServico(Servico servico){
  servicos.add(servico);
  }

  void apresentar() {
  print('Cliente: ${cliente.nome}');
  print('\n');

  if (produtos.isNotEmpty) {
    print('Produtos (${produtos.length}):');
    for (final p in produtos) {
      p.view();
      print('\n');
    }
  }

  print('\n');
  
  if (servicos.isNotEmpty) {
    print('Serviços (${servicos.length}):');
    for (final s in servicos) {
      s.view();
      print('\n');
    }
  }
}
}
