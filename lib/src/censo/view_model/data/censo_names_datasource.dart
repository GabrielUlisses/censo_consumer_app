import 'package:app_avaliacao_edusoft/src/censo/model/entities/nome_censo_entity.dart';
import 'package:app_avaliacao_edusoft/src/core/resources/data_state.dart';

abstract class ICensoNamesDatasource{

  const ICensoNamesDatasource();

  Future<IDataState<List<NomeCensoEntity>>> fetch();

  Future<IDataState<List<NomeCensoEntity>>> fetchPaginated(int page);
}