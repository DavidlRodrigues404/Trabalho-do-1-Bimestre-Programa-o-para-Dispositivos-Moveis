import 'package:flutter/material.dart';

import '../models/produto.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key, required this.item});

  final Produto item;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.black12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.08),
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              item.nome,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 4),
            Text(
              item.descricao,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(color: Colors.black54),
            ),
            const SizedBox(height: 8),
            Text(
              'R\$ ${item.valor.toStringAsFixed(2)}',
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
