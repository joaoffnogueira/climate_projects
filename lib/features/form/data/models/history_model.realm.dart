// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_model.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// ignore_for_file: type=lint
class HistoryModel extends _HistoryModel
    with RealmEntity, RealmObjectBase, RealmObject {
  HistoryModel(
    String title,
    String answers,
    String keywords,
    String recommendedKeywords,
  ) {
    RealmObjectBase.set(this, 'title', title);
    RealmObjectBase.set(this, 'answers', answers);
    RealmObjectBase.set(this, 'keywords', keywords);
    RealmObjectBase.set(this, 'recommendedKeywords', recommendedKeywords);
  }

  HistoryModel._();

  @override
  String get title => RealmObjectBase.get<String>(this, 'title') as String;
  @override
  set title(String value) => RealmObjectBase.set(this, 'title', value);

  @override
  String get answers => RealmObjectBase.get<String>(this, 'answers') as String;
  @override
  set answers(String value) => RealmObjectBase.set(this, 'answers', value);

  @override
  String get keywords =>
      RealmObjectBase.get<String>(this, 'keywords') as String;
  @override
  set keywords(String value) => RealmObjectBase.set(this, 'keywords', value);

  @override
  String get recommendedKeywords =>
      RealmObjectBase.get<String>(this, 'recommendedKeywords') as String;
  @override
  set recommendedKeywords(String value) =>
      RealmObjectBase.set(this, 'recommendedKeywords', value);

  @override
  Stream<RealmObjectChanges<HistoryModel>> get changes =>
      RealmObjectBase.getChanges<HistoryModel>(this);

  @override
  Stream<RealmObjectChanges<HistoryModel>> changesFor(
          [List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<HistoryModel>(this, keyPaths);

  @override
  HistoryModel freeze() => RealmObjectBase.freezeObject<HistoryModel>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'title': title.toEJson(),
      'answers': answers.toEJson(),
      'keywords': keywords.toEJson(),
      'recommendedKeywords': recommendedKeywords.toEJson(),
    };
  }

  static EJsonValue _toEJson(HistoryModel value) => value.toEJson();
  static HistoryModel _fromEJson(EJsonValue ejson) {
    if (ejson is! Map<String, dynamic>) return raiseInvalidEJson(ejson);
    return switch (ejson) {
      {
        'title': EJsonValue title,
        'answers': EJsonValue answers,
        'keywords': EJsonValue keywords,
        'recommendedKeywords': EJsonValue recommendedKeywords,
      } =>
        HistoryModel(
          fromEJson(title),
          fromEJson(answers),
          fromEJson(keywords),
          fromEJson(recommendedKeywords),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(HistoryModel._);
    register(_toEJson, _fromEJson);
    return const SchemaObject(
        ObjectType.realmObject, HistoryModel, 'HistoryModel', [
      SchemaProperty('title', RealmPropertyType.string, primaryKey: true),
      SchemaProperty('answers', RealmPropertyType.string),
      SchemaProperty('keywords', RealmPropertyType.string),
      SchemaProperty('recommendedKeywords', RealmPropertyType.string),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}
