
import 'package:app_avaliacao_edusoft/common/strings/errors.dart';
import 'package:app_avaliacao_edusoft/common/strings/misc.dart';
import 'package:app_avaliacao_edusoft/src/censo/model/entities/nome_censo_entity.dart';
import 'package:app_avaliacao_edusoft/src/censo/model/nome_censo_model.dart';
import 'package:app_avaliacao_edusoft/src/censo/view_model/data/local/censo_names_isar_datasource.dart';
import 'package:app_avaliacao_edusoft/src/censo/view_model/repositories/icenso_names_repository.dart';
import 'package:app_avaliacao_edusoft/src/core/errors/log.dart';

class CensoNamesDecorator implements ICensoNamesRepository{

  final ICensoNamesRepository _repo;
  final CensoNamesIsarDatasource _db;

  const CensoNamesDecorator(this._repo, this._db);

  @override
  Future<List<NomeCensoEntity>> fetch([int? page]) async {
    try {
      final results = await _repo.fetch(page);
      return await _db.insert(results as List<NomeCensoModel>);
    } catch (error, _stack){
      print(errorToLog(unable_to_load_online_data + " " + change_to_offline_mode, _stack));
      return (await _db.fetch()).data as List<NomeCensoModel>;
    }
  }
}