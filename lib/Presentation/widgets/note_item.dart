import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/Business-Logic/cubits/notes-cubit/notes_cubit.dart';
import 'package:notes/Data/Models/note_model.dart';
import 'package:notes/Presentation/widgets/custom_button.dart';
import 'package:notes/Presentation/widgets/custom_text_field.dart';

import 'package:notes/Presentation/widgets/edit_note_dialog.dart';
import 'package:notes/helper/constants.dart';

class NoteItem extends StatefulWidget {
  NoteItem({super.key, required this.note});
  final NoteModel note;

  @override
  State<NoteItem> createState() => _NoteItemState();
}

class _NoteItemState extends State<NoteItem> {
  String? title;
  String? content;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      decoration: BoxDecoration(
        color: Color(widget.note.color),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  widget.note.title,
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
                    onPressed: () {
                      showEditDialog(context, widget.note,
                          (newTitle, newContent, color) {
                        setState(() {
                          title = newTitle;
                          content = newContent;
                          color = color;
                        });
                      });
                    },
                    icon: const Icon(Icons.edit),
                    iconSize: 24,
                    color: Colors.black,
                  ),
                  IconButton(
                    onPressed: () {
                      widget.note.delete();
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
            widget.note.subtitle,
            style: const TextStyle(
              color: grey,
              fontSize: 17,
            ),
          ),
          const SizedBox(height: 16),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              widget.note.date,
              style: const TextStyle(
                color: grey,
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
