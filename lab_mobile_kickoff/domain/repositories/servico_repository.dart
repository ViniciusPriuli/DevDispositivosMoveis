import '../entities/servico.dart';

abstract class IServicoRepository {
  Future<List<Servico>> buscarTodos();
}