import 'package:app_avaliacao_edusoft/modules/IoC/dependency_containers.dart' as kiwi;
import 'package:app_avaliacao_edusoft/src/censo/model/nome_censo_model.dart';
import 'package:app_avaliacao_edusoft/src/censo/view_model/censo_names_view_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() async{
  await kiwi.setUp();
  CensoNamesViewModel _viewModel = kiwi.container.resolve();

  test('basic test on fetch_censo_names_usecase execution', () async {
      final _data = await _viewModel.fetch();
      expect(_data is List<NomeCensoModel>, true);
      expect(_data.isNotEmpty, true);
  });

  test('basic test on fetch_paginated_censo_names_usecase execution', () async {
      final _data = await _viewModel.fetchPaginated(0);
      expect(_data is List<NomeCensoModel>, true);
      expect(_data.isNotEmpty, true);
  });
}