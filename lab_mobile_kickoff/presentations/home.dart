import 'package:flutter/material.dart';
import '../data/repositories/servico_repository_impl.dart';
import '../domain/entities/servico.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    final repository = ServicoRepositoryImpl();

    return Scaffold(
      appBar: AppBar(title: const Text('Meus Serviços')),
      body: FutureBuilder<List<Servico>>(
        future: repository.buscarTodos(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          
          final servicos = snapshot.data ?? [];

          return ListView.builder(
            itemCount: servicos.length,
            itemBuilder: (context, index) {
              final item = servicos[index];
              return ListTile(
                leading: CircleAvatar(child: Text(item.id.toString())),
                title: Text(item.titulo),
                subtitle: Text(item.descricao),
              );
            },
          );
        },
      ),
    );
  }
}