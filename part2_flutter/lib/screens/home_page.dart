import 'package:flutter/material.dart';

import '../models/cliente.dart';
import '../models/pedido.dart';
import '../models/produto.dart';
import '../models/servico.dart';
import '../widgets/item_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final Pedido pedido;

  @override
  void initState() {
    super.initState();

    final cliente = Cliente(nome: 'David Lucas');
    pedido = Pedido(cliente: cliente);

    pedido.adicionarProduto(Produto(
      nome: 'Teclado Mecânico',
      descricao: 'Teclado AULA F75 com switches LEOBOG Reaper Axis',
      quantidade: 1,
      valor: 314.90,
    ));
    pedido.adicionarProduto(Produto(
      nome: 'Mouse Gamer',
      descricao: 'ATK A9 Plus Sensor PAW 3395',
      quantidade: 1,
      valor: 159.90,
    ));
    pedido.adicionarProduto(Produto(
      nome: 'Mousepad Gamer',
      descricao: 'Mousepad XL costurado',
      quantidade: 1,
      valor: 49.90,
    ));
    pedido.adicionarProduto(Produto(
      nome: 'Headset Gamer',
      descricao: 'Headset com som surround 7.1',
      quantidade: 1,
      valor: 219.90,
    ));
    pedido.adicionarServico(Servico(
      nome: 'Troca de Tela Celular',
      descricao: 'Troca de tela Celular - iPhone 17 Pro',
      quantidade: 1,
      valor: 429.99,
      disponivel: true,
      categoria: 'MANUTENÇÃO - PEÇAS',
    ));
    pedido.adicionarServico(Servico(
      nome: 'Formatação de Notebook',
      descricao: 'Formatação completa com backup de dados',
      quantidade: 1,
      valor: 89.90,
      disponivel: true,
      categoria: 'MANUTENÇÃO - SOFTWARE',
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pedido Atual'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Total: R\$ ${pedido.valorTotal.toStringAsFixed(2)}',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                Text('${pedido.quantidadeItens} item(ns)'),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: pedido.itens.length,
              itemBuilder: (context, index) {
                final item = pedido.itens[index];
                return ItemCard(item: item);
              },
            ),
          ),
        ],
      ),
    );
  }
}
