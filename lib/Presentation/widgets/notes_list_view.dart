import 'package:flutter/material.dart';
import 'package:notes/Presentation/widgets/note_item.dart';
import 'package:notes/helper/constants.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: NoteItem(color: secColor1),
      );
    });
  }
}
