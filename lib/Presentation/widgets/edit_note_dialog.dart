import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/Business-Logic/cubits/notes-cubit/notes_cubit.dart';
import 'package:notes/Data/Models/note_model.dart';
import 'package:notes/Presentation/widgets/custom_button.dart';
import 'package:notes/Presentation/widgets/custom_text_field.dart';
import 'package:notes/helper/constants.dart';

void showEditDialog(
  BuildContext context,
  NoteModel note,
  Function(String title, String content, int color) onSave,
) {
  String title = note.title;
  String content = note.subtitle;
  int selectedColor = note.color;

  // List of available colors for the user to choose from
  final List<Color> colors = [
    primaryColor,secColor2,secColor1,secColor3,secColor5,secColor6,secColor7,secColor8
    
  
  ];

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text("Edit Note"),
        content: SizedBox(
          width: 300,
          height: 300,
          child: SingleChildScrollView(
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
                const SizedBox(height: 10),
                const Text("Choose Note Color"),
                const SizedBox(height: 8),
                Wrap(
                  spacing: 6,
                  children: colors.map((color) {
                    return GestureDetector(
                      onTap: () {
                        selectedColor = color.value;
                        (context as Element).markNeedsBuild(); 
                      },
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          color: color,
                          shape: BoxShape.circle,
                          border: selectedColor == color.value
                              ? Border.all(color: Colors.white, width: 2)
                              : null,
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        ),
        actions: [
          CustomButton(
            text: "Done",
            onPressed: () {
              note.title = title.isEmpty ? note.title : title;
              note.subtitle = content.isEmpty ? note.subtitle : content;
              note.color = selectedColor;
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
