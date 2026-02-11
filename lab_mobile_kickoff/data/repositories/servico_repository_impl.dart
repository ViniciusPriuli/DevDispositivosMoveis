import '../../domain/entities/servico.dart';
import '../../domain/repositories/servico_repository.dart';

class ServicoRepositoryImpl implements IServicoRepository {
  @override
  Future<List<Servico>> buscarTodos() async {
    // Simulando um atraso de rede (delay)
    await Future.delayed(const Duration(seconds: 1));

    return [
      Servico(id: 1, titulo: 'Manutenção de PC', descricao: 'Limpeza e troca de pasta térmica'),
      Servico(id: 2, titulo: 'Desenvolvimento Web', descricao: 'Criação de sites responsivos'),
      Servico(id: 3, titulo: 'Consultoria TI', descricao: 'Otimização de processos tecnológicos'),
    ];
  }
}