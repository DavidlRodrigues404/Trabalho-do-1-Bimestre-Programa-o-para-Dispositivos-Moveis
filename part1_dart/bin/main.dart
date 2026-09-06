import 'models/produto.dart';
import 'models/servico.dart';

void main() {
//INSTANCIA VARIAVEL PRODUTO 
  final produto = Produto(
    nome: 'Teclado Mecânico',
    descricao: 'Teclado AULA F75 com switches LEOBOG Reaper Axis',
    quantidade: 1,
    valor: 314.90,
  );

//BLOCO DEMONSTRATIVO 1
  print('===== [1] ENTIDADE PRINCIPAL =====');
  produto.view();
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
  produto.view();
  servico.view();
  print('\n');

}
