import 'produto.dart';

class Servico extends Produto {
//VARIAVEL DA CLASSE DIFERENCIAL DA CLASSE PRODUTO
  String? categoria;

//CONSTRUTOR APLICANDO SUPER
  Servico({
    required super.nome,
    required super.descricao,
    required super.quantidade,
    required super.valor,
    required super.disponivel,
    DateTime? dataCadastro,
    required this.categoria,
  });

//SOBREESCRITA DO METODO VIEW APLICANDO VARIAVEL DIFERENCIAL
  @override
  void view() {
    super.view();
    print('categoria..: $categoria');
  }
}
