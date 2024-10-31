import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes/Business-Logic/cubits/add-note-cubit/add_note_cubit.dart';
import 'package:notes/Data/Models/note_model.dart';
import 'package:notes/Presentation/widgets/custom_button.dart';
import 'package:notes/Presentation/widgets/custom_text_field.dart';
import 'package:notes/helper/constants.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  int selectedColor = secColor2.value; // Default color

  // List of available colors
  final List<Color> colors = [
    primaryColor,
    secColor2,
    secColor1,
    secColor3,
    secColor5,
    secColor6,
    secColor7,
    secColor8
  ];

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        mainAxisSize: MainAxisSize.min, // Adjust height to content
        children: [
          const SizedBox(height: 25),
          CustomTextField(
            hintText: "Title",
            onSaved: (value) {
              title = value;
            },
          ),
          const SizedBox(height: 20),
          CustomTextField(
            hintText: "Content",
            onSaved: (value) {
              subTitle = value;
            },
            maxLines: 5,
          ),
          const SizedBox(height: 20),
          const Text("Choose Note Color"),
          const SizedBox(height: 10),
          Wrap(
            spacing: 8,
            children: colors.asMap().entries.map((entry) {
              int index = entry.key;
              Color color = entry.value;
              return GestureDetector(
                onTap: () {
                  selectedColor = color.value;
                  BlocProvider.of<AddNoteCubit>(context).color = color;
                  setState(() {});
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
          const SizedBox(height: 30),
          BlocBuilder<AddNoteCubit, AddNoteState>(builder: (context, state) {
            return CustomButton(
              isLoading: state is AddNoteLoading,
              text: "Add",
              onPressed: () {
                try {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();

                    var currentDate = DateTime.now();
                    var formattedCurrentDate =
                        DateFormat().add_yMd().format(currentDate);

                    var noteModel = NoteModel(
                      title: title!,
                      subtitle: subTitle!,
                      date: formattedCurrentDate,
                      color: selectedColor, // Use selected color
                    );

                    BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                    //Navigator.of(context).pop();
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                } catch (e) {
                  print("Error adding note: $e");
                  // Optionally show a SnackBar or alert with error message
                }
              },
            );
          }),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
