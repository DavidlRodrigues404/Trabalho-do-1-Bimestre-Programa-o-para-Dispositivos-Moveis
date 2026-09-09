import 'produto.dart';
import 'cliente.dart';
import 'servico.dart';

class Pedido { Pedido({
  required this.cliente,
  List<Servico>? servicos,
  List<Produto>? produtos,
  }) : _servicos = servicos ?? [],
  _produtos = produtos ?? [];

  final Cliente cliente;
  final List<Produto> _produtos;
  final List<Servico> _servicos;

  int get quantidadeItens => _produtos.length + _servicos.length;

  void adicionarProduto(Produto produto){
  _produtos.add(produto);
  }

  void adicionarServico(Servico servico){
  _servicos.add(servico);
  }

  void apresentar() {
  print('Cliente: ${cliente.nome}');
  print('\n');

  if (_produtos.isNotEmpty) {
    print('Produtos (${_produtos.length}):');
    for (final p in _produtos) {
      p.view();
      print('\n');
    }
  }

  print('\n');

  if (_servicos.isNotEmpty) {
    print('Serviços (${_servicos.length}):');
    for (final s in _servicos) {
      s.view();
      print('\n');
    }
  }
}
}
