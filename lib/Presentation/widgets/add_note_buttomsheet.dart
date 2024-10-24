import 'package:flutter/material.dart';
import 'package:notes/Presentation/widgets/add_note_form.dart';


class AddNoteButtomsheet extends StatelessWidget {
  const AddNoteButtomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.all(10),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}

