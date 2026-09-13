import 'package:flutter/material.dart';

import '../models/produto.dart';
import '../models/servico.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key, required this.item});

  final Produto item;

  String _formatarData(DateTime data) {
    final dia = data.day.toString().padLeft(2, '0');
    final mes = data.month.toString().padLeft(2, '0');
    final hora = data.hour.toString().padLeft(2, '0');
    final minuto = data.minute.toString().padLeft(2, '0');
    return '$dia/$mes/${data.year} $hora:$minuto';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.nome),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Descrição',
              style: Theme.of(context).textTheme.labelLarge,
            ),
            const SizedBox(height: 4),
            Text(item.descricao),
            const SizedBox(height: 16),
            Text('Quantidade: ${item.quantidade}'),
            const SizedBox(height: 8),
            Text('Disponível: ${item.disponivel ? 'Sim' : 'Não'}'),
            const SizedBox(height: 8),
            Text('Cadastrado em: ${_formatarData(item.dataCadastro)}'),
            if (item is Servico) ...[
              const SizedBox(height: 8),
              Text('Categoria: ${(item as Servico).categoria ?? '-'}'),
            ],
          ],
        ),
      ),
    );
  }
}
