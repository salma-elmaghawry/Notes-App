import 'package:flutter/material.dart';
import 'package:notes/Presentation/widgets/note_item.dart';
import 'package:notes/helper/constants.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});
  final data = const [
    Color.fromARGB(255, 136, 75, 156),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: NoteItem(color: secColor1),
          );
        });
  }
}
