// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nome_censo_isar_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetNomeCensoIsarModelCollection on Isar {
  IsarCollection<NomeCensoIsarModel> get nomeCensoIsarModels =>
      this.collection();
}

const NomeCensoIsarModelSchema = CollectionSchema(
  name: r'NomeCensoIsarModel',
  id: -4393351127803094765,
  properties: {
    r'frequencia': PropertySchema(
      id: 0,
      name: r'frequencia',
      type: IsarType.long,
    ),
    r'nome': PropertySchema(
      id: 1,
      name: r'nome',
      type: IsarType.string,
    ),
    r'rank': PropertySchema(
      id: 2,
      name: r'rank',
      type: IsarType.long,
    ),
    r'regiao': PropertySchema(
      id: 3,
      name: r'regiao',
      type: IsarType.long,
    ),
    r'sexo': PropertySchema(
      id: 4,
      name: r'sexo',
      type: IsarType.string,
    )
  },
  estimateSize: _nomeCensoIsarModelEstimateSize,
  serialize: _nomeCensoIsarModelSerialize,
  deserialize: _nomeCensoIsarModelDeserialize,
  deserializeProp: _nomeCensoIsarModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _nomeCensoIsarModelGetId,
  getLinks: _nomeCensoIsarModelGetLinks,
  attach: _nomeCensoIsarModelAttach,
  version: '3.1.0+1',
);

int _nomeCensoIsarModelEstimateSize(
  NomeCensoIsarModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.nome.length * 3;
  bytesCount += 3 + object.sexo.length * 3;
  return bytesCount;
}

void _nomeCensoIsarModelSerialize(
  NomeCensoIsarModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.frequencia);
  writer.writeString(offsets[1], object.nome);
  writer.writeLong(offsets[2], object.rank);
  writer.writeLong(offsets[3], object.regiao);
  writer.writeString(offsets[4], object.sexo);
}

NomeCensoIsarModel _nomeCensoIsarModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = NomeCensoIsarModel(
    frequencia: reader.readLong(offsets[0]),
    nome: reader.readString(offsets[1]),
    rank: reader.readLong(offsets[2]),
    regiao: reader.readLong(offsets[3]),
    sexo: reader.readString(offsets[4]),
  );
  return object;
}

P _nomeCensoIsarModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _nomeCensoIsarModelGetId(NomeCensoIsarModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _nomeCensoIsarModelGetLinks(
    NomeCensoIsarModel object) {
  return [];
}

void _nomeCensoIsarModelAttach(
    IsarCollection<dynamic> col, Id id, NomeCensoIsarModel object) {}

extension NomeCensoIsarModelQueryWhereSort
    on QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QWhere> {
  QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension NomeCensoIsarModelQueryWhere
    on QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QWhereClause> {
  QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QAfterWhereClause>
      idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QAfterWhereClause>
      idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension NomeCensoIsarModelQueryFilter
    on QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QFilterCondition> {
  QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QAfterFilterCondition>
      frequenciaEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'frequencia',
        value: value,
      ));
    });
  }

  QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QAfterFilterCondition>
      frequenciaGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'frequencia',
        value: value,
      ));
    });
  }

  QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QAfterFilterCondition>
      frequenciaLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'frequencia',
        value: value,
      ));
    });
  }

  QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QAfterFilterCondition>
      frequenciaBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'frequencia',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QAfterFilterCondition>
      idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QAfterFilterCondition>
      idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QAfterFilterCondition>
      nomeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nome',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QAfterFilterCondition>
      nomeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nome',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QAfterFilterCondition>
      nomeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nome',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QAfterFilterCondition>
      nomeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nome',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QAfterFilterCondition>
      nomeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'nome',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QAfterFilterCondition>
      nomeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'nome',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QAfterFilterCondition>
      nomeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'nome',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QAfterFilterCondition>
      nomeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'nome',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QAfterFilterCondition>
      nomeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nome',
        value: '',
      ));
    });
  }

  QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QAfterFilterCondition>
      nomeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'nome',
        value: '',
      ));
    });
  }

  QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QAfterFilterCondition>
      rankEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rank',
        value: value,
      ));
    });
  }

  QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QAfterFilterCondition>
      rankGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rank',
        value: value,
      ));
    });
  }

  QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QAfterFilterCondition>
      rankLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rank',
        value: value,
      ));
    });
  }

  QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QAfterFilterCondition>
      rankBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rank',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QAfterFilterCondition>
      regiaoEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'regiao',
        value: value,
      ));
    });
  }

  QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QAfterFilterCondition>
      regiaoGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'regiao',
        value: value,
      ));
    });
  }

  QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QAfterFilterCondition>
      regiaoLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'regiao',
        value: value,
      ));
    });
  }

  QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QAfterFilterCondition>
      regiaoBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'regiao',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QAfterFilterCondition>
      sexoEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sexo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QAfterFilterCondition>
      sexoGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sexo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QAfterFilterCondition>
      sexoLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sexo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QAfterFilterCondition>
      sexoBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sexo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QAfterFilterCondition>
      sexoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'sexo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QAfterFilterCondition>
      sexoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'sexo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QAfterFilterCondition>
      sexoContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'sexo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QAfterFilterCondition>
      sexoMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'sexo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QAfterFilterCondition>
      sexoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sexo',
        value: '',
      ));
    });
  }

  QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QAfterFilterCondition>
      sexoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'sexo',
        value: '',
      ));
    });
  }
}

extension NomeCensoIsarModelQueryObject
    on QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QFilterCondition> {}

extension NomeCensoIsarModelQueryLinks
    on QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QFilterCondition> {}

extension NomeCensoIsarModelQuerySortBy
    on QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QSortBy> {
  QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QAfterSortBy>
      sortByFrequencia() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'frequencia', Sort.asc);
    });
  }

  QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QAfterSortBy>
      sortByFrequenciaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'frequencia', Sort.desc);
    });
  }

  QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QAfterSortBy>
      sortByNome() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nome', Sort.asc);
    });
  }

  QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QAfterSortBy>
      sortByNomeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nome', Sort.desc);
    });
  }

  QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QAfterSortBy>
      sortByRank() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rank', Sort.asc);
    });
  }

  QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QAfterSortBy>
      sortByRankDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rank', Sort.desc);
    });
  }

  QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QAfterSortBy>
      sortByRegiao() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'regiao', Sort.asc);
    });
  }

  QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QAfterSortBy>
      sortByRegiaoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'regiao', Sort.desc);
    });
  }

  QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QAfterSortBy>
      sortBySexo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sexo', Sort.asc);
    });
  }

  QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QAfterSortBy>
      sortBySexoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sexo', Sort.desc);
    });
  }
}

extension NomeCensoIsarModelQuerySortThenBy
    on QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QSortThenBy> {
  QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QAfterSortBy>
      thenByFrequencia() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'frequencia', Sort.asc);
    });
  }

  QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QAfterSortBy>
      thenByFrequenciaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'frequencia', Sort.desc);
    });
  }

  QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QAfterSortBy>
      thenByNome() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nome', Sort.asc);
    });
  }

  QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QAfterSortBy>
      thenByNomeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nome', Sort.desc);
    });
  }

  QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QAfterSortBy>
      thenByRank() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rank', Sort.asc);
    });
  }

  QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QAfterSortBy>
      thenByRankDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rank', Sort.desc);
    });
  }

  QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QAfterSortBy>
      thenByRegiao() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'regiao', Sort.asc);
    });
  }

  QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QAfterSortBy>
      thenByRegiaoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'regiao', Sort.desc);
    });
  }

  QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QAfterSortBy>
      thenBySexo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sexo', Sort.asc);
    });
  }

  QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QAfterSortBy>
      thenBySexoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sexo', Sort.desc);
    });
  }
}

extension NomeCensoIsarModelQueryWhereDistinct
    on QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QDistinct> {
  QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QDistinct>
      distinctByFrequencia() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'frequencia');
    });
  }

  QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QDistinct>
      distinctByNome({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nome', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QDistinct>
      distinctByRank() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rank');
    });
  }

  QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QDistinct>
      distinctByRegiao() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'regiao');
    });
  }

  QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QDistinct>
      distinctBySexo({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sexo', caseSensitive: caseSensitive);
    });
  }
}

extension NomeCensoIsarModelQueryProperty
    on QueryBuilder<NomeCensoIsarModel, NomeCensoIsarModel, QQueryProperty> {
  QueryBuilder<NomeCensoIsarModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<NomeCensoIsarModel, int, QQueryOperations> frequenciaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'frequencia');
    });
  }

  QueryBuilder<NomeCensoIsarModel, String, QQueryOperations> nomeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nome');
    });
  }

  QueryBuilder<NomeCensoIsarModel, int, QQueryOperations> rankProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rank');
    });
  }

  QueryBuilder<NomeCensoIsarModel, int, QQueryOperations> regiaoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'regiao');
    });
  }

  QueryBuilder<NomeCensoIsarModel, String, QQueryOperations> sexoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sexo');
    });
  }
}
