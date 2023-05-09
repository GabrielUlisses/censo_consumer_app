import 'package:app_avaliacao_edusoft/src/censo/model/entities/nome_censo_entity.dart';
import 'package:app_avaliacao_edusoft/src/censo/view_model/repositories/icenso_names_repository.dart';
import 'package:app_avaliacao_edusoft/src/censo/view_model/data/censo_names_datasource.dart';
import 'package:app_avaliacao_edusoft/src/core/resources/data_state.dart';
import 'package:app_avaliacao_edusoft/src/core/resources/data_state_impl.dart';

class CensoNamesRepository implements ICensoNamesRepository{

  final ICensoNamesDatasource _datasource;

  const CensoNamesRepository(this._datasource);

  @override
  Future<List<NomeCensoEntity>> fetch([int? page]) async {
    late IDataState _dataState;
    if(page != null){
      _dataState = await _datasource.fetchPaginated(page);
    }else{
      _dataState = await _datasource.fetch();
    }
    if(_dataState is DataState){
      if(_dataState.hasData){
        return _dataState.data;
      }
      _dataState.error!.raise();
    }
    throw UnimplementedError();
  }
}