class Produto {
  //CONSTRUTOR
  Produto({
    required this.nome,
    required this.descricao,
    required this.quantidade,
    required this.valor,
    this.disponivel = true,
    DateTime? dataCadastro,
  }) : dataCadastro = dataCadastro ?? DateTime.now();

  //VARIAVEIS DE CLASSE
  final String nome;
  final String descricao;
  final int quantidade;
  final double valor;
  final bool disponivel;
  final DateTime dataCadastro;

  //FUNÇÃO PARA VISUALIZAÇÃO DO PRODUTO
  void view() {
    print('Nome.......: $nome');
    print('Descrição..: $descricao');
    print('Quantidade.: $quantidade');
    print('Valor......: R\$ ${valor.toStringAsFixed(2)}');
    print('Cadastro...: $dataCadastro');
  }
}