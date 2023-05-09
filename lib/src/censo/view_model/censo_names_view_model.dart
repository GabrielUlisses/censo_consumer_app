

import 'package:app_avaliacao_edusoft/src/censo/model/nome_censo_model.dart';
import 'package:app_avaliacao_edusoft/src/censo/view/view_model/censo_view_model.dart';
import 'package:app_avaliacao_edusoft/src/censo/view_model/repositories/icenso_names_repository.dart';

class CensoNamesViewModel{

  final ICensoNamesRepository _repository;

  CensoNamesViewModel(this._repository);

  Future<List<CensoWidget>> fetch() async {
    final _data = (await _repository.fetch()) as List<NomeCensoModel>;
    
    return _data.map((e) => CensoWidget(e)).toList();    
  }

  Future<List<CensoWidget>> fetchPaginated(int page) async {
    final _data = (await _repository.fetch(page) ) as List<NomeCensoModel>;
    return (_data).map((e) => CensoWidget(e)).toList();      
  }

}