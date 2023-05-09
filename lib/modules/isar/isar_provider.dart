
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

class IsarProvider{
  late Isar _isar;

  IsarProvider();

  Future<void> init(List<CollectionSchema<dynamic>> schemas, {String? dir}) async {
    _isar = await Isar.open(
      schemas, 
      directory: dir ?? (await getApplicationDocumentsDirectory()).path
    );
  }

  Isar get db => _isar;
}