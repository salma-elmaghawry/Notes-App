import 'package:flutter/material.dart';
import 'package:notes/Presentation/widgets/custom_app_bar.dart';
import 'package:notes/Presentation/widgets/custom_text_field.dart';
import 'package:notes/Presentation/widgets/notes_list_view.dart';

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
          CustomAppBar(title: "Hello,\nMy Notes",imgUrl: "assets/images/notepad.png",),
          SizedBox(height: 10),
          CustomTextField(prefixIcon: Icon(Icons.search, color: Colors.grey),hintText: "Search Here",),
          SizedBox(height: 15),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
