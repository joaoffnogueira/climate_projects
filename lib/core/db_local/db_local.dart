import 'package:realm/realm.dart';

abstract interface class DbLocal {
  void openConection();

  void close();

  T add<T extends RealmObject>(T object);

  void addAll<T extends RealmObject>(Iterable<T> items, {bool update = false});

  List<T> all<T extends RealmObject>();

  T? find<T extends RealmObject>(Object primaryKey);

  List<T> query<T extends RealmObject>(String query, [List<Object?> args]);

  void remove<T extends RealmObject>(T object);
}
