import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreDataSource {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<void> addFormAnswers(Map<String, dynamic> form) {
    return _db.collection('form-answers').add(form);
  }

  Future<void> addSuggestion(Map<String, dynamic> suggestion) {
    return _db.collection('suggestions').add(suggestion);
  }
}
