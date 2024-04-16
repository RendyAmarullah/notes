import 'package:flutter/material.dart';

class NoteListScreen extends StatefulWidget {
  const NoteListScreen({super.key});

  @override
  State<NoteListScreen> createState() => _NoteListScreenState();
}

class _NoteListScreenState extends State<NoteListScreen> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notes'),
      ),
      body: Column(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  content: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Add'),
                      const Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          'Title: ',
                          textAlign: TextAlign.start,
                        ),
                      ),
                      TextField(
                        controller: _titleController,
                      ),
                      const Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          'Description: ',
                          textAlign: TextAlign.start,
                        ),
                      ),
                      TextField(
                        controller: _titleController,
                      ),
                    ],
                  ),
                  actions: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('Cancel'),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('Save'),
                    ),
                   
                  ],
                );
              });
        },
        tooltip: 'Add Notes',
        child: const Icon(Icons.add),
      ),
    );
  }
}
