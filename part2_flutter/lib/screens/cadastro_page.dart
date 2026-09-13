import 'package:flutter/material.dart';

import '../models/produto.dart';

class CadastroPage extends StatefulWidget {
  const CadastroPage({super.key});

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  final _formKey = GlobalKey<FormState>();
  final _nomeController = TextEditingController();
  final _descricaoController = TextEditingController();
  final _valorController = TextEditingController();

  @override
  void dispose() {
    _nomeController.dispose();
    _descricaoController.dispose();
    _valorController.dispose();
    super.dispose();
  }

  void _confirmar() {
    if (!_formKey.currentState!.validate()) return;

    final novoProduto = Produto(
      nome: _nomeController.text.trim(),
      descricao: _descricaoController.text.trim(),
      quantidade: 1,
      valor: double.parse(_valorController.text.replaceAll(',', '.')),
    );

    Navigator.of(context).pop(novoProduto);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Novo Produto'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                controller: _nomeController,
                decoration: InputDecoration(
                  labelText: 'Nome',
                  prefixIcon: const Icon(Icons.label_outline),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                validator: (valor) {
                  if (valor == null || valor.trim().isEmpty) {
                    return 'Informe o nome';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _descricaoController,
                maxLines: 2,
                decoration: InputDecoration(
                  labelText: 'Descrição',
                  prefixIcon: const Icon(Icons.description_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                validator: (valor) {
                  if (valor == null || valor.trim().isEmpty) {
                    return 'Informe a descrição';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _valorController,
                keyboardType: const TextInputType.numberWithOptions(decimal: true),
                decoration: InputDecoration(
                  labelText: 'Valor',
                  prefixIcon: const Icon(Icons.attach_money),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                validator: (valor) {
                  final numero = double.tryParse((valor ?? '').replaceAll(',', '.'));
                  if (numero == null || numero < 0) {
                    return 'Informe um valor numérico válido';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: _confirmar,
                child: const Text('Confirmar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
