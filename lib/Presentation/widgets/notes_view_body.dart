import 'package:flutter/material.dart';
import 'package:notes/Presentation/widgets/custom_app_bar.dart';
import 'package:notes/Presentation/widgets/custom_text_field.dart';
import 'package:notes/Presentation/widgets/note_item.dart';
import 'package:notes/Presentation/widgets/notes_list_view.dart';
import 'package:notes/helper/constants.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 5, bottom: 10, left: 12, right: 12),
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          CustomAppBar(),
          SizedBox(height: 10),
          CustomTextField(),
          SizedBox(height: 15),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
