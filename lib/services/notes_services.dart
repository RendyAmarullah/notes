import 'package:cloud_firestore/cloud_firestore.dart';

class NoteService {
  final _database = FirebaseFirestore.instance.collection('note_list');

  Stream<Map<String, String>> getNoteList() {
    return _database.snapshots().map((event) {
      final Map<String, String> items = {};
      print('Snapshot data:${event.size}');
      if (event != null) {
        Map<dynamic, dynamic> values = event as Map<dynamic, dynamic>;
        values.forEach((key, value) {
          items[key] = value['title'] as String;
        });
      }
      return items;
    });
  }

  void addNoteList(String title, String description) {
    _database.doc().set({
      'title': title,
      'description': description,
    });
  }
  
}
