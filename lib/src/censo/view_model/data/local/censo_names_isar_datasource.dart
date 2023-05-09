import 'package:app_avaliacao_edusoft/modules/isar/isar_provider.dart';
import 'package:app_avaliacao_edusoft/src/censo/model/entities/nome_censo_entity.dart';
import 'package:app_avaliacao_edusoft/src/censo/model/isar/nome_censo_isar_model.dart';
import 'package:app_avaliacao_edusoft/src/censo/view_model/data/censo_names_datasource.dart';
import 'package:app_avaliacao_edusoft/src/censo/model/nome_censo_model.dart';
import 'package:app_avaliacao_edusoft/src/core/resources/data_state.dart';
import 'package:app_avaliacao_edusoft/src/core/resources/data_state_impl.dart';



class CensoNamesIsarDatasource implements ICensoNamesDatasource{

  final IsarProvider _db;

  const CensoNamesIsarDatasource(this._db);

  @override
  Future<IDataState<List<NomeCensoEntity>>> fetch() async {
    final result = await _db.db.nomeCensoIsarModels.buildQuery<NomeCensoIsarModel>().findAll();
    return DataState.fromData(data: result.map((e) => e.toModel()).toList());
  }
  
  Future<List<NomeCensoModel>> insert(List<NomeCensoModel> data) async {
    await _clear();
    await _insertData(data);
    return data;
  }

  Future<void> _insertData(List<NomeCensoModel> data) async{
    await _db.db.writeTxn(() async {
      for(NomeCensoModel censo in data){
        await _db.db.nomeCensoIsarModels.put(NomeCensoIsarModel.fromModel(censo));
      } 
    });
  }

  Future<void> _clear() async => 
    _db.db.writeTxn(() async {
      await _db.db.nomeCensoIsarModels.buildQuery().deleteAll();
    });

  @override
  Future<IDataState<List<NomeCensoEntity>>> fetchPaginated(int page) => fetch();
}