import 'models/produto.dart';
import 'models/servico.dart';
import 'models/cliente.dart';
import 'models/pedido.dart';

void main() {
  //INSTANCIA VARIAVEL PRODUTO 
  final produto1 = Produto(
    nome: 'Teclado Mecânico',
    descricao: 'Teclado AULA F75 com switches LEOBOG Reaper Axis',
    quantidade: 1,
    valor: 314.90,
  );
  final produto2 = Produto(
    nome: 'Mouse Gamer',
    descricao: 'ATK A9 Plus Sensor PAW 3395',
    quantidade: 1,
    valor: 159.90,
  );

  //BLOCO DEMONSTRATIVO 1
  print('===== [1] ENTIDADE PRINCIPAL =====');
  
  print('\n');
  produto1.view();
  print('\n');

  //INSTANCIA VARIAVEL SERVICO
  final servico = Servico(
    nome: 'Troca de tela Celular', 
    descricao: 'Troca de tela Celular - Iphone 17 Pro', 
    quantidade: 1, 
    valor: 429.99, 
    disponivel: true, 
    categoria: 'MANUTENÇAO - PEÇAS');

  //BLOCO DEMONSTRATIVO 2
  print('===== [2] HERANÇA =====');
  print('\n');

  print('Produto');
  produto1.view();
  print('\n');
  
  print('Serviço');
  servico.view();
  print('\n');

  //INSTANCIA VARIAVEL CLIENTE
  final cliente = Cliente(
    nome: 'David Lucas',
  );

  //INSTANCIA VARIAVEL PEDIDO (COMPOSIÇÃO)
  final pedido = Pedido(cliente: cliente);
  pedido.adicionarProduto(produto1);
  pedido.adicionarProduto(produto2);
  pedido.adicionarServico(servico);

  //BLOCO DEMONSTRATIVO 3
  print('===== [3] COMPOSIÇÃO =====');
  print('\n');
  pedido.apresentar();
  print('\n');

  //BLOCO DEMONSTRATIVO 4
  print('===== [4] ENCAPSULAMENTO =====');
  print('\n');
  print('Quantidade de itens no pedido (antes): ${pedido.quantidadeItens}');

  final produto3 = Produto(
    nome: 'Mousepad Gamer',
    descricao: 'Mousepad XL costurado',
    quantidade: 1,
    valor: 49.90,
  );
  pedido.adicionarProduto(produto3);

  print('Quantidade de itens no pedido (depois): ${pedido.quantidadeItens}');
  print('\n');
}