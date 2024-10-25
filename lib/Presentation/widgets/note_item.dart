import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/Business-Logic/cubits/notes-cubit/notes_cubit.dart';
import 'package:notes/Data/Models/note_model.dart';
import 'package:notes/Presentation/widgets/custom_button.dart';
import 'package:notes/Presentation/widgets/custom_text_field.dart';
import 'package:notes/Presentation/widgets/edit_note_dialog.dart';
import 'package:notes/helper/constants.dart';

class NoteItem extends StatelessWidget {
  NoteItem({super.key, required this.note});
  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showEditDialog(context);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    note.title,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.edit),
                      iconSize: 24,
                      color: Colors.black,
                    ),
                    IconButton(
                      onPressed: () {
                        note.delete();
                        BlocProvider.of<NotesCubit>(context).fecthAllNotes();
                      },
                      icon: const Icon(Icons.delete),
                      iconSize: 24,
                      color: Colors.black,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              note.subtitle,
              style: const TextStyle(
                color: grey,
                fontSize: 17,
              ),
            ),
            const SizedBox(height: 16),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                note.date,
                style: const TextStyle(
                  color: grey,
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
