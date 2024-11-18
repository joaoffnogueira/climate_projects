import 'package:realm/realm.dart';

import 'db_local.dart';

class DbLocalRealm implements DbLocal {
  final LocalConfiguration configLocal;

  DbLocalRealm(List<SchemaObject> schemas)
      : configLocal =
            Configuration.local(schemas, shouldDeleteIfMigrationNeeded: true);

  late Realm realm;

  @override
  List<T> all<T extends RealmObject>() {
    try {
      final results = realm.all<T>();
      if (results.isValid) return results.toList();
      return [];
    } on RealmException {
      throw Exception();
    }
  }

  @override
  void close() {
    realm.close();
  }

  @override
  T? find<T extends RealmObject>(Object primaryKey) {
    try {
      final result = realm.find<T>(primaryKey);
      if (result?.isValid == true) return result;
      return null;
    } on RealmException {
      throw Exception();
    }
  }

  @override
  void openConection() {
    realm = Realm(configLocal);
  }

  @override
  List<T> query<T extends RealmObject>(String query,
      [List<Object?> args = const []]) {
    try {
      final results = realm.query<T>(query, args);

      if (results.isValid) return results.toList();
      return [];
    } on RealmException {
      throw Exception();
    }
  }

  @override
  T add<T extends RealmObject>(T object) {
    try {
      if (realm.all<T>().length == 10) {
        realm.delete(realm.all<T>().first);
      }
      return realm.write(() {
        return realm.add(object);
      });
    } on RealmException {
      throw Exception();
    }
  }

  @override
  void addAll<T extends RealmObject>(Iterable<T> items, {bool update = false}) {
    try {
      return realm.write(() {
        return realm.addAll(items, update: update);
      });
    } on RealmException {
      throw Exception();
    }
  }

  @override
  void remove<T extends RealmObject>(T object) {
    try {
      return realm.write(() {
        return realm.delete(object);
      });
    } on RealmException {
      throw Exception();
    }
  }
}
