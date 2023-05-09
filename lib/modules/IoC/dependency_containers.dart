
import 'package:app_avaliacao_edusoft/common/context/global_context.dart';
import 'package:app_avaliacao_edusoft/modules/dio/dio.dart';
import 'package:app_avaliacao_edusoft/modules/isar/isar_provider.dart';
import 'package:app_avaliacao_edusoft/src/censo/model/isar/nome_censo_isar_model.dart';
import 'package:app_avaliacao_edusoft/src/censo/view_model/censo_names_view_model.dart';
import 'package:app_avaliacao_edusoft/src/censo/view_model/data/api/censo_names_api_datasource.dart';
import 'package:app_avaliacao_edusoft/src/censo/view_model/data/local/censo_names_isar_datasource.dart';
import 'package:app_avaliacao_edusoft/src/censo/view_model/decorator/censo_names_decorator.dart';
import 'package:app_avaliacao_edusoft/src/censo/view_model/repositories/icenso_names_repository.dart';
import 'package:app_avaliacao_edusoft/src/censo/view_model/data/censo_names_datasource.dart';
import 'package:app_avaliacao_edusoft/src/censo/view_model/repositories/censo_names_repository.dart';
import 'package:dio/dio.dart';
import 'package:kiwi/kiwi.dart';

final KiwiContainer container = KiwiContainer();

Future<void> setUp() async {
  final _dio = NetworkModule(Dio()).dio;
  final _isar = IsarProvider();

  await _isar.init([NomeCensoIsarModelSchema]);

  // -- MODULES :--
  container.registerInstance<GlobalContextHelper>(GlobalContextHelper());
  container.registerInstance<Dio>(_dio);
  container.registerInstance<IsarProvider>(IsarProvider());
  // -- DATASOURCES :--
  container.registerInstance<ICensoNamesDatasource>(CensoNamesApiDatasource(_dio));
  // -- REPOSITORIES :--
  container.registerInstance<ICensoNamesRepository>(CensoNamesDecorator(CensoNamesRepository(container.resolve<ICensoNamesDatasource>()), CensoNamesIsarDatasource(_isar)));
  // -- VIEWMODELS :--
  container.registerInstance<CensoNamesViewModel>(CensoNamesViewModel(container.resolve()));
}