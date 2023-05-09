import 'package:app_avaliacao_edusoft/src/censo/model/entities/nome_censo_entity.dart';

abstract class ICensoNamesRepository{
  const ICensoNamesRepository();

  Future<List<NomeCensoEntity>> fetch([int? page]);
}