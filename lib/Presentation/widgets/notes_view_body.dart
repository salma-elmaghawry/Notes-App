import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/Business-Logic/cubits/notes-cubit/notes_cubit.dart';
import 'package:notes/Presentation/widgets/custom_app_bar.dart';
import 'package:notes/Presentation/widgets/custom_text_field.dart';
import 'package:notes/Presentation/widgets/notes_list_view.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

@override
class _NotesViewBodyState extends State<NotesViewBody> {
  void initState() {
    BlocProvider.of<NotesCubit>(context).fecthAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.only(top: 5, bottom: 10, left: 12, right: 12),
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          const CustomAppBar(
            title: "Hello,\nMy Notes",
            imgUrl: "assets/images/notepad.png",
          ),
          const SizedBox(height: 10),
          CustomTextField(
            prefixIcon: Icon(Icons.search, color: Colors.grey),
            hintText: "Search Here",
          ),
          const SizedBox(height: 15),
          const Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
