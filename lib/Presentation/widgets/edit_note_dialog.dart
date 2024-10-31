import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/Business-Logic/cubits/notes-cubit/notes_cubit.dart';
import 'package:notes/Data/Models/note_model.dart';
import 'package:notes/Presentation/widgets/custom_button.dart';
import 'package:notes/Presentation/widgets/custom_text_field.dart';

void showEditDialog(
  BuildContext context,
  NoteModel note,
  Function(String title, String content) onSave,
) {
  String title = note.title;
  String content = note.subtitle;

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text("Edit Note"),
        content: SizedBox(
          width: 300,
          height: 250,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomTextField(
                hintText: note.title,
                onchange: (value) {
                  title = value;
                },
              ),
              const SizedBox(height: 10),
              CustomTextField(
                hintText: note.subtitle,
                maxLines: 5,
                onchange: (value) {
                  content = value;
                },
              ),
            ],
          ),
        ),
        actions: [
          CustomButton(
            text: "Done",
            onPressed: () {
              note.title = title ?? note.title;
              note.subtitle = content ?? note.subtitle;
              note.save();
              BlocProvider.of<NotesCubit>(context).fecthAllNotes();

              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
