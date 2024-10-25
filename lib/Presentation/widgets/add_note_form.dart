import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          CustomTextField(
            hintText: "Title",
            onSaved: (value) {
              title = value;
            },
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextField(
            hintText: "Content",
            onSaved: (value) {
              subTitle = value;
            },
            maxLines: 5,
          ),
          const SizedBox(
            height: 30,
          ),
          BlocBuilder<AddNoteCubit, AddNoteState>(builder: (context, state) {
            return CustomButton(
                isLoading:state is AddNoteLoading ? true : false,
                text: "Add", 
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    var noteModel = NoteModel(
                        title: title!,
                        subtitle: subTitle!,
                        date: DateTime.now().toString(),
                        color: secColor2.value);
                    BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                });
          }),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
