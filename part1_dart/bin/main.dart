import 'models/produto.dart';

void main() {
  final produto = Produto(
    nome: 'Teclado Mecânico',
    descricao: 'Teclado AULA F75 com switches LEOBOG Reaper Axis',
    quantidade: 1,
    valor: 314.90,
  );

  print('===== [1] ENTIDADE PRINCIPAL =====');
  produto.view();
}
