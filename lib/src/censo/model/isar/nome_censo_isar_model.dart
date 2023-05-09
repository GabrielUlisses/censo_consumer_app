import 'package:app_avaliacao_edusoft/src/censo/model/nome_censo_model.dart';
import 'package:isar/isar.dart';


part 'nome_censo_isar_model.g.dart';

@Collection()
class NomeCensoIsarModel {

  final id = Isar.autoIncrement;
  final String nome; 
  final String sexo; 
  final int frequencia; 
  final int regiao; 
  final int rank;

  NomeCensoIsarModel({
    required this.nome,
    required this.sexo,
    required this.frequencia,
    required this.regiao,
    required this.rank
  });

  static NomeCensoIsarModel fromModel(NomeCensoModel model) => NomeCensoIsarModel(
    nome: model.nome,
    sexo: model.sexo,
    frequencia: model.frequencia,
    regiao: model.regiao,
    rank: model.rank
  );

  NomeCensoModel toModel() => NomeCensoModel(
    nome: nome,
    sexo: sexo,
    frequencia: frequencia,
    regiao: regiao,
    rank: rank
  );

  NomeCensoIsarModel copyWith({
    String? nome,
    String? sexo,
    int? frequencia,
    int? rank,
    int? regiao
  }) => NomeCensoIsarModel(
    nome : nome ?? this.nome, 
    sexo : sexo ?? this.sexo, 
    frequencia : frequencia ?? this.frequencia, 
    rank: rank ?? this.rank,
    regiao : regiao ?? this.regiao,
  );

  @override
  String toString() => "NomeCensoIsarModel(nome: $nome, sexo: $sexo, frequencia: $frequencia, regiao: $regiao, rank: $rank)";

}